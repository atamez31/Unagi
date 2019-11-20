// Generated from unagi.g4 by ANTLR 4.7.2
import Antlr4

open class unagiParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = unagiParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(unagiParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 T__12 = 13, T__13 = 14, T__14 = 15, T__15 = 16, T__16 = 17, 
                 T__17 = 18, T__18 = 19, T__19 = 20, T__20 = 21, T__21 = 22, 
                 T__22 = 23, ARROW = 24, ASG = 25, LESS = 26, MORETHAN = 27, 
                 LESSOREQUAL = 28, MOREOREQUAL = 29, EQUAL = 30, NOTEQUAL = 31, 
                 SUM = 32, SUB = 33, MULT = 34, DIV = 35, LEFTP = 36, RIGHTP = 37, 
                 LEFTBRACE = 38, RIGHTBRACE = 39, NUM = 40, DECIMAL = 41, 
                 BOOL = 42, CHAR = 43, PHRASE = 44, IF = 45, ELIF = 46, 
                 ELSE = 47, WHILE = 48, FOR = 49, EMPTY = 50, VAR = 51, 
                 PRINT = 52, RETURN = 53, FUNC = 54, AND = 55, OR = 56, 
                 LIST = 57, WHITESPACE = 58, NEWLINE = 59, ID = 60, CTE_N = 61, 
                 CTE_D = 62, CTE_C = 63, CTE_P = 64
	}

	public
	static let RULE_program = 0, RULE_declaration = 1, RULE_main = 2, RULE_statement = 3, 
            RULE_loop = 4, RULE_assigment = 5, RULE_functions = 6, RULE_functype = 7, 
            RULE_type = 8, RULE_list = 9, RULE_argfunc = 10, RULE_superexp = 11, 
            RULE_expression = 12, RULE_exp = 13, RULE_term = 14, RULE_factor = 15, 
            RULE_constant = 16, RULE_body = 17, RULE_condition = 18, RULE_printing = 19, 
            RULE_listfunc = 20, RULE_emptyfunccall = 21, RULE_special = 22, 
            RULE_root = 23, RULE_perimeter = 24, RULE_drawsquare = 25, RULE_drawtriangle = 26, 
            RULE_drawrectangle = 27, RULE_drawcircle = 28, RULE_color = 29

	public
	static let ruleNames: [String] = [
		"program", "declaration", "main", "statement", "loop", "assigment", "functions", 
		"functype", "type", "list", "argfunc", "superexp", "expression", "exp", 
		"term", "factor", "constant", "body", "condition", "printing", "listfunc", 
		"emptyfunccall", "special", "root", "perimeter", "drawsquare", "drawtriangle", 
		"drawrectangle", "drawcircle", "color"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'program'", "':'", "','", "';'", "'start'", "'.'", "'true'", "'false'", 
		"'get'", "'remove'", "'add'", "'first'", "'last'", "'root'", "'perimeter'", 
		"'drawSquare'", "'drawTriangle'", "'drawRectangle'", "'drawCircle'", "'red'", 
		"'blue'", "'green'", "'yellow'", "'->'", "'='", "'<'", "'>'", "'<='", 
		"'>='", "'=='", "'<>'", "'+'", "'-'", "'*'", "'/'", "'('", "')'", "'{'", 
		"'}'", "'num'", "'decimal'", "'bool'", "'char'", "'phrase'", "'if'", "'elif'", 
		"'else'", "'while'", "'for'", "'empty'", "'var'", "'print'", "'return'", 
		"'func'", "'and'", "'or'", "'list'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "ARROW", "ASG", "LESS", 
		"MORETHAN", "LESSOREQUAL", "MOREOREQUAL", "EQUAL", "NOTEQUAL", "SUM", 
		"SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", "RIGHTBRACE", "NUM", 
		"DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", "ELSE", "WHILE", "FOR", 
		"EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", "OR", "LIST", "WHITESPACE", 
		"NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	override open
	func getGrammarFileName() -> String { return "unagi.g4" }

	override open
	func getRuleNames() -> [String] { return unagiParser.ruleNames }

	override open
	func getSerializedATN() -> String { return unagiParser._serializedATN }

	override open
	func getATN() -> ATN { return unagiParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return unagiParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,unagiParser._ATN,unagiParser._decisionToDFA, unagiParser._sharedContextCache)
	}


	public class ProgramContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func main() -> MainContext? {
				return getRuleContext(MainContext.self, 0)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func functions() -> [FunctionsContext] {
				return getRuleContexts(FunctionsContext.self)
			}
			open
			func functions(_ i: Int) -> FunctionsContext? {
				return getRuleContext(FunctionsContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_program
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterProgram(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitProgram(self)
			}
		}
	}
	@discardableResult
	 open func program() throws -> ProgramContext {
		var _localctx: ProgramContext = ProgramContext(_ctx, getState())
		try enterRule(_localctx, 0, unagiParser.RULE_program)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(60)
		 	try match(unagiParser.Tokens.T__0.rawValue)
		 	setState(61)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(62)
		 	try match(unagiParser.Tokens.T__1.rawValue)
		 	setState(66)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(63)
		 		try declaration()


		 		setState(68)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(72)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.FUNC.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(69)
		 		try functions()


		 		setState(74)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(75)
		 	try main()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DeclarationContext: ParserRuleContext {
			open
			func VAR() -> TerminalNode? {
				return getToken(unagiParser.Tokens.VAR.rawValue, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
			open
			func ID() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.ID.rawValue)
			}
			open
			func ID(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_declaration
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterDeclaration(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitDeclaration(self)
			}
		}
	}
	@discardableResult
	 open func declaration() throws -> DeclarationContext {
		var _localctx: DeclarationContext = DeclarationContext(_ctx, getState())
		try enterRule(_localctx, 2, unagiParser.RULE_declaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(77)
		 	try match(unagiParser.Tokens.VAR.rawValue)
		 	setState(78)
		 	try type()
		 	setState(79)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(84)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(80)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(81)
		 		try match(unagiParser.Tokens.ID.rawValue)


		 		setState(86)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(87)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class MainContext: ParserRuleContext {
			open
			func LEFTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTBRACE.rawValue, 0)
			}
			open
			func RIGHTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTBRACE.rawValue, 0)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_main
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterMain(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitMain(self)
			}
		}
	}
	@discardableResult
	 open func main() throws -> MainContext {
		var _localctx: MainContext = MainContext(_ctx, getState())
		try enterRule(_localctx, 4, unagiParser.RULE_main)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(89)
		 	try match(unagiParser.Tokens.T__4.rawValue)
		 	setState(90)
		 	try match(unagiParser.Tokens.LEFTBRACE.rawValue)
		 	setState(94)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(91)
		 		try declaration()


		 		setState(96)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(100)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__13.rawValue,unagiParser.Tokens.T__14.rawValue,unagiParser.Tokens.T__15.rawValue,unagiParser.Tokens.T__16.rawValue,unagiParser.Tokens.T__17.rawValue,unagiParser.Tokens.T__18.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(97)
		 		try statement()


		 		setState(102)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(103)
		 	try match(unagiParser.Tokens.RIGHTBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class StatementContext: ParserRuleContext {
			open
			func assigment() -> AssigmentContext? {
				return getRuleContext(AssigmentContext.self, 0)
			}
			open
			func condition() -> ConditionContext? {
				return getRuleContext(ConditionContext.self, 0)
			}
			open
			func printing() -> PrintingContext? {
				return getRuleContext(PrintingContext.self, 0)
			}
			open
			func special() -> SpecialContext? {
				return getRuleContext(SpecialContext.self, 0)
			}
			open
			func emptyfunccall() -> EmptyfunccallContext? {
				return getRuleContext(EmptyfunccallContext.self, 0)
			}
			open
			func loop() -> LoopContext? {
				return getRuleContext(LoopContext.self, 0)
			}
			open
			func RETURN() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RETURN.rawValue, 0)
			}
			open
			func superexp() -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_statement
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterStatement(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitStatement(self)
			}
		}
	}
	@discardableResult
	 open func statement() throws -> StatementContext {
		var _localctx: StatementContext = StatementContext(_ctx, getState())
		try enterRule(_localctx, 6, unagiParser.RULE_statement)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(115)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,5, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(105)
		 		try assigment()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(106)
		 		try condition()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(107)
		 		try printing()

		 		break
		 	case 4:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(108)
		 		try special()

		 		break
		 	case 5:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(109)
		 		try emptyfunccall()

		 		break
		 	case 6:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(110)
		 		try loop()

		 		break
		 	case 7:
		 		try enterOuterAlt(_localctx, 7)
		 		setState(111)
		 		try match(unagiParser.Tokens.RETURN.rawValue)
		 		setState(112)
		 		try superexp()
		 		setState(113)
		 		try match(unagiParser.Tokens.T__3.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class LoopContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.WHILE.rawValue, 0)
			}
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func body() -> BodyContext? {
				return getRuleContext(BodyContext.self, 0)
			}
			open
			func FOR() -> TerminalNode? {
				return getToken(unagiParser.Tokens.FOR.rawValue, 0)
			}
			open
			func ARROW() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ARROW.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_loop
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterLoop(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitLoop(self)
			}
		}
	}
	@discardableResult
	 open func loop() throws -> LoopContext {
		var _localctx: LoopContext = LoopContext(_ctx, getState())
		try enterRule(_localctx, 8, unagiParser.RULE_loop)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(131)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .WHILE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(117)
		 		try match(unagiParser.Tokens.WHILE.rawValue)
		 		setState(118)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(119)
		 		try superexp()
		 		setState(120)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)
		 		setState(121)
		 		try body()

		 		break

		 	case .FOR:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(123)
		 		try match(unagiParser.Tokens.FOR.rawValue)
		 		setState(124)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(125)
		 		try superexp()
		 		setState(126)
		 		try match(unagiParser.Tokens.ARROW.rawValue)
		 		setState(127)
		 		try superexp()
		 		setState(128)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)
		 		setState(129)
		 		try body()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AssigmentContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func ASG() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ASG.rawValue, 0)
			}
			open
			func superexp() -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_assigment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterAssigment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitAssigment(self)
			}
		}
	}
	@discardableResult
	 open func assigment() throws -> AssigmentContext {
		var _localctx: AssigmentContext = AssigmentContext(_ctx, getState())
		try enterRule(_localctx, 10, unagiParser.RULE_assigment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(133)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(134)
		 	try match(unagiParser.Tokens.ASG.rawValue)
		 	setState(135)
		 	try superexp()
		 	setState(136)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctionsContext: ParserRuleContext {
			open
			func FUNC() -> TerminalNode? {
				return getToken(unagiParser.Tokens.FUNC.rawValue, 0)
			}
			open
			func functype() -> FunctypeContext? {
				return getRuleContext(FunctypeContext.self, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func argfunc() -> ArgfuncContext? {
				return getRuleContext(ArgfuncContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func LEFTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTBRACE.rawValue, 0)
			}
			open
			func RIGHTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTBRACE.rawValue, 0)
			}
			open
			func declaration() -> [DeclarationContext] {
				return getRuleContexts(DeclarationContext.self)
			}
			open
			func declaration(_ i: Int) -> DeclarationContext? {
				return getRuleContext(DeclarationContext.self, i)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_functions
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterFunctions(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitFunctions(self)
			}
		}
	}
	@discardableResult
	 open func functions() throws -> FunctionsContext {
		var _localctx: FunctionsContext = FunctionsContext(_ctx, getState())
		try enterRule(_localctx, 12, unagiParser.RULE_functions)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(138)
		 	try match(unagiParser.Tokens.FUNC.rawValue)
		 	setState(139)
		 	try functype()
		 	setState(140)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(141)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(142)
		 	try argfunc()
		 	setState(143)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(144)
		 	try match(unagiParser.Tokens.LEFTBRACE.rawValue)
		 	setState(148)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(145)
		 		try declaration()


		 		setState(150)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(154)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__13.rawValue,unagiParser.Tokens.T__14.rawValue,unagiParser.Tokens.T__15.rawValue,unagiParser.Tokens.T__16.rawValue,unagiParser.Tokens.T__17.rawValue,unagiParser.Tokens.T__18.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(151)
		 		try statement()


		 		setState(156)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(157)
		 	try match(unagiParser.Tokens.RIGHTBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FunctypeContext: ParserRuleContext {
			open
			func EMPTY() -> TerminalNode? {
				return getToken(unagiParser.Tokens.EMPTY.rawValue, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_functype
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterFunctype(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitFunctype(self)
			}
		}
	}
	@discardableResult
	 open func functype() throws -> FunctypeContext {
		var _localctx: FunctypeContext = FunctypeContext(_ctx, getState())
		try enterRule(_localctx, 14, unagiParser.RULE_functype)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(161)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .EMPTY:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(159)
		 		try match(unagiParser.Tokens.EMPTY.rawValue)

		 		break
		 	case .NUM:fallthrough
		 	case .DECIMAL:fallthrough
		 	case .BOOL:fallthrough
		 	case .CHAR:fallthrough
		 	case .PHRASE:fallthrough
		 	case .LIST:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(160)
		 		try type()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeContext: ParserRuleContext {
			open
			func NUM() -> TerminalNode? {
				return getToken(unagiParser.Tokens.NUM.rawValue, 0)
			}
			open
			func DECIMAL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.DECIMAL.rawValue, 0)
			}
			open
			func BOOL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.BOOL.rawValue, 0)
			}
			open
			func CHAR() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CHAR.rawValue, 0)
			}
			open
			func PHRASE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.PHRASE.rawValue, 0)
			}
			open
			func LIST() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LIST.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_type
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitType(self)
			}
		}
	}
	@discardableResult
	 open func type() throws -> TypeContext {
		var _localctx: TypeContext = TypeContext(_ctx, getState())
		try enterRule(_localctx, 16, unagiParser.RULE_type)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(163)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.NUM.rawValue,unagiParser.Tokens.DECIMAL.rawValue,unagiParser.Tokens.BOOL.rawValue,unagiParser.Tokens.CHAR.rawValue,unagiParser.Tokens.PHRASE.rawValue,unagiParser.Tokens.LIST.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ListContext: ParserRuleContext {
			open
			func LIST() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LIST.rawValue, 0)
			}
			open
			func LESS() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LESS.rawValue, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
			open
			func MORETHAN() -> TerminalNode? {
				return getToken(unagiParser.Tokens.MORETHAN.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_list
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterList(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitList(self)
			}
		}
	}
	@discardableResult
	 open func list() throws -> ListContext {
		var _localctx: ListContext = ListContext(_ctx, getState())
		try enterRule(_localctx, 18, unagiParser.RULE_list)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(165)
		 	try match(unagiParser.Tokens.LIST.rawValue)
		 	setState(166)
		 	try match(unagiParser.Tokens.LESS.rawValue)
		 	setState(167)
		 	try type()
		 	setState(168)
		 	try match(unagiParser.Tokens.MORETHAN.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgfuncContext: ParserRuleContext {
			open
			func type() -> [TypeContext] {
				return getRuleContexts(TypeContext.self)
			}
			open
			func type(_ i: Int) -> TypeContext? {
				return getRuleContext(TypeContext.self, i)
			}
			open
			func ID() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.ID.rawValue)
			}
			open
			func ID(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_argfunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterArgfunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitArgfunc(self)
			}
		}
	}
	@discardableResult
	 open func argfunc() throws -> ArgfuncContext {
		var _localctx: ArgfuncContext = ArgfuncContext(_ctx, getState())
		try enterRule(_localctx, 20, unagiParser.RULE_argfunc)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(182)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.NUM.rawValue,unagiParser.Tokens.DECIMAL.rawValue,unagiParser.Tokens.BOOL.rawValue,unagiParser.Tokens.CHAR.rawValue,unagiParser.Tokens.PHRASE.rawValue,unagiParser.Tokens.LIST.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(170)
		 		try type()
		 		setState(171)
		 		try match(unagiParser.Tokens.ID.rawValue)

		 		setState(179)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(173)
		 			try match(unagiParser.Tokens.T__2.rawValue)
		 			setState(174)
		 			try type()
		 			setState(175)
		 			try match(unagiParser.Tokens.ID.rawValue)


		 			setState(181)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SuperexpContext: ParserRuleContext {
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func superexp() -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, 0)
			}
			open
			func AND() -> TerminalNode? {
				return getToken(unagiParser.Tokens.AND.rawValue, 0)
			}
			open
			func OR() -> TerminalNode? {
				return getToken(unagiParser.Tokens.OR.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_superexp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterSuperexp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitSuperexp(self)
			}
		}
	}
	@discardableResult
	 open func superexp() throws -> SuperexpContext {
		var _localctx: SuperexpContext = SuperexpContext(_ctx, getState())
		try enterRule(_localctx, 22, unagiParser.RULE_superexp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(184)
		 	try expression()
		 	setState(187)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.AND.rawValue || _la == unagiParser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(185)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.AND.rawValue || _la == unagiParser.Tokens.OR.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(186)
		 		try superexp()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpressionContext: ParserRuleContext {
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func expression() -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, 0)
			}
			open
			func MORETHAN() -> TerminalNode? {
				return getToken(unagiParser.Tokens.MORETHAN.rawValue, 0)
			}
			open
			func LESS() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LESS.rawValue, 0)
			}
			open
			func MOREOREQUAL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.MOREOREQUAL.rawValue, 0)
			}
			open
			func LESSOREQUAL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LESSOREQUAL.rawValue, 0)
			}
			open
			func NOTEQUAL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.NOTEQUAL.rawValue, 0)
			}
			open
			func EQUAL() -> TerminalNode? {
				return getToken(unagiParser.Tokens.EQUAL.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_expression
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterExpression(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitExpression(self)
			}
		}
	}
	@discardableResult
	 open func expression() throws -> ExpressionContext {
		var _localctx: ExpressionContext = ExpressionContext(_ctx, getState())
		try enterRule(_localctx, 24, unagiParser.RULE_expression)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(189)
		 	try exp()
		 	setState(192)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.LESS.rawValue,unagiParser.Tokens.MORETHAN.rawValue,unagiParser.Tokens.LESSOREQUAL.rawValue,unagiParser.Tokens.MOREOREQUAL.rawValue,unagiParser.Tokens.EQUAL.rawValue,unagiParser.Tokens.NOTEQUAL.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(190)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.LESS.rawValue,unagiParser.Tokens.MORETHAN.rawValue,unagiParser.Tokens.LESSOREQUAL.rawValue,unagiParser.Tokens.MOREOREQUAL.rawValue,unagiParser.Tokens.EQUAL.rawValue,unagiParser.Tokens.NOTEQUAL.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(191)
		 		try expression()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ExpContext: ParserRuleContext {
			open
			func term() -> TermContext? {
				return getRuleContext(TermContext.self, 0)
			}
			open
			func exp() -> ExpContext? {
				return getRuleContext(ExpContext.self, 0)
			}
			open
			func SUM() -> TerminalNode? {
				return getToken(unagiParser.Tokens.SUM.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(unagiParser.Tokens.SUB.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_exp
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterExp(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitExp(self)
			}
		}
	}
	@discardableResult
	 open func exp() throws -> ExpContext {
		var _localctx: ExpContext = ExpContext(_ctx, getState())
		try enterRule(_localctx, 26, unagiParser.RULE_exp)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(194)
		 	try term()
		 	setState(197)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.SUM.rawValue || _la == unagiParser.Tokens.SUB.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(195)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.SUM.rawValue || _la == unagiParser.Tokens.SUB.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(196)
		 		try exp()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TermContext: ParserRuleContext {
			open
			func factor() -> FactorContext? {
				return getRuleContext(FactorContext.self, 0)
			}
			open
			func term() -> TermContext? {
				return getRuleContext(TermContext.self, 0)
			}
			open
			func MULT() -> TerminalNode? {
				return getToken(unagiParser.Tokens.MULT.rawValue, 0)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(unagiParser.Tokens.DIV.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_term
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterTerm(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitTerm(self)
			}
		}
	}
	@discardableResult
	 open func term() throws -> TermContext {
		var _localctx: TermContext = TermContext(_ctx, getState())
		try enterRule(_localctx, 28, unagiParser.RULE_term)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(199)
		 	try factor()
		 	setState(202)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.MULT.rawValue || _la == unagiParser.Tokens.DIV.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(200)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.MULT.rawValue || _la == unagiParser.Tokens.DIV.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(201)
		 		try term()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FactorContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
			}
			open
			func SUM() -> TerminalNode? {
				return getToken(unagiParser.Tokens.SUM.rawValue, 0)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(unagiParser.Tokens.SUB.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func listfunc() -> ListfuncContext? {
				return getRuleContext(ListfuncContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_factor
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterFactor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitFactor(self)
			}
		}
	}
	@discardableResult
	 open func factor() throws -> FactorContext {
		var _localctx: FactorContext = FactorContext(_ctx, getState())
		try enterRule(_localctx, 30, unagiParser.RULE_factor)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(229)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .LEFTP:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(204)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(205)
		 		try superexp()
		 		setState(206)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)

		 		break
		 	case .T__6:fallthrough
		 	case .T__7:fallthrough
		 	case .SUM:fallthrough
		 	case .SUB:fallthrough
		 	case .CTE_N:fallthrough
		 	case .CTE_D:fallthrough
		 	case .CTE_C:fallthrough
		 	case .CTE_P:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(209)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.SUM.rawValue || _la == unagiParser.Tokens.SUB.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(208)
		 			_la = try _input.LA(1)
		 			if (!(//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == unagiParser.Tokens.SUM.rawValue || _la == unagiParser.Tokens.SUB.rawValue
		 			      return testSet
		 			 }())) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}

		 		}

		 		setState(211)
		 		try constant()

		 		break

		 	case .ID:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(212)
		 		try match(unagiParser.Tokens.ID.rawValue)
		 		setState(227)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,19,_ctx)) {
		 		case 1:
		 			setState(213)
		 			try match(unagiParser.Tokens.LEFTP.rawValue)
		 			setState(222)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			if (//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, unagiParser.Tokens.T__6.rawValue,unagiParser.Tokens.T__7.rawValue,unagiParser.Tokens.SUM.rawValue,unagiParser.Tokens.SUB.rawValue,unagiParser.Tokens.LEFTP.rawValue,unagiParser.Tokens.ID.rawValue,unagiParser.Tokens.CTE_N.rawValue,unagiParser.Tokens.CTE_D.rawValue,unagiParser.Tokens.CTE_C.rawValue,unagiParser.Tokens.CTE_P.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 7)
		 			}()
		 			      return testSet
		 			 }()) {
		 				setState(214)
		 				try superexp()
		 				setState(219)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 				while (//closure
		 				 { () -> Bool in
		 				      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 				      return testSet
		 				 }()) {
		 					setState(215)
		 					try match(unagiParser.Tokens.T__2.rawValue)
		 					setState(216)
		 					try superexp()


		 					setState(221)
		 					try _errHandler.sync(self)
		 					_la = try _input.LA(1)
		 				}

		 			}

		 			setState(224)
		 			try match(unagiParser.Tokens.RIGHTP.rawValue)

		 			break
		 		case 2:
		 			setState(225)
		 			try match(unagiParser.Tokens.T__5.rawValue)
		 			setState(226)
		 			try listfunc()

		 			break
		 		default: break
		 		}

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConstantContext: ParserRuleContext {
			open
			func CTE_N() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_N.rawValue, 0)
			}
			open
			func CTE_D() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_D.rawValue, 0)
			}
			open
			func CTE_C() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_C.rawValue, 0)
			}
			open
			func CTE_P() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_P.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_constant
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterConstant(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitConstant(self)
			}
		}
	}
	@discardableResult
	 open func constant() throws -> ConstantContext {
		var _localctx: ConstantContext = ConstantContext(_ctx, getState())
		try enterRule(_localctx, 32, unagiParser.RULE_constant)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(231)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__6.rawValue,unagiParser.Tokens.T__7.rawValue,unagiParser.Tokens.CTE_N.rawValue,unagiParser.Tokens.CTE_D.rawValue,unagiParser.Tokens.CTE_C.rawValue,unagiParser.Tokens.CTE_P.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 7)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class BodyContext: ParserRuleContext {
			open
			func LEFTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTBRACE.rawValue, 0)
			}
			open
			func RIGHTBRACE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTBRACE.rawValue, 0)
			}
			open
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_body
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterBody(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitBody(self)
			}
		}
	}
	@discardableResult
	 open func body() throws -> BodyContext {
		var _localctx: BodyContext = BodyContext(_ctx, getState())
		try enterRule(_localctx, 34, unagiParser.RULE_body)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(233)
		 	try match(unagiParser.Tokens.LEFTBRACE.rawValue)
		 	setState(237)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__13.rawValue,unagiParser.Tokens.T__14.rawValue,unagiParser.Tokens.T__15.rawValue,unagiParser.Tokens.T__16.rawValue,unagiParser.Tokens.T__17.rawValue,unagiParser.Tokens.T__18.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(234)
		 		try statement()


		 		setState(239)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(240)
		 	try match(unagiParser.Tokens.RIGHTBRACE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ConditionContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(unagiParser.Tokens.IF.rawValue, 0)
			}
			open
			func LEFTP() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.LEFTP.rawValue)
			}
			open
			func LEFTP(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, i)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func RIGHTP() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.RIGHTP.rawValue)
			}
			open
			func RIGHTP(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, i)
			}
			open
			func body() -> [BodyContext] {
				return getRuleContexts(BodyContext.self)
			}
			open
			func body(_ i: Int) -> BodyContext? {
				return getRuleContext(BodyContext.self, i)
			}
			open
			func ELIF() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.ELIF.rawValue)
			}
			open
			func ELIF(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.ELIF.rawValue, i)
			}
			open
			func ELSE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ELSE.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_condition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterCondition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitCondition(self)
			}
		}
	}
	@discardableResult
	 open func condition() throws -> ConditionContext {
		var _localctx: ConditionContext = ConditionContext(_ctx, getState())
		try enterRule(_localctx, 36, unagiParser.RULE_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(242)
		 	try match(unagiParser.Tokens.IF.rawValue)
		 	setState(243)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(244)
		 	try superexp()
		 	setState(245)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(246)
		 	try body()
		 	setState(255)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.ELIF.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(247)
		 		try match(unagiParser.Tokens.ELIF.rawValue)
		 		setState(248)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(249)
		 		try superexp()
		 		setState(250)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)
		 		setState(251)
		 		try body()


		 		setState(257)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(260)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(258)
		 		try match(unagiParser.Tokens.ELSE.rawValue)
		 		setState(259)
		 		try body()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PrintingContext: ParserRuleContext {
			open
			func PRINT() -> TerminalNode? {
				return getToken(unagiParser.Tokens.PRINT.rawValue, 0)
			}
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func CTE_P() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.CTE_P.rawValue)
			}
			open
			func CTE_P(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_P.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_printing
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterPrinting(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitPrinting(self)
			}
		}
	}
	@discardableResult
	 open func printing() throws -> PrintingContext {
		var _localctx: PrintingContext = PrintingContext(_ctx, getState())
		try enterRule(_localctx, 38, unagiParser.RULE_printing)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(262)
		 	try match(unagiParser.Tokens.PRINT.rawValue)
		 	setState(263)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(266)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,24, _ctx)) {
		 	case 1:
		 		setState(264)
		 		try superexp()

		 		break
		 	case 2:
		 		setState(265)
		 		try match(unagiParser.Tokens.CTE_P.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(275)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(268)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(271)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,25, _ctx)) {
		 		case 1:
		 			setState(269)
		 			try superexp()

		 			break
		 		case 2:
		 			setState(270)
		 			try match(unagiParser.Tokens.CTE_P.rawValue)

		 			break
		 		default: break
		 		}


		 		setState(277)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(278)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(279)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ListfuncContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func CTE_N() -> TerminalNode? {
				return getToken(unagiParser.Tokens.CTE_N.rawValue, 0)
			}
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func factor() -> FactorContext? {
				return getRuleContext(FactorContext.self, 0)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_listfunc
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterListfunc(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitListfunc(self)
			}
		}
	}
	@discardableResult
	 open func listfunc() throws -> ListfuncContext {
		var _localctx: ListfuncContext = ListfuncContext(_ctx, getState())
		try enterRule(_localctx, 40, unagiParser.RULE_listfunc)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(300)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__8:fallthrough
		 	case .T__9:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(281)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__8.rawValue || _la == unagiParser.Tokens.T__9.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(282)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(286)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 		case 1:
		 			setState(283)
		 			try match(unagiParser.Tokens.CTE_N.rawValue)

		 			break
		 		case 2:
		 			setState(284)
		 			try match(unagiParser.Tokens.ID.rawValue)

		 			break
		 		case 3:
		 			setState(285)
		 			try factor()

		 			break
		 		default: break
		 		}
		 		setState(288)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)

		 		break

		 	case .T__10:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(289)
		 		try match(unagiParser.Tokens.T__10.rawValue)
		 		setState(290)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(294)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,28, _ctx)) {
		 		case 1:
		 			setState(291)
		 			try constant()

		 			break
		 		case 2:
		 			setState(292)
		 			try match(unagiParser.Tokens.ID.rawValue)

		 			break
		 		case 3:
		 			setState(293)
		 			try factor()

		 			break
		 		default: break
		 		}
		 		setState(296)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)

		 		break
		 	case .T__11:fallthrough
		 	case .T__12:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(297)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__11.rawValue || _la == unagiParser.Tokens.T__12.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(298)
		 		try match(unagiParser.Tokens.LEFTP.rawValue)
		 		setState(299)
		 		try match(unagiParser.Tokens.RIGHTP.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class EmptyfunccallContext: ParserRuleContext {
			open
			func ID() -> TerminalNode? {
				return getToken(unagiParser.Tokens.ID.rawValue, 0)
			}
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_emptyfunccall
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterEmptyfunccall(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitEmptyfunccall(self)
			}
		}
	}
	@discardableResult
	 open func emptyfunccall() throws -> EmptyfunccallContext {
		var _localctx: EmptyfunccallContext = EmptyfunccallContext(_ctx, getState())
		try enterRule(_localctx, 42, unagiParser.RULE_emptyfunccall)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(302)
		 	try match(unagiParser.Tokens.ID.rawValue)

		 	setState(303)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(312)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__6.rawValue,unagiParser.Tokens.T__7.rawValue,unagiParser.Tokens.SUM.rawValue,unagiParser.Tokens.SUB.rawValue,unagiParser.Tokens.LEFTP.rawValue,unagiParser.Tokens.ID.rawValue,unagiParser.Tokens.CTE_N.rawValue,unagiParser.Tokens.CTE_D.rawValue,unagiParser.Tokens.CTE_C.rawValue,unagiParser.Tokens.CTE_P.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 7)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(304)
		 		try superexp()
		 		setState(309)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(305)
		 			try match(unagiParser.Tokens.T__2.rawValue)
		 			setState(306)
		 			try superexp()


		 			setState(311)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}

		 	}

		 	setState(314)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)

		 	setState(316)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SpecialContext: ParserRuleContext {
			open
			func drawsquare() -> DrawsquareContext? {
				return getRuleContext(DrawsquareContext.self, 0)
			}
			open
			func drawtriangle() -> DrawtriangleContext? {
				return getRuleContext(DrawtriangleContext.self, 0)
			}
			open
			func drawrectangle() -> DrawrectangleContext? {
				return getRuleContext(DrawrectangleContext.self, 0)
			}
			open
			func drawcircle() -> DrawcircleContext? {
				return getRuleContext(DrawcircleContext.self, 0)
			}
			open
			func root() -> RootContext? {
				return getRuleContext(RootContext.self, 0)
			}
			open
			func perimeter() -> PerimeterContext? {
				return getRuleContext(PerimeterContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_special
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterSpecial(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitSpecial(self)
			}
		}
	}
	@discardableResult
	 open func special() throws -> SpecialContext {
		var _localctx: SpecialContext = SpecialContext(_ctx, getState())
		try enterRule(_localctx, 44, unagiParser.RULE_special)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(324)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__15:
		 		setState(318)
		 		try drawsquare()

		 		break

		 	case .T__16:
		 		setState(319)
		 		try drawtriangle()

		 		break

		 	case .T__17:
		 		setState(320)
		 		try drawrectangle()

		 		break

		 	case .T__18:
		 		setState(321)
		 		try drawcircle()

		 		break

		 	case .T__13:
		 		setState(322)
		 		try root()

		 		break

		 	case .T__14:
		 		setState(323)
		 		try perimeter()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class RootContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_root
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterRoot(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitRoot(self)
			}
		}
	}
	@discardableResult
	 open func root() throws -> RootContext {
		var _localctx: RootContext = RootContext(_ctx, getState())
		try enterRule(_localctx, 46, unagiParser.RULE_root)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(326)
		 	try match(unagiParser.Tokens.T__13.rawValue)
		 	setState(327)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(328)
		 	try superexp()
		 	setState(329)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(330)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class PerimeterContext: ParserRuleContext {
			open
			func LEFTP() -> [TerminalNode] {
				return getTokens(unagiParser.Tokens.LEFTP.rawValue)
			}
			open
			func LEFTP(_ i:Int) -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, i)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_perimeter
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterPerimeter(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitPerimeter(self)
			}
		}
	}
	@discardableResult
	 open func perimeter() throws -> PerimeterContext {
		var _localctx: PerimeterContext = PerimeterContext(_ctx, getState())
		try enterRule(_localctx, 48, unagiParser.RULE_perimeter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(332)
		 	try match(unagiParser.Tokens.T__14.rawValue)
		 	setState(333)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(334)
		 	try superexp()
		 	setState(335)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(336)
		 	try superexp()
		 	setState(337)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(338)
		 	try superexp()
		 	setState(341)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(339)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(340)
		 		try superexp()

		 	}

		 	setState(343)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(344)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DrawsquareContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func color() -> ColorContext? {
				return getRuleContext(ColorContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_drawsquare
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterDrawsquare(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitDrawsquare(self)
			}
		}
	}
	@discardableResult
	 open func drawsquare() throws -> DrawsquareContext {
		var _localctx: DrawsquareContext = DrawsquareContext(_ctx, getState())
		try enterRule(_localctx, 50, unagiParser.RULE_drawsquare)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(346)
		 	try match(unagiParser.Tokens.T__15.rawValue)
		 	setState(347)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(348)
		 	try superexp()
		 	setState(349)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(350)
		 	try superexp()
		 	setState(351)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(352)
		 	try superexp()
		 	setState(353)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(354)
		 	try color()
		 	setState(355)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(356)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DrawtriangleContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func color() -> ColorContext? {
				return getRuleContext(ColorContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_drawtriangle
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterDrawtriangle(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitDrawtriangle(self)
			}
		}
	}
	@discardableResult
	 open func drawtriangle() throws -> DrawtriangleContext {
		var _localctx: DrawtriangleContext = DrawtriangleContext(_ctx, getState())
		try enterRule(_localctx, 52, unagiParser.RULE_drawtriangle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(358)
		 	try match(unagiParser.Tokens.T__16.rawValue)
		 	setState(359)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(360)
		 	try superexp()
		 	setState(361)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(362)
		 	try superexp()
		 	setState(363)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(364)
		 	try superexp()
		 	setState(365)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(366)
		 	try superexp()
		 	setState(367)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(368)
		 	try superexp()
		 	setState(369)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(370)
		 	try color()
		 	setState(371)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(372)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DrawrectangleContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func color() -> ColorContext? {
				return getRuleContext(ColorContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_drawrectangle
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterDrawrectangle(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitDrawrectangle(self)
			}
		}
	}
	@discardableResult
	 open func drawrectangle() throws -> DrawrectangleContext {
		var _localctx: DrawrectangleContext = DrawrectangleContext(_ctx, getState())
		try enterRule(_localctx, 54, unagiParser.RULE_drawrectangle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(374)
		 	try match(unagiParser.Tokens.T__17.rawValue)
		 	setState(375)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(376)
		 	try superexp()
		 	setState(377)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(378)
		 	try superexp()
		 	setState(379)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(380)
		 	try superexp()
		 	setState(381)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(382)
		 	try superexp()
		 	setState(383)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(384)
		 	try color()
		 	setState(385)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(386)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DrawcircleContext: ParserRuleContext {
			open
			func LEFTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.LEFTP.rawValue, 0)
			}
			open
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func color() -> ColorContext? {
				return getRuleContext(ColorContext.self, 0)
			}
			open
			func RIGHTP() -> TerminalNode? {
				return getToken(unagiParser.Tokens.RIGHTP.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_drawcircle
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterDrawcircle(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitDrawcircle(self)
			}
		}
	}
	@discardableResult
	 open func drawcircle() throws -> DrawcircleContext {
		var _localctx: DrawcircleContext = DrawcircleContext(_ctx, getState())
		try enterRule(_localctx, 56, unagiParser.RULE_drawcircle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(388)
		 	try match(unagiParser.Tokens.T__18.rawValue)
		 	setState(389)
		 	try match(unagiParser.Tokens.LEFTP.rawValue)
		 	setState(390)
		 	try superexp()
		 	setState(391)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(392)
		 	try superexp()
		 	setState(393)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(394)
		 	try superexp()
		 	setState(395)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(396)
		 	try color()
		 	setState(397)
		 	try match(unagiParser.Tokens.RIGHTP.rawValue)
		 	setState(398)
		 	try match(unagiParser.Tokens.T__3.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ColorContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return unagiParser.RULE_color
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.enterColor(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? unagiListener {
				listener.exitColor(self)
			}
		}
	}
	@discardableResult
	 open func color() throws -> ColorContext {
		var _localctx: ColorContext = ColorContext(_ctx, getState())
		try enterRule(_localctx, 58, unagiParser.RULE_color)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(400)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__19.rawValue,unagiParser.Tokens.T__20.rawValue,unagiParser.Tokens.T__21.rawValue,unagiParser.Tokens.T__22.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = unagiParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}