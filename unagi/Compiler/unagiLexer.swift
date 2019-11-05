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
            T__21=22, T__22=23, T__23=24, T__24=25, ARROW=26, ASG=27, LESS=28, 
            MORETHAN=29, LESSOREQUAL=30, MOREOREQUAL=31, EQUAL=32, NOTEQUAL=33, 
            SUM=34, SUB=35, MULT=36, DIV=37, LEFTP=38, RIGHTP=39, LEFTBRACE=40, 
            RIGHTBRACE=41, NUM=42, DECIMAL=43, BOOL=44, CHAR=45, PHRASE=46, 
            IF=47, ELIF=48, ELSE=49, WHILE=50, FOR=51, EMPTY=52, VAR=53, 
            PRINT=54, RETURN=55, FUNC=56, AND=57, OR=58, LIST=59, WHITESPACE=60, 
            NEWLINE=61, ID=62, CTE_N=63, CTE_D=64, CTE_C=65, CTE_P=66

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
		"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", "T__24", 
		"ARROW", "ASG", "LESS", "MORETHAN", "LESSOREQUAL", "MOREOREQUAL", "EQUAL", 
		"NOTEQUAL", "SUM", "SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", 
		"RIGHTBRACE", "NUM", "DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", 
		"ELSE", "WHILE", "FOR", "EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", 
		"OR", "LIST", "WHITESPACE", "NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", 
		"CTE_P"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'program'", "':'", "','", "';'", "'start'", "'NOTEQUAL'", "'EQUAL'", 
		"'.'", "'true'", "'false'", "'get'", "'remove'", "'add'", "'first'", "'last'", 
		"'root'", "'perimeter'", "'drawSquare'", "'drawTriangle'", "'drawRectangle'", 
		"'drawCircle'", "'red'", "'blue'", "'green'", "'yellow'", "'->'", "'='", 
		"'<'", "'>'", "'<='", "'>='", "'=='", "'<>'", "'+'", "'-'", "'*'", "'/'", 
		"'('", "')'", "'{'", "'}'", "'num'", "'decimal'", "'bool'", "'char'", 
		"'phrase'", "'if'", "'elif'", "'else'", "'while'", "'for'", "'empty'", 
		"'var'", "'print'", "'return'", "'func'", "'and'", "'or'", "'list'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "ARROW", "ASG", 
		"LESS", "MORETHAN", "LESSOREQUAL", "MOREOREQUAL", "EQUAL", "NOTEQUAL", 
		"SUM", "SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", "RIGHTBRACE", 
		"NUM", "DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", "ELSE", "WHILE", 
		"FOR", "EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", "OR", "LIST", 
		"WHITESPACE", "NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
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