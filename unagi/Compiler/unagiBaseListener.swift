// Generated from unagi.g4 by ANTLR 4.7.2

import Antlr4


/**
 * This class provides an empty implementation of {@link unagiListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class unagiBaseListener: unagiListener {
  var scope = "global"

  var semanticCube = SemanticCube.init()

  var varTable = VarTable()
  var constTable: [String: Var] = [:]

  var POper = [String]()
  var PSaltos = [Int]()
  // Pila con direcciones de los operandos en memoria
  var PilaO = [Int]()
  var PTypes = [Type]()

  var quads = [Quadruple]()

  var quadIndex = 0

  var globalMemory = Memory.init(realMemorySpace: 0)
  var localMemory = Memory.init(realMemorySpace: 10000)
  var constantMemory = Memory.init(realMemorySpace: 20000)

  public init() { }
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
    for quad in quads {
      print(quad.op + " " + quad.leftVal + " " + quad.rightVal + " " + quad.result)
    }
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
    for vars in ctx.ID() {
      varTable.getDictFunc(name: scope)?.addVariable(name: vars.getText(), type: Type.init(type: ctx.type()!.getText()))
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterMain(_ ctx: unagiParser.MainContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitMain(_ ctx: unagiParser.MainContext) { }

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
  open func exitStatement(_ ctx: unagiParser.StatementContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterLoop(_ ctx: unagiParser.LoopContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitLoop(_ ctx: unagiParser.LoopContext) { }

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
        varAddress = -1
        variableType = Type.none
      }
      let resultType = semanticCube.validateOperation(op: "=", leftOp: PTypes.popLast()!, rightOp: variableType)
      if resultType == Type.none {
        // TODO: throw an error. Incompatible types for operator.
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
  open func enterFunctions(_ ctx: unagiParser.FunctionsContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitFunctions(_ ctx: unagiParser.FunctionsContext) { }

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
  open func enterSuperexp(_ ctx: unagiParser.SuperexpContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitSuperexp(_ ctx: unagiParser.SuperexpContext) { }

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
    if POper.last == "and" || POper.last == "or" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        // TODO: Throw an error for incorrect operation.
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
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
    if POper.last == ">" || POper.last == ">=" || POper.last == "<" ||
       POper.last == "<=" || POper.last == "==" || POper.last == "<>" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        // TODO: Throw an error for incorrect operation.
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
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
    if POper.last == "+" || POper.last == "-" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        // TODO: Throw an error for incorrect operation.
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.ExpContext {
      if let sum = parent.SUM()?.getText() {
        POper.append(sum)
      }else if let sub = parent.SUB()?.getText() {
        POper.append(sub)
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterFactor(_ ctx: unagiParser.FactorContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitFactor(_ ctx: unagiParser.FactorContext) {
    if let id = ctx.ID()?.getText() {
      if let variable = varTable.getDictFunc(name: scope)?.getVariable(name: id) {
        PTypes.append(variable.type)
        PilaO.append(variable.memory_address)
      }
    }

    if POper.last == "*" || POper.last == "/" {
      let op = POper.popLast()!
      let resultType = semanticCube.validateOperation(op: op, leftOp: PTypes.popLast()!, rightOp: PTypes.popLast()!)
      if  resultType == Type.none {
        // TODO: Throw an error for incorrect operation.
      }
      let opRight = PilaO.popLast()!
      let opLeft = PilaO.popLast()!
      let tempAddress = localMemory.getNextAddress(type: resultType)
      let quad = Quadruple.init(op: op, leftVal: opLeft, rightVal: opRight, result: tempAddress)
      quads.append(quad)
      PTypes.append(resultType)
      PilaO.append(tempAddress)
    }

    if let parent = ctx.parent as? unagiParser.TermContext {
      if let mult = parent.MULT()?.getText() {
        POper.append(mult)
      }else if let div = parent.DIV()?.getText() {
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
    if let constant = ctx.CTE_N()?.getText() {
      if let constVar = constTable[constant] {
        PilaO.append(constVar.memory_address)
        PTypes.append(constVar.type)
      } else {
        let address = constantMemory.getNextAddress(type: Type.num)
        let variable = Var.init(name: constant, type: Type.num, memory_address: address)
        constTable[constant] = variable
        PilaO.append(address)
        PTypes.append(Type.num)
      }
    } else if let constant = ctx.CTE_D()?.getText() {
        if let constVar = constTable[constant] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.decimal)
          let variable = Var.init(name: constant, type: Type.decimal, memory_address: address)
          constTable[constant] = variable
          PilaO.append(address)
          PTypes.append(Type.decimal)
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
        }
    } else {
      if ctx.getText() == "true" {
        if let constVar = constTable["true"] {
          PilaO.append(constVar.memory_address)
          PTypes.append(constVar.type)
        } else {
          let address = constantMemory.getNextAddress(type: Type.num)
          let variable = Var.init(name: "true", type: Type.num, memory_address: address)
          constTable["true"] = variable
          PilaO.append(address)
          PTypes.append(Type.num)
        }
      } else {
          if let constVar = constTable["false"] {
            PilaO.append(constVar.memory_address)
            PTypes.append(constVar.type)
          } else {
            let address = constantMemory.getNextAddress(type: Type.num)
            let variable = Var.init(name: "false", type: Type.num, memory_address: address)
            constTable["false"] = variable
            PilaO.append(address)
            PTypes.append(Type.num)
          }
      }
    }
  }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterCondition(_ ctx: unagiParser.ConditionContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitCondition(_ ctx: unagiParser.ConditionContext) { }

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
  open func exitPrinting(_ ctx: unagiParser.PrintingContext) { }

  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func enterListfunc(_ ctx: unagiParser.ListfuncContext) { }
  /**
   * {@inheritDoc}
   *
   * <p>The default implementation does nothing.</p>
   */
  open func exitListfunc(_ ctx: unagiParser.ListfuncContext) { }

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
