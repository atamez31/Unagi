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
  var results = [String]()
  var semanticCube = SemanticCube.init()
  let memoryDistance = 10000
  
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
    let resultType = localMemory.getAddressType(address: result)
  
    if resultType == Type.num {
      let resultFromSum = (leftValue as! Int) + (rightValue as! Int)
      print(resultFromSum)
      localMemory.writeNum(num: resultFromSum, address: result)
    } else if resultType == Type.decimal {
      let resultFromSum: Double
      if let left = leftValue as? Int {
        resultFromSum = Double(left) + (rightValue as! Double)
      } else if let right = rightValue as? Int {
        resultFromSum = (leftValue as! Double) + Double(right)
      } else {
        resultFromSum = (leftValue as! Double) + (rightValue as! Double)
      }
      localMemory.writeDecimal(decimal: resultFromSum, address: result)
      print(resultFromSum)
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
      localMemory.writePhrase(phrase: resultFromSum, address: result)
    } else {
      print("ERROR ON SUM OF TYPES")
    }
  }

  func arithmeticOperands(leftValue: Any, rightValue: Any, result: Int, op: String) {
    let resultType = localMemory.getAddressType(address: result)
  
    if resultType == Type.num {
      let resultFromOp = operationsVM.solveArithmeticOpNum(n1: (leftValue as! Int), n2: (rightValue as! Int), sign: operationsVM.opConvertorNum[op]!)
      print(resultFromOp)
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
      print(resultFromOp)
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
    print(resultFromOp)
  }

  func executeVirtualMachine() {
    var quadPointer = 0;
  
    while quadPointer < self.listQuad.count {
      let currentQuad = self.listQuad[quadPointer]
      switch currentQuad.op {
      case "+":
        let leftOp = currentQuad.leftVal
        let rightOp = currentQuad.rightVal

        let leftOpMemScope = getMemoryScope(address: leftOp)
        let rightOpMemScope = getMemoryScope(address: rightOp)

        let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp)
        let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp)
        sumOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result)
        break
      case "-", "*", "/":
        let leftOp = currentQuad.leftVal
        let rightOp = currentQuad.rightVal

        let leftOpMemScope = getMemoryScope(address: leftOp)
        let rightOpMemScope = getMemoryScope(address: rightOp)

        let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp)
        let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp)

        arithmeticOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result, op: currentQuad.op)
        break
      case ">", ">=", "<", "<=", "<>", "==" :
        let leftOp = currentQuad.leftVal
        let rightOp = currentQuad.rightVal

        let leftOpMemScope = getMemoryScope(address: leftOp)
        let rightOpMemScope = getMemoryScope(address: rightOp)

        let leftOpValue = leftOpMemScope.getValueFromMemory(address: leftOp)
        let rightOpValue = rightOpMemScope.getValueFromMemory(address: rightOp)

        relationalOperands(leftValue: leftOpValue, rightValue: rightOpValue, result: currentQuad.result, op: currentQuad.op)
        break
      default:
        break
      }
      quadPointer = quadPointer + 1
    }
  }
}
