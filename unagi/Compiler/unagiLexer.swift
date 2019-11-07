// Generated from unagi.g4 by ANTLR 4.7.2
import Antlr4

open class unagiLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = unagiLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(unagiLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, 
            T__8=9, T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, 
            T__15=16, T__16=17, T__17=18, T__18=19, T__19=20, T__20=21, 
            T__21=22, T__22=23, ARROW=24, ASG=25, LESS=26, MORETHAN=27, 
            LESSOREQUAL=28, MOREOREQUAL=29, EQUAL=30, NOTEQUAL=31, SUM=32, 
            SUB=33, MULT=34, DIV=35, LEFTP=36, RIGHTP=37, LEFTBRACE=38, 
            RIGHTBRACE=39, NUM=40, DECIMAL=41, BOOL=42, CHAR=43, PHRASE=44, 
            IF=45, ELIF=46, ELSE=47, WHILE=48, FOR=49, EMPTY=50, VAR=51, 
            PRINT=52, RETURN=53, FUNC=54, AND=55, OR=56, LIST=57, WHITESPACE=58, 
            NEWLINE=59, ID=60, CTE_N=61, CTE_D=62, CTE_C=63, CTE_P=64

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "ARROW", "ASG", 
		"LESS", "MORETHAN", "LESSOREQUAL", "MOREOREQUAL", "EQUAL", "NOTEQUAL", 
		"SUM", "SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", "RIGHTBRACE", 
		"NUM", "DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", "ELSE", "WHILE", 
		"FOR", "EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", "OR", "LIST", 
		"WHITESPACE", "NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
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
	func getVocabulary() -> Vocabulary {
		return unagiLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, unagiLexer._ATN, unagiLexer._decisionToDFA, unagiLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "unagi.g4" }

	override open
	func getRuleNames() -> [String] { return unagiLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return unagiLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return unagiLexer.channelNames }

	override open
	func getModeNames() -> [String] { return unagiLexer.modeNames }

	override open
	func getATN() -> ATN { return unagiLexer._ATN }


	public
	static let _serializedATN: String = unagiLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}