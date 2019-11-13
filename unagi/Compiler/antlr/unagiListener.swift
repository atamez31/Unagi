// Generated from unagi.g4 by ANTLR 4.7.2
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link unagiParser}.
 */
public protocol unagiListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link unagiParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProgram(_ ctx: unagiParser.ProgramContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#program}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProgram(_ ctx: unagiParser.ProgramContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclaration(_ ctx: unagiParser.DeclarationContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#declaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclaration(_ ctx: unagiParser.DeclarationContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#main}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMain(_ ctx: unagiParser.MainContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#main}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMain(_ ctx: unagiParser.MainContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStatement(_ ctx: unagiParser.StatementContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#statement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStatement(_ ctx: unagiParser.StatementContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#loop}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoop(_ ctx: unagiParser.LoopContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#loop}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoop(_ ctx: unagiParser.LoopContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#assigment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssigment(_ ctx: unagiParser.AssigmentContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#assigment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssigment(_ ctx: unagiParser.AssigmentContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#functions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctions(_ ctx: unagiParser.FunctionsContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#functions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctions(_ ctx: unagiParser.FunctionsContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#functype}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctype(_ ctx: unagiParser.FunctypeContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#functype}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctype(_ ctx: unagiParser.FunctypeContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterType(_ ctx: unagiParser.TypeContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#type}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitType(_ ctx: unagiParser.TypeContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterList(_ ctx: unagiParser.ListContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#list}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitList(_ ctx: unagiParser.ListContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#argfunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterArgfunc(_ ctx: unagiParser.ArgfuncContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#argfunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitArgfunc(_ ctx: unagiParser.ArgfuncContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#superexp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSuperexp(_ ctx: unagiParser.SuperexpContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#superexp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSuperexp(_ ctx: unagiParser.SuperexpContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpression(_ ctx: unagiParser.ExpressionContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpression(_ ctx: unagiParser.ExpressionContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExp(_ ctx: unagiParser.ExpContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#exp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExp(_ ctx: unagiParser.ExpContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTerm(_ ctx: unagiParser.TermContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTerm(_ ctx: unagiParser.TermContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFactor(_ ctx: unagiParser.FactorContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#factor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFactor(_ ctx: unagiParser.FactorContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstant(_ ctx: unagiParser.ConstantContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstant(_ ctx: unagiParser.ConstantContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBody(_ ctx: unagiParser.BodyContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBody(_ ctx: unagiParser.BodyContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCondition(_ ctx: unagiParser.ConditionContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#condition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCondition(_ ctx: unagiParser.ConditionContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#printing}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrinting(_ ctx: unagiParser.PrintingContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#printing}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrinting(_ ctx: unagiParser.PrintingContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#listfunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterListfunc(_ ctx: unagiParser.ListfuncContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#listfunc}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitListfunc(_ ctx: unagiParser.ListfuncContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#special}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpecial(_ ctx: unagiParser.SpecialContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#special}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpecial(_ ctx: unagiParser.SpecialContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#root}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoot(_ ctx: unagiParser.RootContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#root}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoot(_ ctx: unagiParser.RootContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#perimeter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPerimeter(_ ctx: unagiParser.PerimeterContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#perimeter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPerimeter(_ ctx: unagiParser.PerimeterContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#drawsquare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDrawsquare(_ ctx: unagiParser.DrawsquareContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#drawsquare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDrawsquare(_ ctx: unagiParser.DrawsquareContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#drawtriangle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDrawtriangle(_ ctx: unagiParser.DrawtriangleContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#drawtriangle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDrawtriangle(_ ctx: unagiParser.DrawtriangleContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#drawrectangle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDrawrectangle(_ ctx: unagiParser.DrawrectangleContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#drawrectangle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDrawrectangle(_ ctx: unagiParser.DrawrectangleContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#drawcircle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDrawcircle(_ ctx: unagiParser.DrawcircleContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#drawcircle}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDrawcircle(_ ctx: unagiParser.DrawcircleContext)
	/**
	 * Enter a parse tree produced by {@link unagiParser#color}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterColor(_ ctx: unagiParser.ColorContext)
	/**
	 * Exit a parse tree produced by {@link unagiParser#color}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitColor(_ ctx: unagiParser.ColorContext)
}