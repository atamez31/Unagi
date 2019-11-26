//
//  VirtualMachine.swift
//  unagi
//
//  Created by Andrés Tamez on 11/19/19.
//  Copyright © 2019 Andrés Tamez. All rights reserved.
//

import Foundation

class VirtualMachine {
//  var listFunc = [Function]()
  var listQuad = [Quadruple]()
  var globalMemory : Memory
  var constantMemory : Memory
  var localMemory : Memory
  var tempMemory: Memory = Memory.init(realMemorySpace: 10000)

  var results = [String]()
  var semanticCube = SemanticCube.init()
  let memoryDistance = 10000
  var subPointerStk = [Int]()
  var returnAddressStk = [Int]()
  var localMemStk = [Memory]()
  let operationsVM = OperationsVM.init()

  init(quadruples : [Quadruple], globalMemory : Memory, constantMemory : Memory, localMemory : Memory) {
    self.listQuad = quadruples
    self.globalMemory = globalMemory
    self.constantMemory = constantMemory
    self.localMemory = localMemory
  }

  func getMemoryScope(address: Int) -> Memory {
    switch address/memoryDistance {
    case 0:
      return self.globalMemory
    case 1:
      return self.localMemory
    default:
      return self.constantMemory
    }
  }

  func sumOperands(leftValue: Any, rightValue: Any, result: Int) {
    let resultMemScope = getMemoryScope(address: result)
    let resultType = resultMemScope.getAddressType(address: result)
  
    if resultType == Type.num {
      let resultFromSum = (leftValue as! Int) + (rightValue as! Int)
      resultMemScope.writeNum(num: resultFromSum, address: result)
    } else if resultType == Type.decimal {
      let resultFromSum: Double
      if let left = leftValue as? Int {
        resultFromSum = Double(left) + (rightValue as! Double)
      } else if let right = rightValue as? Int {
        resultFromSum = (leftValue as! Double) + Double(right)
      } else {
        resultFromSum = (leftValue as! Double) + (rightValue as! Double)
      }
      resultMemScope.writeDecimal(decimal: resultFromSum, address: result)
    } else if resultType == Type.phrase {
      let resultFromSum: String
      if let left = leftValue as? Character, let right = rightValue as? Character {
        resultFromSum = String(left) + String(right)
      } else if let left = leftValue as? Character {
        resultFromSum = String(left) + (rightValue as! String)
      } else if let right = rightValue as? Character {
        resultFromSum = (leftValue as! String) + String(right)
      } else {
        resultFromSum = (leftValue as! String) + (rightValue as! String)
      }
      resultMemScope.writePhrase(phrase: resultFromSum, address: result)
    } else {
      print("ERROR ON SUM OF TYPES")
    }
  }

  func arithmeticOperands(leftValue: Any, rightValue: Any, result: Int, op: String) {
    let resultType = localMemory.getAddressType(address: result)
  
    if resultType == Type.num {
      let resultFromOp = operationsVM.solveArithmeticOpNum(n1: (leftValue as! Int), n2: (rightValue as! Int), sign: operationsVM.opConvertorNum[op]!)
      localMemory.writeNum(num: resultFromOp, address: result)
    } else if resultType == Type.decimal {
      var resultFromOp: Double = 0.0
      if let left = leftValue as? Int {
        resultFromOp = operationsVM.solveArithmeticOpDecimal(n1: Double(left), n2: (rightValue as! Double), sign: operationsVM.opConvertorDecimal[op]!)
      } else if let right = rightValue as? Int {
        resultFromOp = operationsVM.solveArithmeticOpDecimal(n1: (leftValue as! Double), n2: Double(right), sign: operationsVM.opConvertorDecimal[op]!)
      } else {
        resultFromOp = operationsVM.solveArithmeticOpDecimal(n1: (leftValue as! Double), n2: (rightValue as! Double), sign: operationsVM.opConvertorDecimal[op]!)
      }
      localMemory.writeDecimal(decimal: resultFromOp, address: result)
    } else {
      print("ERROR ON arithmetic OF TYPES")
    }
  }

  func relationalOperands(leftValue: Any, rightValue: Any, result: Int, op: String) {
    let resultFromOp: Bool
    if let left = leftValue as? Int {
      if let right = rightValue as? Int {
        resultFromOp = operationsVM.solveRelationalOpNum(n1: left, n2: right, sign: operationsVM.opRelConvertorNum[op]!)
      } else if let right = rightValue as? Double {
        resultFromOp = operationsVM.solveRelationalOpDecimal(n1: Double(left), n2: right, sign: operationsVM.opRelConvertorDecimal[op]!)
      } else {
        // TODO: Throw error
        resultFromOp = false
      }
    } else if let left = leftValue as? Double {
      if let right = rightValue as? Int {
        resultFromOp = operationsVM.solveRelationalOpDecimal(n1: left, n2: Double(right), sign: operationsVM.opRelConvertorDecimal[op]!)
      } else if let right = rightValue as? Double {
        resultFromOp = operationsVM.solveRelationalOpDecimal(n1: left, n2: right, sign: operationsVM.opRelConvertorDecimal[op]!)
      } else {
        // TODO: Throw error
        resultFromOp = false
      }
    } else if let left = leftValue as? Character {
      resultFromOp = operationsVM.solveRelationalOpChar(n1: left, n2: (rightValue as! Character), sign: operationsVM.opRelConvertorChar[op]!)
    } else if let left = leftValue as? String {
      resultFromOp = operationsVM.solveRelationalOpPhrase(n1: left, n2: (rightValue as! String), sign: operationsVM.opRelConvertorPhrase[op]!)
    } else {
      // TODO: Throw error
      resultFromOp = false
    }
    localMemory.writeBool(bool: resultFromOp, address: result)
  }

  func assignValue(tempValue: Any , result: Int) {
    let resultMemScope = getMemoryScope(address: result)    
    let resultType = resultMemScope.getAddressType(address: result)

    switch resultType {
    case Type.num:
      resultMemScope.writeNum(num: tempValue as! Int, address: result)
      break
    case Type.decimal:
      resultMemScope.writeDecimal(decimal: tempValue as! Double, address: result)
      break
    case Type.phrase:
      resultMemScope.writePhrase(phrase: tempValue as! String, address: result)
      break
    case Type.char:
      resultMemScope.writeChar(char: tempValue as! Character, address: result)
      break
    case Type.bool:
      resultMemScope.writeBool(bool: tempValue as! Bool, address: result)
      break
    default:
      // TODO: Error
      break
    }
  }

  func paramDefinition(paramAddress: Int, paramMemScope: Memory, resultType: Type) {
    switch resultType {
    case Type.num:
      tempMemory.writeNum(num: paramMemScope.getValueFromMemory(address: paramAddress) as! Int)
      break
    case Type.decimal:
      tempMemory.writeDecimal(decimal: paramMemScope.getValueFromMemory(address: paramAddress) as! Double)
      break
    case Type.phrase:
      tempMemory.writePhrase(phrase: paramMemScope.getValueFromMemory(address: paramAddress) as! String)
      break
    case Type.char:
      tempMemory.writeChar(char: paramMemScope.getValueFromMemory(address: paramAddress) as! Character)
      break
    case Type.bool:
      tempMemory.writeBool(bool: paramMemScope.getValueFromMemory(address: paramAddress) as! Bool)
      break
    default:
      // TODO error
      break
    }
  }

  func returnValue(tempReturnAddress: Int, paramMemScope: Memory, returnType: Type, resultAddress: Int) {
    switch returnType {
    case Type.num:
      globalMemory.writeNum(num: paramMemScope.getValueFromMemory(address: resultAddress) as! Int, address: tempReturnAddress)
      break
    case Type.decimal:
      globalMemory.writeDecimal(decimal: paramMemScope.getValueFromMemory(address: resultAddress) as! Double, address: tempReturnAddress)
      break
    case Type.phrase:
      globalMemory.writePhrase(phrase: paramMemScope.getValueFromMemory(address: resultAddress) as! String, address: tempReturnAddress)
      break
    case Type.char:
      globalMemory.writeChar(char: paramMemScope.getValueFromMemory(address: resultAddress) as! Character, address: tempReturnAddress)
      break
    case Type.bool:
      globalMemory.writeBool(bool: paramMemScope.getValueFromMemory(address: resultAddress) as! Bool, address: tempReturnAddress)
      break
    default:
      // TODO error
      break
    }
  }

  func addList(element: Any, sizePointer: Int, listAddress: Int) {
    let resultScope = getMemoryScope(address: listAddress)
    let listType = resultScope.getAddressType(address: listAddress)
    switch listType {
    case Type.num:
      resultScope.writeNum(num: element as! Int, address: listAddress + sizePointer)
    case Type.decimal:
    resultScope.writeDecimal(decimal: element as! Double, address: listAddress + sizePointer)
    case Type.char:
    resultScope.writeChar(char: element as! Character, address: listAddress + sizePointer)
    case Type.phrase:
    resultScope.writePhrase(phrase: element as! String, address: listAddress + sizePointer)
    case Type.bool:
    resultScope.writeBool(bool: element as! Bool, address: listAddress + sizePointer)
    default:
      // TODO error
      break
    }
  }

  func writeElementToMemory(element: Any, address: Int, type: Type) {
    switch type {
    case Type.num:
      localMemory.writeNum(num: element as! Int, address: address)
      break
    case Type.decimal:
      localMemory.writeDecimal(decimal: element as! Double, address: address)
      break
    case Type.phrase:
      localMemory.writePhrase(phrase: element as! String, address: address)
      break
    case Type.char:
      localMemory.writeChar(char: element as! Character, address: address)
      break
    case Type.bool:
      localMemory.writeBool(bool: element as! Bool, address: address)
      break
    default:
      // TODO error
      break
    }
  }

  func executeVirtualMachine() throws {
    var quadPointer = 0;
    while quadPointer < self.listQuad.count {
      let currentQuad = self.listQuad[quadPointer]

      let leftOp = currentQuad.leftVal
      let rightOp = currentQuad.rightVal

      let leftOpMemScope = getMemoryScope(address: leftOp)
      let rightOpMemScope = getMemoryScope(address: rightOp)

      switch currentQuad.op {
      case "=":
        guard let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Value to be assigned doesn't exist." + String(quadPointer))
        }
        assignValue(tempValue: leftOpValue, result: currentQuad.result)
        break
      case "+":
        guard let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Left value to be added doesn't exist." + String(quadPointer))
        }
        guard let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "Right value to be added doesn't exist." + String(quadPointer))
        }

        sumOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result)
        break
      case "-", "*", "/":
        guard let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Reft value doesn't exist." + String(quadPointer))
        }
        guard let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "Right value doesn't exist." + String(quadPointer))
        }

        arithmeticOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result, op: currentQuad.op)
        break
      case ">", ">=", "<", "<=", "<>", "==" :
        guard let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Left value doesn't exist." + String(quadPointer))
        }
        guard let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "Right value doesn't exist." + String(quadPointer))
        }

        relationalOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result, op: currentQuad.op)
        break
      case "GOTO":
        quadPointer = currentQuad.result - 1
        break
      case "GOTOF":
        guard let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Left value doesn't exist." + String(quadPointer))
        }
        if !(leftOpValue as! Bool) {
          quadPointer = currentQuad.result - 1
        }
        break
      case "GOSUB":
        subPointerStk.append(quadPointer)
        quadPointer = currentQuad.result - 1
        localMemory = tempMemory
        break
      case "ERA":
        localMemStk.append(localMemory)
        tempMemory = Memory.init(realMemorySpace: 10000)
        break
      case "PARAM":
        let paramAddress = currentQuad.leftVal
        let paramMemScope = getMemoryScope(address: paramAddress)
        let resultType = paramMemScope.getAddressType(address: paramAddress)
        if currentQuad.result == -1 {
          var sizePointer = paramMemScope.getValueFromMemory(address: paramAddress)
          if sizePointer == nil {
            sizePointer = 0
          }
          tempMemory.writeNum(num: sizePointer as! Int, address: currentQuad.rightVal)
        } else {
          paramDefinition(paramAddress: paramAddress, paramMemScope: paramMemScope, resultType: resultType)
        }
        break
      case "PARAMLIST":
        let paramAddress = currentQuad.leftVal
        let paramMemScope = getMemoryScope(address: paramAddress)
        let resultType = paramMemScope.getAddressType(address: paramAddress)
        let resultScope = getMemoryScope(address: currentQuad.result)
        var sizePointer = resultScope.getValueFromMemory(address: currentQuad.result)
        if sizePointer == nil {
          resultScope.writeNum(num: 0, address: currentQuad.result)
          sizePointer = 0
        }
        
        for i in 0...((sizePointer as! Int)-1) {
          paramDefinition(paramAddress: paramAddress + i, paramMemScope: paramMemScope, resultType: resultType)
        }
        break
      case "RETURN":
        let tempReturnAddress = returnAddressStk.popLast()!
        let paramMemScope = getMemoryScope(address: currentQuad.result)
        let returnType = globalMemory.getAddressType(address: tempReturnAddress)
        
        returnValue(tempReturnAddress: tempReturnAddress, paramMemScope: paramMemScope, returnType: returnType, resultAddress: currentQuad.result)

        quadPointer = subPointerStk.popLast()!
        localMemory = localMemStk.popLast()!
        break
      case "RETURNF":
        returnAddressStk.append(currentQuad.result)
        break
      case "ENDPROC":
        quadPointer = subPointerStk.popLast()!
        localMemory = localMemStk.popLast()!
        break
      case "print":
        let resultMemScope = getMemoryScope(address: currentQuad.result)
        guard let resultValue = resultMemScope.getValueFromMemory(address: currentQuad.result) else {
          throw ErrorHandler.semanticError(message: "Value to print doesn't exist." + String(quadPointer))
        }
        print(resultValue)
        break
      case "ADD":
        guard let element = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Element to add doesn't exist." + String(quadPointer))
        }
        guard let sizePointer = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "List is empty." + String(quadPointer))
        }
        addList(element: element, sizePointer: sizePointer as! Int, listAddress: currentQuad.result)
        break
      case "POP":
        guard let sizePointer = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Nothing has been added to the list." + String(quadPointer))
        }
        if (sizePointer as! Int) <= 0 {
          throw ErrorHandler.semanticError(message: "No more elements in list to pop." + String(quadPointer))
        }
        let resultScope = getMemoryScope(address: currentQuad.result)
        resultScope.clearMemorySpace(address: currentQuad.result + (sizePointer as! Int) - 1)
        break
      case "GET":
        guard let index = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Index has not been initialized." + String(quadPointer))
        }
        let resultAddress = rightOp + (index as! Int)
        let resultMemScope = getMemoryScope(address: currentQuad.result)
        let elementType = resultMemScope.getAddressType(address: currentQuad.result)
        guard let result = getMemoryScope(address: resultAddress).getValueFromMemory(address: resultAddress) else {
          throw ErrorHandler.semanticError(message: "Index out of bounds." + String(quadPointer))
        }
        writeElementToMemory(element: result, address: currentQuad.result, type: elementType)
        break
      case "SET":
        guard let element = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Element to add doesn't exist." + String(quadPointer))
        }
        guard let index = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "Index could not be initialized." + String(quadPointer))
        }
        
        let resultAddress = currentQuad.result + (index as! Int)
        if getMemoryScope(address: resultAddress).getValueFromMemory(address: resultAddress) == nil {
          throw ErrorHandler.semanticError(message: "Index out of bounds." + String(quadPointer))
        }

        addList(element: element, sizePointer: 0, listAddress: resultAddress)
        break
      case "FIRST":
        guard let element = leftOpMemScope.getValueFromMemory(address: leftOp) else {
          throw ErrorHandler.semanticError(message: "Error list is empty." + String(quadPointer))
        }
        let elementType = leftOpMemScope.getAddressType(address: leftOp)
        writeElementToMemory(element: element, address: currentQuad.result, type: elementType)
        break
      case "LAST":
        guard let sizePointer = rightOpMemScope.getValueFromMemory(address: rightOp) else {
          throw ErrorHandler.semanticError(message: "Error list is empty." + String(quadPointer))
        }
        guard let element = leftOpMemScope.getValueFromMemory(address: leftOp + (sizePointer as! Int) - 1) else {
          throw ErrorHandler.semanticError(message: "Error list is empty." + String(quadPointer))
        }
        let elementType = leftOpMemScope.getAddressType(address: leftOp)
        writeElementToMemory(element: element, address: currentQuad.result, type: elementType)
        break
      case "COUNT":
        var leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp)
        if leftOpValue == nil {
          leftOpMemScope.writeNum(num: 0, address: leftOp)
          leftOpValue = 0
        }
        assignValue(tempValue: (leftOpValue as! Int), result: currentQuad.result)
        break
      case "VER":
        let resultScope = getMemoryScope(address: currentQuad.result)
        var sizePointer = resultScope.getValueFromMemory(address: currentQuad.result)
        if sizePointer == nil {
          resultScope.writeNum(num: 0, address: currentQuad.result)
          sizePointer = 0
        }
        if (sizePointer as! Int) >= leftOp {
          // TODO Error
          print("Error list is full." + String(quadPointer))
          return
        }
        break
      default:
        break
      }
      quadPointer = quadPointer + 1
    }
  }
}
