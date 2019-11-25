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
            T__15=16, T__16=17, T__17=18, ARROW=19, ASG=20, LESS=21, MORETHAN=22, 
            LESSOREQUAL=23, MOREOREQUAL=24, EQUAL=25, NOTEQUAL=26, SUM=27, 
            SUB=28, MULT=29, DIV=30, LEFTP=31, RIGHTP=32, LEFTBRACE=33, 
            RIGHTBRACE=34, NUM=35, DECIMAL=36, BOOL=37, CHAR=38, PHRASE=39, 
            IF=40, ELIF=41, ELSE=42, WHILE=43, FOR=44, EMPTY=45, VAR=46, 
            PRINT=47, RETURN=48, FUNC=49, AND=50, OR=51, LIST=52, GET=53, 
            ADD=54, POP=55, COUNT=56, FIRST=57, LAST=58, WHITESPACE=59, 
            NEWLINE=60, ID=61, CTE_N=62, CTE_D=63, CTE_C=64, CTE_P=65

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
		"T__17", "ARROW", "ASG", "LESS", "MORETHAN", "LESSOREQUAL", "MOREOREQUAL", 
		"EQUAL", "NOTEQUAL", "SUM", "SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", 
		"RIGHTBRACE", "NUM", "DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", 
		"ELSE", "WHILE", "FOR", "EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", 
		"OR", "LIST", "GET", "ADD", "POP", "COUNT", "FIRST", "LAST", "WHITESPACE", 
		"NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'program'", "':'", "','", "';'", "'start'", "'.'", "'true'", "'false'", 
		"'root'", "'perimeter'", "'drawSquare'", "'drawTriangle'", "'drawRectangle'", 
		"'drawCircle'", "'red'", "'blue'", "'green'", "'yellow'", "'->'", "'='", 
		"'<'", "'>'", "'<='", "'>='", "'=='", "'<>'", "'+'", "'-'", "'*'", "'/'", 
		"'('", "')'", "'{'", "'}'", "'num'", "'decimal'", "'bool'", "'char'", 
		"'phrase'", "'if'", "'elif'", "'else'", "'while'", "'for'", "'empty'", 
		"'var'", "'print'", "'return'", "'func'", "'and'", "'or'", "'list'", "'get'", 
		"'add'", "'pop'", "'count'", "'first'", "'last'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, "ARROW", "ASG", "LESS", "MORETHAN", "LESSOREQUAL", 
		"MOREOREQUAL", "EQUAL", "NOTEQUAL", "SUM", "SUB", "MULT", "DIV", "LEFTP", 
		"RIGHTP", "LEFTBRACE", "RIGHTBRACE", "NUM", "DECIMAL", "BOOL", "CHAR", 
		"PHRASE", "IF", "ELIF", "ELSE", "WHILE", "FOR", "EMPTY", "VAR", "PRINT", 
		"RETURN", "FUNC", "AND", "OR", "LIST", "GET", "ADD", "POP", "COUNT", "FIRST", 
		"LAST", "WHITESPACE", "NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", "CTE_P"
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