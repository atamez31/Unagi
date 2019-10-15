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
                 T__22 = 23, T__23 = 24, T__24 = 25, T__25 = 26, T__26 = 27, 
                 T__27 = 28, T__28 = 29, T__29 = 30, T__30 = 31, T__31 = 32, 
                 T__32 = 33, T__33 = 34, T__34 = 35, T__35 = 36, T__36 = 37, 
                 T__37 = 38, T__38 = 39, NUM = 40, DECIMAL = 41, BOOL = 42, 
                 CHAR = 43, PHRASE = 44, IF = 45, ELIF = 46, ELSE = 47, 
                 WHILE = 48, FOR = 49, EMPTY = 50, VAR = 51, PRINT = 52, 
                 RETURN = 53, FUNC = 54, AND = 55, OR = 56, LIST = 57, WHITESPACE = 58, 
                 NEWLINE = 59, ID = 60, CTE_N = 61, CTE_D = 62, CTE_C = 63, 
                 CTE_P = 64
	}

	public
	static let RULE_program = 0, RULE_declaration = 1, RULE_main = 2, RULE_statement = 3, 
            RULE_loop = 4, RULE_assigment = 5, RULE_functions = 6, RULE_functype = 7, 
            RULE_type = 8, RULE_list = 9, RULE_argfunc = 10, RULE_superexp = 11, 
            RULE_expression = 12, RULE_exp = 13, RULE_term = 14, RULE_factor = 15, 
            RULE_constant = 16, RULE_condition = 17, RULE_printing = 18, 
            RULE_listfunc = 19, RULE_special = 20, RULE_root = 21, RULE_perimeter = 22, 
            RULE_drawsquare = 23, RULE_drawtriangle = 24, RULE_drawrectangle = 25, 
            RULE_drawcircle = 26, RULE_color = 27

	public
	static let ruleNames: [String] = [
		"program", "declaration", "main", "statement", "loop", "assigment", "functions", 
		"functype", "type", "list", "argfunc", "superexp", "expression", "exp", 
		"term", "factor", "constant", "condition", "printing", "listfunc", "special", 
		"root", "perimeter", "drawsquare", "drawtriangle", "drawrectangle", "drawcircle", 
		"color"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'program'", "':'", "','", "';'", "'start'", "'{'", "'}'", "'('", 
		"')'", "'->'", "'='", "'<'", "'>'", "'>='", "'<='", "'<>'", "'=='", "'+'", 
		"'-'", "'*'", "'/'", "'.'", "'true'", "'false'", "'get'", "'remove'", 
		"'add'", "'first'", "'last'", "'root'", "'perimeter'", "'drawSquare'", 
		"'drawTriangle'", "'drawRectangle'", "'drawCircle'", "'red'", "'blue'", 
		"'green'", "'yellow'", "'num'", "'decimal'", "'bool'", "'char'", "'phrase'", 
		"'if'", "'elif'", "'else'", "'while'", "'for'", "'empty'", "'var'", "'print'", 
		"'return'", "'func'", "'and'", "'or'", "'list'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "NUM", "DECIMAL", 
		"BOOL", "CHAR", "PHRASE", "IF", "ELIF", "ELSE", "WHILE", "FOR", "EMPTY", 
		"VAR", "PRINT", "RETURN", "FUNC", "AND", "OR", "LIST", "WHITESPACE", "NEWLINE", 
		"ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
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
		 	setState(56)
		 	try match(unagiParser.Tokens.T__0.rawValue)
		 	setState(57)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(58)
		 	try match(unagiParser.Tokens.T__1.rawValue)
		 	setState(62)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(59)
		 		try declaration()


		 		setState(64)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(68)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.FUNC.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(65)
		 		try functions()


		 		setState(70)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(71)
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
		 	setState(73)
		 	try match(unagiParser.Tokens.VAR.rawValue)
		 	setState(74)
		 	try type()
		 	setState(75)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(80)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(76)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(77)
		 		try match(unagiParser.Tokens.ID.rawValue)


		 		setState(82)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(83)
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
		 	setState(85)
		 	try match(unagiParser.Tokens.T__4.rawValue)
		 	setState(86)
		 	try match(unagiParser.Tokens.T__5.rawValue)
		 	setState(90)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(87)
		 		try declaration()


		 		setState(92)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(96)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(93)
		 		try statement()


		 		setState(98)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(99)
		 	try match(unagiParser.Tokens.T__6.rawValue)

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
		 	setState(110)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .ID:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(101)
		 		try assigment()

		 		break

		 	case .IF:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(102)
		 		try condition()

		 		break

		 	case .PRINT:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(103)
		 		try printing()

		 		break
		 	case .T__29:fallthrough
		 	case .T__30:fallthrough
		 	case .T__31:fallthrough
		 	case .T__32:fallthrough
		 	case .T__33:fallthrough
		 	case .T__34:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(104)
		 		try special()

		 		break
		 	case .WHILE:fallthrough
		 	case .FOR:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(105)
		 		try loop()

		 		break

		 	case .RETURN:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(106)
		 		try match(unagiParser.Tokens.RETURN.rawValue)
		 		setState(107)
		 		try superexp()
		 		setState(108)
		 		try match(unagiParser.Tokens.T__3.rawValue)

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

	public class LoopContext: ParserRuleContext {
			open
			func WHILE() -> TerminalNode? {
				return getToken(unagiParser.Tokens.WHILE.rawValue, 0)
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
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
			}
			open
			func FOR() -> TerminalNode? {
				return getToken(unagiParser.Tokens.FOR.rawValue, 0)
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
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(140)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .WHILE:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(112)
		 		try match(unagiParser.Tokens.WHILE.rawValue)
		 		setState(113)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(114)
		 		try superexp()
		 		setState(115)
		 		try match(unagiParser.Tokens.T__8.rawValue)
		 		setState(116)
		 		try match(unagiParser.Tokens.T__5.rawValue)
		 		setState(120)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(117)
		 			try statement()


		 			setState(122)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(123)
		 		try match(unagiParser.Tokens.T__6.rawValue)

		 		break

		 	case .FOR:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(125)
		 		try match(unagiParser.Tokens.FOR.rawValue)
		 		setState(126)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(127)
		 		try superexp()
		 		setState(128)
		 		try match(unagiParser.Tokens.T__9.rawValue)
		 		setState(129)
		 		try superexp()
		 		setState(130)
		 		try match(unagiParser.Tokens.T__8.rawValue)
		 		setState(131)
		 		try match(unagiParser.Tokens.T__5.rawValue)
		 		setState(135)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(132)
		 			try statement()


		 			setState(137)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(138)
		 		try match(unagiParser.Tokens.T__6.rawValue)

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
		 	setState(142)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(143)
		 	try match(unagiParser.Tokens.T__10.rawValue)
		 	setState(144)
		 	try superexp()
		 	setState(145)
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
			func argfunc() -> ArgfuncContext? {
				return getRuleContext(ArgfuncContext.self, 0)
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
		 	setState(147)
		 	try match(unagiParser.Tokens.FUNC.rawValue)
		 	setState(148)
		 	try functype()
		 	setState(149)
		 	try match(unagiParser.Tokens.ID.rawValue)
		 	setState(150)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(151)
		 	try argfunc()
		 	setState(152)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(153)
		 	try match(unagiParser.Tokens.T__5.rawValue)
		 	setState(157)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.VAR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(154)
		 		try declaration()


		 		setState(159)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(163)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(160)
		 		try statement()


		 		setState(165)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(166)
		 	try match(unagiParser.Tokens.T__6.rawValue)

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
		 	setState(170)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .EMPTY:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(168)
		 		try match(unagiParser.Tokens.EMPTY.rawValue)

		 		break
		 	case .NUM:fallthrough
		 	case .DECIMAL:fallthrough
		 	case .BOOL:fallthrough
		 	case .CHAR:fallthrough
		 	case .PHRASE:fallthrough
		 	case .LIST:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(169)
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
		 	setState(172)
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
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
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
		 	setState(174)
		 	try match(unagiParser.Tokens.LIST.rawValue)
		 	setState(175)
		 	try match(unagiParser.Tokens.T__11.rawValue)
		 	setState(176)
		 	try type()
		 	setState(177)
		 	try match(unagiParser.Tokens.T__12.rawValue)

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
		 	setState(191)
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
		 		setState(179)
		 		try type()
		 		setState(180)
		 		try match(unagiParser.Tokens.ID.rawValue)

		 		setState(188)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(182)
		 			try match(unagiParser.Tokens.T__2.rawValue)
		 			setState(183)
		 			try type()
		 			setState(184)
		 			try match(unagiParser.Tokens.ID.rawValue)


		 			setState(190)
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
			func expression() -> [ExpressionContext] {
				return getRuleContexts(ExpressionContext.self)
			}
			open
			func expression(_ i: Int) -> ExpressionContext? {
				return getRuleContext(ExpressionContext.self, i)
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
		 	setState(193)
		 	try expression()
		 	setState(196)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.AND.rawValue || _la == unagiParser.Tokens.OR.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(194)
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
		 		setState(195)
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

	public class ExpressionContext: ParserRuleContext {
			open
			func exp() -> [ExpContext] {
				return getRuleContexts(ExpContext.self)
			}
			open
			func exp(_ i: Int) -> ExpContext? {
				return getRuleContext(ExpContext.self, i)
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
		 	setState(198)
		 	try exp()
		 	setState(201)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__11.rawValue,unagiParser.Tokens.T__12.rawValue,unagiParser.Tokens.T__13.rawValue,unagiParser.Tokens.T__14.rawValue,unagiParser.Tokens.T__15.rawValue,unagiParser.Tokens.T__16.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(199)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.T__11.rawValue,unagiParser.Tokens.T__12.rawValue,unagiParser.Tokens.T__13.rawValue,unagiParser.Tokens.T__14.rawValue,unagiParser.Tokens.T__15.rawValue,unagiParser.Tokens.T__16.rawValue]
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
		 		setState(200)
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

	public class ExpContext: ParserRuleContext {
			open
			func term() -> [TermContext] {
				return getRuleContexts(TermContext.self)
			}
			open
			func term(_ i: Int) -> TermContext? {
				return getRuleContext(TermContext.self, i)
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
			var _alt:Int
		 	try enterOuterAlt(_localctx, 1)
		 	setState(203)
		 	try term()
		 	setState(208)
		 	try _errHandler.sync(self)
		 	_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
		 	while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
		 		if ( _alt==1 ) {
		 			setState(204)
		 			_la = try _input.LA(1)
		 			if (!(//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == unagiParser.Tokens.T__17.rawValue || _la == unagiParser.Tokens.T__18.rawValue
		 			      return testSet
		 			 }())) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}
		 			setState(205)
		 			try term()

		 	 
		 		}
		 		setState(210)
		 		try _errHandler.sync(self)
		 		_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
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
			func factor() -> [FactorContext] {
				return getRuleContexts(FactorContext.self)
			}
			open
			func factor(_ i: Int) -> FactorContext? {
				return getRuleContext(FactorContext.self, i)
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
		 	setState(211)
		 	try factor()
		 	setState(216)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__19.rawValue || _la == unagiParser.Tokens.T__20.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(212)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__19.rawValue || _la == unagiParser.Tokens.T__20.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(213)
		 		try factor()


		 		setState(218)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
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
			func superexp() -> [SuperexpContext] {
				return getRuleContexts(SuperexpContext.self)
			}
			open
			func superexp(_ i: Int) -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, i)
			}
			open
			func constant() -> ConstantContext? {
				return getRuleContext(ConstantContext.self, 0)
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
		 	setState(240)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__7:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(219)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(220)
		 		try superexp()
		 		setState(221)
		 		try match(unagiParser.Tokens.T__8.rawValue)

		 		break
		 	case .T__17:fallthrough
		 	case .T__18:fallthrough
		 	case .T__22:fallthrough
		 	case .T__23:fallthrough
		 	case .CTE_N:fallthrough
		 	case .CTE_D:fallthrough
		 	case .CTE_C:fallthrough
		 	case .CTE_P:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(224)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__17.rawValue || _la == unagiParser.Tokens.T__18.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(223)
		 			_la = try _input.LA(1)
		 			if (!(//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = _la == unagiParser.Tokens.T__17.rawValue || _la == unagiParser.Tokens.T__18.rawValue
		 			      return testSet
		 			 }())) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}

		 		}

		 		setState(226)
		 		try constant()

		 		break

		 	case .ID:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(227)
		 		try match(unagiParser.Tokens.ID.rawValue)
		 		setState(238)
		 		try _errHandler.sync(self)
		 		switch (try getInterpreter().adaptivePredict(_input,20,_ctx)) {
		 		case 1:
		 			setState(228)
		 			try match(unagiParser.Tokens.T__7.rawValue)
		 			setState(232)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 			while (//closure
		 			 { () -> Bool in
		 			      let testSet: Bool = {  () -> Bool in
		 			   let testArray: [Int] = [_la, unagiParser.Tokens.T__7.rawValue,unagiParser.Tokens.T__17.rawValue,unagiParser.Tokens.T__18.rawValue,unagiParser.Tokens.T__22.rawValue,unagiParser.Tokens.T__23.rawValue,unagiParser.Tokens.ID.rawValue,unagiParser.Tokens.CTE_N.rawValue,unagiParser.Tokens.CTE_D.rawValue,unagiParser.Tokens.CTE_C.rawValue,unagiParser.Tokens.CTE_P.rawValue]
		 			    return  Utils.testBitLeftShiftArray(testArray, 8)
		 			}()
		 			      return testSet
		 			 }()) {
		 				setState(229)
		 				try superexp()


		 				setState(234)
		 				try _errHandler.sync(self)
		 				_la = try _input.LA(1)
		 			}
		 			setState(235)
		 			try match(unagiParser.Tokens.T__8.rawValue)

		 			break
		 		case 2:
		 			setState(236)
		 			try match(unagiParser.Tokens.T__21.rawValue)
		 			setState(237)
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
		 	setState(242)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__22.rawValue,unagiParser.Tokens.T__23.rawValue,unagiParser.Tokens.CTE_N.rawValue,unagiParser.Tokens.CTE_D.rawValue,unagiParser.Tokens.CTE_C.rawValue,unagiParser.Tokens.CTE_P.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 23)
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

	public class ConditionContext: ParserRuleContext {
			open
			func IF() -> TerminalNode? {
				return getToken(unagiParser.Tokens.IF.rawValue, 0)
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
			func statement() -> [StatementContext] {
				return getRuleContexts(StatementContext.self)
			}
			open
			func statement(_ i: Int) -> StatementContext? {
				return getRuleContext(StatementContext.self, i)
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
		try enterRule(_localctx, 34, unagiParser.RULE_condition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(244)
		 	try match(unagiParser.Tokens.IF.rawValue)
		 	setState(245)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(246)
		 	try superexp()
		 	setState(247)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(248)
		 	try match(unagiParser.Tokens.T__5.rawValue)
		 	setState(252)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(249)
		 		try statement()


		 		setState(254)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(255)
		 	try match(unagiParser.Tokens.T__6.rawValue)
		 	setState(271)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.ELIF.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(256)
		 		try match(unagiParser.Tokens.ELIF.rawValue)
		 		setState(257)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(258)
		 		try superexp()
		 		setState(259)
		 		try match(unagiParser.Tokens.T__8.rawValue)
		 		setState(260)
		 		try match(unagiParser.Tokens.T__5.rawValue)
		 		setState(264)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(261)
		 			try statement()


		 			setState(266)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(267)
		 		try match(unagiParser.Tokens.T__6.rawValue)


		 		setState(273)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(283)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.ELSE.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(274)
		 		try match(unagiParser.Tokens.ELSE.rawValue)
		 		setState(275)
		 		try match(unagiParser.Tokens.T__5.rawValue)
		 		setState(279)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = {  () -> Bool in
		 		   let testArray: [Int] = [_la, unagiParser.Tokens.T__29.rawValue,unagiParser.Tokens.T__30.rawValue,unagiParser.Tokens.T__31.rawValue,unagiParser.Tokens.T__32.rawValue,unagiParser.Tokens.T__33.rawValue,unagiParser.Tokens.T__34.rawValue,unagiParser.Tokens.IF.rawValue,unagiParser.Tokens.WHILE.rawValue,unagiParser.Tokens.FOR.rawValue,unagiParser.Tokens.PRINT.rawValue,unagiParser.Tokens.RETURN.rawValue,unagiParser.Tokens.ID.rawValue]
		 		    return  Utils.testBitLeftShiftArray(testArray, 0)
		 		}()
		 		      return testSet
		 		 }()) {
		 			setState(276)
		 			try statement()


		 			setState(281)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(282)
		 		try match(unagiParser.Tokens.T__6.rawValue)

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
		try enterRule(_localctx, 36, unagiParser.RULE_printing)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(285)
		 	try match(unagiParser.Tokens.PRINT.rawValue)
		 	setState(286)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(289)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,27, _ctx)) {
		 	case 1:
		 		setState(287)
		 		try superexp()

		 		break
		 	case 2:
		 		setState(288)
		 		try match(unagiParser.Tokens.CTE_P.rawValue)

		 		break
		 	default: break
		 	}
		 	setState(298)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(291)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(294)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,28, _ctx)) {
		 		case 1:
		 			setState(292)
		 			try superexp()

		 			break
		 		case 2:
		 			setState(293)
		 			try match(unagiParser.Tokens.CTE_P.rawValue)

		 			break
		 		default: break
		 		}


		 		setState(300)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(301)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(302)
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
		try enterRule(_localctx, 38, unagiParser.RULE_listfunc)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(323)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__24:fallthrough
		 	case .T__25:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(304)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__24.rawValue || _la == unagiParser.Tokens.T__25.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(305)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(309)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,30, _ctx)) {
		 		case 1:
		 			setState(306)
		 			try match(unagiParser.Tokens.CTE_N.rawValue)

		 			break
		 		case 2:
		 			setState(307)
		 			try match(unagiParser.Tokens.ID.rawValue)

		 			break
		 		case 3:
		 			setState(308)
		 			try factor()

		 			break
		 		default: break
		 		}
		 		setState(311)
		 		try match(unagiParser.Tokens.T__8.rawValue)

		 		break

		 	case .T__26:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(312)
		 		try match(unagiParser.Tokens.T__26.rawValue)
		 		setState(313)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(317)
		 		try _errHandler.sync(self)
		 		switch(try getInterpreter().adaptivePredict(_input,31, _ctx)) {
		 		case 1:
		 			setState(314)
		 			try constant()

		 			break
		 		case 2:
		 			setState(315)
		 			try match(unagiParser.Tokens.ID.rawValue)

		 			break
		 		case 3:
		 			setState(316)
		 			try factor()

		 			break
		 		default: break
		 		}
		 		setState(319)
		 		try match(unagiParser.Tokens.T__8.rawValue)

		 		break
		 	case .T__27:fallthrough
		 	case .T__28:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(320)
		 		_la = try _input.LA(1)
		 		if (!(//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == unagiParser.Tokens.T__27.rawValue || _la == unagiParser.Tokens.T__28.rawValue
		 		      return testSet
		 		 }())) {
		 		try _errHandler.recoverInline(self)
		 		}
		 		else {
		 			_errHandler.reportMatch(self)
		 			try consume()
		 		}
		 		setState(321)
		 		try match(unagiParser.Tokens.T__7.rawValue)
		 		setState(322)
		 		try match(unagiParser.Tokens.T__8.rawValue)

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
		try enterRule(_localctx, 40, unagiParser.RULE_special)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(331)
		 	try _errHandler.sync(self)
		 	switch (unagiParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__31:
		 		setState(325)
		 		try drawsquare()

		 		break

		 	case .T__32:
		 		setState(326)
		 		try drawtriangle()

		 		break

		 	case .T__33:
		 		setState(327)
		 		try drawrectangle()

		 		break

		 	case .T__34:
		 		setState(328)
		 		try drawcircle()

		 		break

		 	case .T__29:
		 		setState(329)
		 		try root()

		 		break

		 	case .T__30:
		 		setState(330)
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
			func superexp() -> SuperexpContext? {
				return getRuleContext(SuperexpContext.self, 0)
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
		try enterRule(_localctx, 42, unagiParser.RULE_root)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(333)
		 	try match(unagiParser.Tokens.T__29.rawValue)
		 	setState(334)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(335)
		 	try superexp()
		 	setState(336)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(337)
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
		try enterRule(_localctx, 44, unagiParser.RULE_perimeter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(339)
		 	try match(unagiParser.Tokens.T__30.rawValue)
		 	setState(340)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(341)
		 	try superexp()
		 	setState(342)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(343)
		 	try superexp()
		 	setState(344)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(345)
		 	try superexp()
		 	setState(348)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == unagiParser.Tokens.T__2.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(346)
		 		try match(unagiParser.Tokens.T__2.rawValue)
		 		setState(347)
		 		try superexp()

		 	}

		 	setState(350)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(351)
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
		try enterRule(_localctx, 46, unagiParser.RULE_drawsquare)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(353)
		 	try match(unagiParser.Tokens.T__31.rawValue)
		 	setState(354)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(355)
		 	try superexp()
		 	setState(356)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(357)
		 	try superexp()
		 	setState(358)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(359)
		 	try superexp()
		 	setState(360)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(361)
		 	try color()
		 	setState(362)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(363)
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
		try enterRule(_localctx, 48, unagiParser.RULE_drawtriangle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(365)
		 	try match(unagiParser.Tokens.T__32.rawValue)
		 	setState(366)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(367)
		 	try superexp()
		 	setState(368)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(369)
		 	try superexp()
		 	setState(370)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(371)
		 	try superexp()
		 	setState(372)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(373)
		 	try superexp()
		 	setState(374)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(375)
		 	try superexp()
		 	setState(376)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(377)
		 	try color()
		 	setState(378)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(379)
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
		try enterRule(_localctx, 50, unagiParser.RULE_drawrectangle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(381)
		 	try match(unagiParser.Tokens.T__33.rawValue)
		 	setState(382)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(383)
		 	try superexp()
		 	setState(384)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(385)
		 	try superexp()
		 	setState(386)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(387)
		 	try superexp()
		 	setState(388)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(389)
		 	try superexp()
		 	setState(390)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(391)
		 	try color()
		 	setState(392)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(393)
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
		try enterRule(_localctx, 52, unagiParser.RULE_drawcircle)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(395)
		 	try match(unagiParser.Tokens.T__34.rawValue)
		 	setState(396)
		 	try match(unagiParser.Tokens.T__7.rawValue)
		 	setState(397)
		 	try superexp()
		 	setState(398)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(399)
		 	try superexp()
		 	setState(400)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(401)
		 	try superexp()
		 	setState(402)
		 	try match(unagiParser.Tokens.T__2.rawValue)
		 	setState(403)
		 	try color()
		 	setState(404)
		 	try match(unagiParser.Tokens.T__8.rawValue)
		 	setState(405)
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
		try enterRule(_localctx, 54, unagiParser.RULE_color)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(407)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, unagiParser.Tokens.T__35.rawValue,unagiParser.Tokens.T__36.rawValue,unagiParser.Tokens.T__37.rawValue,unagiParser.Tokens.T__38.rawValue]
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