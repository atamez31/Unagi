// Generated from unagi.g4 by ANTLR 4.7.2

import Antlr4


/**
 * This class provides an empty implementation of {@link unagiListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class unagiBaseListener: unagiListener {
  var prints = [String]()
  
  var error = false
  var errorMessage = ""
  var scope = "global"
  var paramCount = 1

  var semanticCube = SemanticCube.init()

  var varTable = VarTable()
  var constTable: [String: Var] = [:]
  var funcSize = 0
  var POper = [String]()
  var PSaltos = [Int]()
  // Pila con direcciones de los operandos en memoria
  var PilaO = [Int]()
  var PTypes = [Type]()
  // Pila para guardar la direccion de memoria de la variable temporal del primer parametro del for loop.
  var PFor = [Int]()

  var quads = [Quadruple]()

  var quadIndex = 0

  var globalMemory = Memory.init(realMemorySpace: 0)
  var localMemory = Memory.init(realMemorySpace: 10000)
  var constantMemory = Memory.init(realMemorySpace: 20000)

  public init() { }
  
  func getListFuncIndex(ctx: unagiParser.ListfuncContext, index: Int) -> Int {
    if ctx.ID(index) != nil {
      if let varName = ctx.ID(index)?.getText() {
        if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: varName) {
          if variable.type != Type.num {
            // TODO throw error index is not a num
            return -1
          }
          return variable.memory_address
        } else if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: varName) {
          if variable.type != Type.num {
            return -1
          }
          return variable.memory_address
        } else {
          return -1
        }
      }
    } else if ctx.CTE_N() != nil {
      let constant = ctx.CTE_N()!.getText()
      if let constVar = constTable[constant] {
        return constVar.memory_address
      } else {
        let address = constantMemory.getNextAddress(type: Type.num)
        let variable = Var.init(name: constant, type: Type.num, memory_address: address)
        constantMemory.writeNum(num: Int(constant)!, address: address)
        constTable[constant] = variable
        return address
      }
    } else if ctx.exp() != nil {
      return PTypes.popLast()! != Type.num ? -1 : PilaO.popLast()!
    } else {
      return -1
    }
    return -1
  }
  
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterProgram(_ ctx: unagiParser.ProgramContext) {
    quads.append(Quadruple.init(op: "GOTO", leftVal: -1, rightVal: -1, result: -1))
    PSaltos.append(quads.count-1)
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitProgram(_ ctx: unagiParser.ProgramContext) {
    if error {
      prints.append(errorMessage)
      print(errorMessage)
      return
    }
    print("size: " + String(varTable.getDictFunc(name: "start")!.getSize()))
    quads.append(Quadruple.init(op: "END", leftVal: -1, rightVal: -1, result: -1))
    var i = 0
    for quad in quads {
      print(i)
      i += 1
      quad.printQuadruple()
    }
    print("---------------VM--------------")
    let virtualMachine = VirtualMachine.init(quadruples: quads, globalMemory: globalMemory, constantMemory: constantMemory, localMemory: localMemory)

    do {
      try virtualMachine.executeVirtualMachine()
    } catch ErrorHandler.semanticError(let message) {
      prints = virtualMachine.prints
      print("Semantic error: \(message)")
    } catch ErrorHandler.lexicError(let message) {
      prints = virtualMachine.prints
      print("Lexical error: \(message)")
    } catch ErrorHandler.memory(let message) {
      prints = virtualMachine.prints
      print("Memory error: \(message)")
    } catch ErrorHandler.indexOutOfBounds(let message) {
      prints = virtualMachine.prints
      print("Index out of bounds error: \(message)")
    } catch {
      prints = virtualMachine.prints
      print("Unexpected error.")
    }

    prints = virtualMachine.prints
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterDeclaration(_ ctx: unagiParser.DeclarationContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitDeclaration(_ ctx: unagiParser.DeclarationContext) {
    if error { return }
    for vars in ctx.ID() {
      // If var is a list.
      if ctx.type()!.getText().contains("<") {
        // Size is last constant found.
        let listSize = Int(ctx.type()!.list()!.CTE_N()!.getText())!
        let listType = Type.init(type: ctx.type()!.list()!.type()!.getText())
        if scope == "global" {
          varTable.getDictFunc(name: scope)?.addVariable(name: vars.getText(), type: listType, address: globalMemory.getNextAddress(type: listType, size: listSize), size: listSize)
          // Reserve space to keep track of amount of elements in list.
          varTable.getDictFunc(name: scope)!.getVariable(name: vars.getText())?.setListPointerAddress(listPointerAddress: globalMemory.getNextAddress(type: Type.num))
        } else {
          varTable.getDictFunc(name: scope)?.addVariable(name: vars.getText(), type: listType, address: localMemory.getNextAddress(type: listType, size: listSize), size: listSize)
          // Reserve space to keep track of amount of elements in list.
          varTable.getDictFunc(name: scope)!.getVariable(name: vars.getText())?.setListPointerAddress(listPointerAddress: localMemory.getNextAddress(type: Type.num))
        }
      } else {
        let varType = Type.init(type: ctx.type()!.getText())
        if scope == "global" {
          varTable.getDictFunc(name: scope)?.addVariable(name: vars.getText(), type: varType, address: globalMemory.getNextAddress(type: varType))
        } else {
          varTable.getDictFunc(name: scope)?.addVariable(name: vars.getText(), type: varType, address: localMemory.getNextAddress(type: varType))
        }
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterMain(_ ctx: unagiParser.MainContext) {
    if error { return }
    let firstQuad = quads[PSaltos.popLast()!]
    firstQuad.updateResult(result: quads.count)
    localMemory.reset()
    let function = Function.init(type: Type.empty, params: [:], id: varTable.dictFunc.count, quadStart: quads.count)
    varTable.addFunc(name: "start", function: function)
    scope = "start"
    funcSize = 0
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitMain(_ ctx: unagiParser.MainContext) {
    if error { return }
    let function = varTable.getDictFunc(name: scope)!
    function.setSize(size: funcSize + function.getVarCount())
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterStatement(_ ctx: unagiParser.StatementContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitStatement(_ ctx: unagiParser.StatementContext) {
    if error { return }
    if ctx.RETURN() != nil {
      quads.append(Quadruple.init(op: "RETURN", leftVal: -1, rightVal: -1, result: PilaO.popLast()!))
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterLoop(_ ctx: unagiParser.LoopContext) {
    if ctx.WHILE() != nil {
      PSaltos.append(quads.count)
    }
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitLoop(_ ctx: unagiParser.LoopContext) {
    if error { return }
      if ctx.FOR() != nil {
        let iterator = PFor.last!
        let constant: Int
        if let constVar = constTable["1"] {
          constant = constVar.memory_address
        } else {
          let address = constantMemory.getNextAddress(type: Type.num)
          let variable = Var.init(name: "1", type: Type.num, memory_address: address)
          constantMemory.writeNum(num: 1, address: address)
          constTable["1"] = variable
          constant = address
        }
        quads.append(Quadruple.init(op: "+", leftVal: iterator, rightVal: constant, result: iterator))
        PFor.removeLast()

      }
      let end = PSaltos.popLast()!
      quads.append(Quadruple.init(op: "GOTO", leftVal: -1, rightVal: -1, result: PSaltos.popLast()!))
      quads[end].updateResult(result: quads.count)
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterAssigment(_ ctx: unagiParser.AssigmentContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitAssigment(_ ctx: unagiParser.AssigmentContext) {
    if error { return }
    let varAddress: Int
    let variableType: Type
    if let varName = ctx.ID()?.getText() {
      let leftVal = PilaO.popLast()
      if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: varName) {
        varAddress = variable.memory_address
        variableType = variable.type
      } else if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: varName) {
        varAddress = variable.memory_address
        variableType = variable.type
      } else {
        error = true
        errorMessage = "Variable not found: \(varName)"
        varAddress = -1
        variableType = Type.none
      }
      let resultType = semanticCube.validateOperation(op: "=", leftOp: variableType, rightOp: PTypes.popLast()!)
      if resultType == Type.none {
        error = true
        errorMessage = "Incompatible types for operator: '='"
      } else {
        quads.append(Quadruple.init(op: "=", leftVal: leftVal!, rightVal: -1, result: varAddress))
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterFunctions(_ ctx: unagiParser.FunctionsContext) {
    if error { return }
    if let functionName = ctx.ID()?.getText() {
      localMemory.reset()
      var argsMap: [String: Var] = [:]
      let argFunc = ctx.argfunc()
      // Count will be used to iterate over the types and ids of each argument.
      if let count = argFunc?.ID().count, count > 0 {
        for i in 0...count-1 {
          let argName = (argFunc?.ID()[i].getText())!
          let variable: Var
          if let list = argFunc!.type()[i].list() {
            let listSize = Int(list.CTE_N()!.getText())!
            let listType = Type.init(type: list.type()!.getText())
            variable = Var.init(name: argName, type: listType, memory_address: localMemory.getNextAddress(type: listType, size: listSize), size: listSize)
            // Reserve space to keep track of amount of elements in list.
            variable.setListPointerAddress(listPointerAddress: localMemory.getNextAddress(type: Type.num))
          } else {
            let argType = Type.init(type: (argFunc?.type()[i].getText())!)
            variable = Var.init(name: argName, type: argType, memory_address: localMemory.getNextAddress(type: argType))
          }
          argsMap[argName] = variable
        }
      }
      let funcReturnType = Type.init(type: (ctx.functype()?.getText())!)
      let function = Function.init(type: funcReturnType, params: argsMap, id: varTable.dictFunc.count, quadStart: quads.count)
      varTable.addFunc(name: functionName, function: function)
      scope = functionName
    }
    funcSize = 0
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitFunctions(_ ctx: unagiParser.FunctionsContext) {
    if error { return }
    let function = varTable.getDictFunc(name: scope)!
    function.setSize(size: funcSize + function.getVarCount())
    quads.append(Quadruple.init(op: "ENDPROC", leftVal: -1, rightVal: -1, result: -1))
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterFunctype(_ ctx: unagiParser.FunctypeContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitFunctype(_ ctx: unagiParser.FunctypeContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterType(_ ctx: unagiParser.TypeContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitType(_ ctx: unagiParser.TypeContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterList(_ ctx: unagiParser.ListContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitList(_ ctx: unagiParser.ListContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterArgfunc(_ ctx: unagiParser.ArgfuncContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitArgfunc(_ ctx: unagiParser.ArgfuncContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterSuperexp(_ ctx: unagiParser.SuperexpContext) {
    if error { return }
    if let parent = ctx.parent as? unagiParser.FactorContext {
        if parent.LEFTP() != nil && parent.ID() == nil {
            POper.append(parent.LEFTP()!.getText())
        } else if parent.LEFTP() != nil && parent.ID() != nil {
          // Start of function argument
          POper.append(parent.LEFTP()!.getText())
      }
    }
//    else if (ctx.parent as? unagiParser.LoopContext) != nil {
//      PSaltos.append(quads.count)
//    }
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitSuperexp(_ ctx: unagiParser.SuperexpContext) {
    if error { return }
    if let parent = ctx.parent as? unagiParser.FactorContext {
      if parent.RIGHTP() != nil && parent.ID() == nil {
        while POper.last != "(" {
          let op = POper.popLast()!
          let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
          if  resultType == Type.none {
            error = true
            errorMessage = "Incorrect operation."
          }
          let opRight = PilaO.popLast()!
          let opLeft = PilaO.popLast()!
          let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
          let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
          funcSize += 1
          quads.append(quad)
          PTypes.append(resultType)
          PilaO.append(tempAddress)
        }
        POper.removeLast()
      } else if parent.ID() != nil && parent.LEFTP() != nil {
        while POper.last != "(" {
          let op = POper.popLast()!
          let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
          if  resultType == Type.none {
            error = true
            errorMessage = "Incorrect operation."
          }
          let opRight = PilaO.popLast()!
          let opLeft = PilaO.popLast()!
          let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
          let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
          funcSize += 1
          quads.append(quad)
          PTypes.append(resultType)
          PilaO.append(tempAddress)
        }
        POper.removeLast()
        // End of a function parameter.
        if let function = varTable.getDictFunc(name: parent.ID()!.getText()) {
          if function.getParams()[paramCount-1].type == PTypes.popLast() {
            if (function.getParams()[paramCount-1].size > 1) {
              if let list = varTable.getDictFunc(name: "global")?.getVariable(name: ctx.getText()) {
                quads.append(Quadruple.init(op: "PARAMLIST", leftVal: PilaO.popLast()!, rightVal: -1, result: list.listPointerAddress))
                quads.append(Quadruple.init(op: "PARAM", leftVal: list.listPointerAddress, rightVal: function.getParams()[paramCount-1].listPointerAddress, result: -1))
              } else if let list = varTable.getDictFunc(name: scope)?.getVariable(name: ctx.getText()) {
                quads.append(Quadruple.init(op: "PARAMLIST", leftVal: PilaO.popLast()!, rightVal: -1, result: list.listPointerAddress))
                quads.append(Quadruple.init(op: "PARAM", leftVal: list.listPointerAddress, rightVal: function.getParams()[paramCount-1].listPointerAddress, result: -1))
              }
            } else {
              quads.append(Quadruple.init(op: "PARAM", leftVal: PilaO.popLast()!, rightVal: -1, result: paramCount))
            }
            paramCount += 1
          } else {
            error = true
            errorMessage = "Incorrect parameter type for function."
          }
        }
      }
    } else if let parent = ctx.parent as? unagiParser.LoopContext {
      if parent.FOR() != nil {
        if (parent.children![2] as! unagiParser.SuperexpContext) == ctx {
          // Create new temporal variable for the for loop iterator.
          let type = PTypes.last!
          if type == Type.num || type == Type.decimal {
            let temp = PilaO.popLast()!
            let tempAddress = localMemory.getNextTemporalAddress(type: type)
            PilaO.append(tempAddress)
            quads.append(Quadruple.init(op: "=", leftVal: temp, rightVal: -1, result: tempAddress))
            funcSize += 1
            PFor.append(tempAddress)
          }
        } else {
          PSaltos.append(quads.count)
          let op = "<"
          let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
          if  resultType == Type.none {
            error = true
            errorMessage = "Incorrect operation."
          }
          let opRight = PilaO.popLast()!
          let opLeft = PilaO.popLast()!
          let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
          let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
          funcSize += 1
          quads.append(quad)

          quads.append(Quadruple.init(op: "GOTOF", leftVal: tempAddress, rightVal: -1, result: -1))
          PSaltos.append(quads.count-1)
        }
      } else {
        if PTypes.last != Type.bool {
          error = true
          errorMessage = "Incorrect operation."
        }
        let result = PilaO.popLast()!
        quads.append(Quadruple.init(op: "GOTOF", leftVal: result, rightVal: -1, result: -1))
        PSaltos.append(quads.count-1)
      }
    } else if ((ctx.parent as? unagiParser.ConditionContext) != nil) {
        if PTypes.last != Type.bool {
          error = true
          errorMessage = "Incorrect operation."
        }
        quads.append(Quadruple.init(op: "GOTOF", leftVal: PilaO.popLast()!, rightVal: -1, result: -1))
        PSaltos.append(quads.count - 1)
    } else if let parent = ctx.parent as? unagiParser.EmptyfunccallContext {
      // End of a empty function parameter.
      if let function = varTable.getDictFunc(name: parent.ID()!.getText()) {
        if function.getParams()[paramCount-1].type == PTypes.popLast() {
          if (function.getParams()[paramCount-1].size > 1) {
            if let list = varTable.getDictFunc(name: "global")?.getVariable(name: ctx.getText()) {
              quads.append(Quadruple.init(op: "PARAMLIST", leftVal: PilaO.popLast()!, rightVal: -1, result: list.listPointerAddress))
              quads.append(Quadruple.init(op: "PARAM", leftVal: list.listPointerAddress, rightVal: function.getParams()[paramCount-1].listPointerAddress, result: -1))
            } else if let list = varTable.getDictFunc(name: scope)?.getVariable(name: ctx.getText()) {
              quads.append(Quadruple.init(op: "PARAMLIST", leftVal: PilaO.popLast()!, rightVal: -1, result: list.listPointerAddress))
              quads.append(Quadruple.init(op: "PARAM", leftVal: list.listPointerAddress, rightVal: function.getParams()[paramCount-1].listPointerAddress, result: -1))
            }
          } else {
            quads.append(Quadruple.init(op: "PARAM", leftVal: PilaO.popLast()!, rightVal: -1, result: paramCount))
          }
          paramCount += 1
        } else {
          error = true
          errorMessage = "Incorrect parameter type for function."
        }
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterExpression(_ ctx: unagiParser.ExpressionContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitExpression(_ ctx: unagiParser.ExpressionContext) {
    if error { return }
    if POper.last == "and" || POper.last == "or" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        // TODO: Throw an error for incorrect operation.
        error = true
        errorMessage = "Incorrect operation."
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      funcSize += 1
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.SuperexpContext {
      if let and = parent.AND()?.getText() {
        POper.append(and)
      } else if let or = parent.OR()?.getText() {
        POper.append(or)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterExp(_ ctx: unagiParser.ExpContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitExp(_ ctx: unagiParser.ExpContext) {
    if error { return }
    if POper.last == ">" || POper.last == ">=" || POper.last == "<" ||
       POper.last == "<=" || POper.last == "==" || POper.last == "<>" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        error = true
        errorMessage = "Incorrect operation."
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      funcSize += 1
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.ExpressionContext {
      if let more = parent.MORETHAN()?.getText() {
        POper.append(more)
      } else if let moreOrEqual = parent.MOREOREQUAL()?.getText() {
        POper.append(moreOrEqual)
      } else if let less = parent.LESS()?.getText() {
        POper.append(less)
      } else if let lessOrEqual = parent.LESSOREQUAL()?.getText() {
        POper.append(lessOrEqual)
      } else if let equal = parent.EQUAL()?.getText() {
        POper.append(equal)
      } else if let notEqual = parent.NOTEQUAL()?.getText() {
        POper.append(notEqual)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterTerm(_ ctx: unagiParser.TermContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitTerm(_ ctx: unagiParser.TermContext) {
    if error { return }
    if POper.last == "+" || POper.last == "-" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        error = true
        errorMessage = "Incorrect operation."
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      funcSize += 1
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.ExpContext {
      if let sum = parent.SUM()?.getText() {
        POper.append(sum)
      } else if let sub = parent.SUB()?.getText() {
        POper.append(sub)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterFactor(_ ctx: unagiParser.FactorContext) {
    if error { return }
    if ctx.ID() != nil && ctx.LEFTP() != nil {
      if let function = varTable.getDictFunc(name: ctx.ID()!.getText()) {
        quads.append(Quadruple.init(op: "ERA", leftVal: -1, rightVal: -1, result: function.getId()))
      } else {
        error = true
        errorMessage = "Incorrect operation."
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitFactor(_ ctx: unagiParser.FactorContext) {
    if error { return }
    if ctx.ID() != nil && ctx.LEFTP() != nil {
      if let function = varTable.getDictFunc(name: ctx.ID()!.getText()) {
        if function.getType() == Type.empty {
          error = true
          errorMessage = "Void does not return."
        }
        // Set global address to store return from every function call.
        let tempGlobalAddress = globalMemory.getNextAddress(type: function.getType())
        // Get next address from global in order to store the result from the return of the func.
        quads.append(Quadruple.init(op: "RETURNF", leftVal: -1, rightVal: -1, result: tempGlobalAddress))

        quads.append(Quadruple.init(op: "GOSUB", leftVal: -1, rightVal: -1, result: function.getQuadStart()))
        // Temporal address to store the return value of function call locally to avoid overwritting global value.
        let tempAddress = localMemory.getNextTemporalAddress(type: function.getType())
        quads.append(Quadruple.init(op: "=", leftVal: tempGlobalAddress, rightVal: -1, result: tempAddress))
        PilaO.append(tempAddress)
        PTypes.append(function.getType())
        paramCount = 1
      } else {
        // TODO: Throw error for function not found
        error = true
        errorMessage = "Function not found."
      }
    } else if ctx.listfunc() == nil {
      // It´s a variable not a function
      if let id = ctx.ID()?.getText() {
        if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: id) {
          PTypes.append(variable.type)
          PilaO.append(variable.memory_address)
        } else if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: id) {
          PTypes.append(variable.type)
          PilaO.append(variable.memory_address)
        } else {
          // TODO check if error when not found.
          error = true
          errorMessage = "Variable not found."
          return
        }
      }
    }

    if POper.last == "*" || POper.last == "/" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        error = true
        errorMessage = "Incorrect operation."
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      funcSize += 1
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.TermContext {
      if let mult = parent.MULT()?.getText() {
        POper.append(mult)
      } else if let div = parent.DIV()?.getText() {
        POper.append(div)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterConstant(_ ctx: unagiParser.ConstantContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitConstant(_ ctx: unagiParser.ConstantContext) {
    if error { return }
    if var constant = ctx.CTE_N()?.getText() {
      if let parent = ctx.parent as? unagiParser.FactorContext {
        // It's a negative
        if parent.SUB() != nil {
          constant = "-" + constant
        }
      }
      if let constVar = constTable[constant] {
        PilaO.append(constVar.memory_address)
        PTypes.append(constVar.type)
      } else {
        let address = constantMemory.getNextAddress(type: Type.num)
        let variable = Var.init(name: constant, type: Type.num, memory_address: address)
        constTable[constant] = variable
        PilaO.append(address)
        PTypes.append(Type.num)
        constantMemory.writeNum(num: Int(constant)!)
      }
    } else if var constant = ctx.CTE_D()?.getText() {
        if let parent = ctx.parent as? unagiParser.FactorContext {
          // It's a negative
          if parent.SUB() != nil {
            constant = "-" + constant
          }
        }
        if let constVar = constTable[constant] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.decimal)
          let variable = Var.init(name: constant, type: Type.decimal, memory_address: address)
          constTable[constant] = variable
          PilaO.append(address)
          PTypes.append(Type.decimal)
          constantMemory.writeDecimal(decimal: Double(constant)!)
        }
    } else if let constant = ctx.CTE_C()?.getText() {
        if let constVar = constTable[constant] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.char)
          let variable = Var.init(name: constant, type: Type.char, memory_address: address)
          constTable[constant] = variable
          PilaO.append(address)
          PTypes.append(Type.char)
          // TODO.
          constantMemory.writeChar(char: constant.dropFirst().first!)
        }
    } else if let constant = ctx.CTE_P()?.getText() {
        if let constVar = constTable[constant] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.phrase)
          let variable = Var.init(name: constant, type: Type.phrase, memory_address: address)
          constTable[constant] = variable
          PilaO.append(address)
          PTypes.append(Type.phrase)
          // TODO.
          constantMemory.writePhrase(phrase: String(constant.dropFirst().dropLast()))
        }
    } else {
      if ctx.getText() == "true" {
        if let constVar = constTable["true"] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.bool)
          let variable = Var.init(name: "true", type: Type.bool, memory_address: address)
          constTable["true"] = variable
          PilaO.append(address)
          PTypes.append(Type.bool)
          constantMemory.writeBool(bool: true)
        }
      } else {
          if let constVar = constTable["false"] {
            PilaO.append(constVar.memory_address)
            PTypes.append(constVar.type)
          } else {
            let address = constantMemory.getNextAddress(type: Type.bool)
            let variable = Var.init(name: "false", type: Type.bool, memory_address: address)
            constTable["false"] = variable
            PilaO.append(address)
            PTypes.append(Type.bool)
            constantMemory.writeBool(bool: false)
          }
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterBody(_ ctx: unagiParser.BodyContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitBody(_ ctx: unagiParser.BodyContext) {
    if error { return }
    if let parent = ctx.parent as? unagiParser.ConditionContext {
      if parent.children?.last as! unagiParser.BodyContext == ctx {
        while !PSaltos.isEmpty && PSaltos.last != -1 {
          let end = PSaltos.popLast()!
          quads[end].updateResult(result: quads.count)
        }
      } else {
        quads.append(Quadruple.init(op: "GOTO", leftVal: -1, rightVal: -1, result: -1))
        let auxSalto = PSaltos.popLast()!
        PSaltos.append(quads.count - 1)
        quads[auxSalto].updateResult(result: quads.count)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterCondition(_ ctx: unagiParser.ConditionContext) {
    if error { return }
    // Agregar fondo de if padre.
    PSaltos.append(-1)
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitCondition(_ ctx: unagiParser.ConditionContext) {
    if error { return }
    PSaltos.removeLast()
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterPrinting(_ ctx: unagiParser.PrintingContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitPrinting(_ ctx: unagiParser.PrintingContext) {
    if error { return }
    quads.append(Quadruple.init(op: "print", leftVal: -1, rightVal: -1, result: PilaO.popLast()!))
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterListfunc(_ ctx: unagiParser.ListfuncContext) {
    POper.append("(")
  }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitListfunc(_ ctx: unagiParser.ListfuncContext) {
    if error { return }
    var variableList: Var = Var.init(name: "", type: Type.none, memory_address: -1)
    var memScope: Memory = Memory.init(realMemorySpace: -1)

    let variable  = ctx.parent is unagiParser.FactorContext ? (ctx.parent as! unagiParser.FactorContext).ID() : (ctx.parent as! unagiParser.EmptyfunccallContext).ID()
    
    if let varName = variable?.getText() {
      if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: varName) {
        variableList = variable
        memScope = globalMemory
      } else if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: varName) {
        variableList = variable
        memScope = localMemory
      } else {
        error = true
        errorMessage = "Function not found."
      }

      if variableList.size < 2 {
        error = true
        errorMessage = "Variable is not a list."
      }
      
      while POper.last != "(" {
        let op = POper.popLast()!
        let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
        if  resultType == Type.none {
          error = true
          errorMessage = "Incorrect operation."
        }
        let opRight = PilaO.popLast()!
        let opLeft = PilaO.popLast()!
        let tempAddress = localMemory.getNextTemporalAddress(type: resultType)
        let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
        funcSize += 1
        quads.append(quad)
        PTypes.append(resultType)
        PilaO.append(tempAddress)
      }
      POper.removeLast()
      
      if ctx.parent is unagiParser.EmptyfunccallContext {
        // Empty functions with emtpyFuncCall as parent.
        if ctx.ADD() != nil {
          quads.append(Quadruple.init(op: "VER", leftVal: variableList.size, rightVal: -1, result: variableList.listPointerAddress))
          // rightVal will contain the address tha stores the amount of elements in the list.
          // VM will add the content of this address to the memory_address to get the index.
          if let id = ctx.ID(0)?.getText() {
            if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: id) {
              quads.append(Quadruple.init(op: "ADD", leftVal: variable.memory_address, rightVal: variableList.listPointerAddress, result: variableList.memory_address))
            } else if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: id) {
              quads.append(Quadruple.init(op: "ADD", leftVal: variable.memory_address, rightVal: variableList.listPointerAddress, result: variableList.memory_address))
            }
          } else {
            quads.append(Quadruple.init(op: "ADD", leftVal: PilaO.popLast()!, rightVal: variableList.listPointerAddress, result: variableList.memory_address))
          }

          var constant = 0
          if let constVar = constTable["1"] {
            constant = constVar.memory_address
          } else {
            let address = constantMemory.getNextAddress(type: Type.num)
            let variable = Var.init(name: "1", type: Type.num, memory_address: address)
            constantMemory.writeNum(num: 1, address: address)
            constTable["1"] = variable
            constant = address
          }
          // Increment amount of elements in list.
          quads.append(Quadruple.init(op: "+", leftVal: variableList.listPointerAddress, rightVal: constant, result: variableList.listPointerAddress))
        } else if ctx.POP() != nil {
          // leftVal will contain the address tha stores the amount of elements in the list.
          // VM will add the content of this address to the memory_address to get the index.
          quads.append(Quadruple.init(op: "POP", leftVal: variableList.listPointerAddress, rightVal: -1, result: variableList.memory_address))

          var constant = 0
          if let constVar = constTable["1"] {
            constant = constVar.memory_address
          } else {
            let address = constantMemory.getNextAddress(type: Type.num)
            let variable = Var.init(name: "1", type: Type.num, memory_address: address)
            constantMemory.writeNum(num: 1, address: address)
            constTable["1"] = variable
            constant = address
          }
          // Reduce amount of elements in list.
          quads.append(Quadruple.init(op: "-", leftVal: variableList.listPointerAddress, rightVal: constant, result: variableList.listPointerAddress))
        } else if ctx.SET() != nil {
          var addedValue = -1
          var typeAddedValue = Type.none
          if let valueToSet = ctx.ID(1)?.getText() {
            if let variable = varTable.getDictFunc(name: "global")?.getVariable(name: valueToSet) {
              addedValue = variable.memory_address
              typeAddedValue = variable.type
            } else if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: valueToSet) {
              addedValue = variable.memory_address
              typeAddedValue = variable.type
            }
          } else {
            addedValue = PilaO.popLast()!
            typeAddedValue = PTypes.popLast()!
          }

          // Check if type of added value is equal to the array.
          if typeAddedValue != variableList.type {
            error = true
            errorMessage = "Error incompatible value of array."
            return
          }
          
          let index = getListFuncIndex(ctx: ctx, index: 0)
          if index == -1 {
            error = true
            errorMessage = "Index of array is not a number."
            return
          }
          let resultAddress = variableList.memory_address
          quads.append(Quadruple.init(op: "SET", leftVal: addedValue, rightVal: index, result: resultAddress))
        } else {
          error = true
          errorMessage = "Function returns a value."
        }
      } else {
        // Return functions with factor as parent.
        if ctx.GET() != nil {
          let index = getListFuncIndex(ctx: ctx, index: 0)
          if index == -1 {
            error = true
            errorMessage = "Index of array is not a number."
            return
          }
          let resultAddress = variableList.memory_address
          let tempVar = localMemory.getNextTemporalAddress(type: variableList.type)
          quads.append(Quadruple.init(op: "GET", leftVal: index, rightVal: resultAddress, result: tempVar))
          PTypes.append(variableList.type)
          PilaO.append(tempVar)
        } else if ctx.FIRST() != nil {
          // Creates copy of first element and returns that value.
          let tempVar = localMemory.getNextTemporalAddress(type: variableList.type)
          quads.append(Quadruple.init(op: "FIRST", leftVal: variableList.memory_address, rightVal: -1, result: tempVar))
          PTypes.append(variableList.type)
          PilaO.append(tempVar)
        } else if ctx.LAST() != nil {
          // Creates copy of last element and returns that value.
          let tempVar = localMemory.getNextTemporalAddress(type: variableList.type)
          quads.append(Quadruple.init(op: "LAST", leftVal: variableList.memory_address, rightVal: variableList.listPointerAddress, result: tempVar))
          PTypes.append(variableList.type)
          PilaO.append(tempVar)
        } else if ctx.COUNT() != nil {
          // Creates copy of first element and returns that value.
          let tempVar = localMemory.getNextTemporalAddress(type: Type.num)
          quads.append(Quadruple.init(op: "COUNT", leftVal: variableList.listPointerAddress, rightVal: -1, result: tempVar))
          PTypes.append(Type.num)
          PilaO.append(tempVar)
        } else {
          error = true
          errorMessage = "Function does not return a value."
        }
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterEmptyfunccall(_ ctx: unagiParser.EmptyfunccallContext) {
    if error { return }
    if let function = varTable.getDictFunc(name: ctx.ID()!.getText()) {
      quads.append(Quadruple.init(op: "ERA", leftVal: -1, rightVal: -1, result: function.getId()))
    } else if ctx.listfunc() == nil {
      error = true
      errorMessage = "Function not found."
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitEmptyfunccall(_ ctx: unagiParser.EmptyfunccallContext) {
    if error { return }
    if let function = varTable.getDictFunc(name: ctx.ID()!.getText()) {
      quads.append(Quadruple.init(op: "GOSUB", leftVal: -1, rightVal: -1, result: function.getQuadStart()))
      paramCount = 1
    } else if ctx.listfunc() == nil {
      error = true
      errorMessage = "Function not found."
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterSpecial(_ ctx: unagiParser.SpecialContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitSpecial(_ ctx: unagiParser.SpecialContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterRoot(_ ctx: unagiParser.RootContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitRoot(_ ctx: unagiParser.RootContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterPerimeter(_ ctx: unagiParser.PerimeterContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitPerimeter(_ ctx: unagiParser.PerimeterContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterDrawsquare(_ ctx: unagiParser.DrawsquareContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitDrawsquare(_ ctx: unagiParser.DrawsquareContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterDrawtriangle(_ ctx: unagiParser.DrawtriangleContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitDrawtriangle(_ ctx: unagiParser.DrawtriangleContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterDrawrectangle(_ ctx: unagiParser.DrawrectangleContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitDrawrectangle(_ ctx: unagiParser.DrawrectangleContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterDrawcircle(_ ctx: unagiParser.DrawcircleContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitDrawcircle(_ ctx: unagiParser.DrawcircleContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterColor(_ ctx: unagiParser.ColorContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitColor(_ ctx: unagiParser.ColorContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterEveryRule(_ ctx: ParserRuleContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitEveryRule(_ ctx: ParserRuleContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func visitTerminal(_ node: TerminalNode) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func visitErrorNode(_ node: ErrorNode) { }
}

