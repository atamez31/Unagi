// Generated from /Users/andrestamez/Desktop/Compis/unagi/unagi/unagi.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class unagiParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, ARROW=24, 
		ASG=25, LESS=26, MORETHAN=27, LESSOREQUAL=28, MOREOREQUAL=29, EQUAL=30, 
		NOTEQUAL=31, SUM=32, SUB=33, MULT=34, DIV=35, LEFTP=36, RIGHTP=37, LEFTBRACE=38, 
		RIGHTBRACE=39, NUM=40, DECIMAL=41, BOOL=42, CHAR=43, PHRASE=44, IF=45, 
		ELIF=46, ELSE=47, WHILE=48, FOR=49, EMPTY=50, VAR=51, PRINT=52, RETURN=53, 
		FUNC=54, AND=55, OR=56, LIST=57, WHITESPACE=58, NEWLINE=59, ID=60, CTE_N=61, 
		CTE_D=62, CTE_C=63, CTE_P=64;
	public static final int
		RULE_program = 0, RULE_declaration = 1, RULE_main = 2, RULE_statement = 3, 
		RULE_loop = 4, RULE_assigment = 5, RULE_functions = 6, RULE_functype = 7, 
		RULE_type = 8, RULE_list = 9, RULE_argfunc = 10, RULE_superexp = 11, RULE_expression = 12, 
		RULE_exp = 13, RULE_term = 14, RULE_factor = 15, RULE_constant = 16, RULE_condition = 17, 
		RULE_printing = 18, RULE_listfunc = 19, RULE_special = 20, RULE_root = 21, 
		RULE_perimeter = 22, RULE_drawsquare = 23, RULE_drawtriangle = 24, RULE_drawrectangle = 25, 
		RULE_drawcircle = 26, RULE_color = 27;
	public static final String[] ruleNames = {
		"program", "declaration", "main", "statement", "loop", "assigment", "functions", 
		"functype", "type", "list", "argfunc", "superexp", "expression", "exp", 
		"term", "factor", "constant", "condition", "printing", "listfunc", "special", 
		"root", "perimeter", "drawsquare", "drawtriangle", "drawrectangle", "drawcircle", 
		"color"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'program'", "':'", "','", "';'", "'start'", "'.'", "'true'", "'false'", 
		"'get'", "'remove'", "'add'", "'first'", "'last'", "'root'", "'perimeter'", 
		"'drawSquare'", "'drawTriangle'", "'drawRectangle'", "'drawCircle'", "'red'", 
		"'blue'", "'green'", "'yellow'", "'->'", "'='", "'<'", "'>'", "'<='", 
		"'>='", "'=='", "'<>'", "'+'", "'-'", "'*'", "'/'", "'('", "')'", "'{'", 
		"'}'", "'num'", "'decimal'", "'bool'", "'char'", "'phrase'", "'if'", "'elif'", 
		"'else'", "'while'", "'for'", "'empty'", "'var'", "'print'", "'return'", 
		"'func'", "'and'", "'or'", "'list'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		"ARROW", "ASG", "LESS", "MORETHAN", "LESSOREQUAL", "MOREOREQUAL", "EQUAL", 
		"NOTEQUAL", "SUM", "SUB", "MULT", "DIV", "LEFTP", "RIGHTP", "LEFTBRACE", 
		"RIGHTBRACE", "NUM", "DECIMAL", "BOOL", "CHAR", "PHRASE", "IF", "ELIF", 
		"ELSE", "WHILE", "FOR", "EMPTY", "VAR", "PRINT", "RETURN", "FUNC", "AND", 
		"OR", "LIST", "WHITESPACE", "NEWLINE", "ID", "CTE_N", "CTE_D", "CTE_C", 
		"CTE_P"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "unagi.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public unagiParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(unagiParser.ID, 0); }
		public MainContext main() {
			return getRuleContext(MainContext.class,0);
		}
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public List<FunctionsContext> functions() {
			return getRuleContexts(FunctionsContext.class);
		}
		public FunctionsContext functions(int i) {
			return getRuleContext(FunctionsContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(56);
			match(T__0);
			setState(57);
			match(ID);
			setState(58);
			match(T__1);
			setState(62);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==VAR) {
				{
				{
				setState(59);
				declaration();
				}
				}
				setState(64);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(68);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==FUNC) {
				{
				{
				setState(65);
				functions();
				}
				}
				setState(70);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(71);
			main();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclarationContext extends ParserRuleContext {
		public TerminalNode VAR() { return getToken(unagiParser.VAR, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<TerminalNode> ID() { return getTokens(unagiParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(unagiParser.ID, i);
		}
		public DeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declaration; }
	}

	public final DeclarationContext declaration() throws RecognitionException {
		DeclarationContext _localctx = new DeclarationContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_declaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(73);
			match(VAR);
			setState(74);
			type();
			setState(75);
			match(ID);
			setState(80);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__2) {
				{
				{
				setState(76);
				match(T__2);
				setState(77);
				match(ID);
				}
				}
				setState(82);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(83);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MainContext extends ParserRuleContext {
		public TerminalNode LEFTBRACE() { return getToken(unagiParser.LEFTBRACE, 0); }
		public TerminalNode RIGHTBRACE() { return getToken(unagiParser.RIGHTBRACE, 0); }
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public MainContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_main; }
	}

	public final MainContext main() throws RecognitionException {
		MainContext _localctx = new MainContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_main);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(85);
			match(T__4);
			setState(86);
			match(LEFTBRACE);
			setState(90);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==VAR) {
				{
				{
				setState(87);
				declaration();
				}
				}
				setState(92);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(96);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
				{
				{
				setState(93);
				statement();
				}
				}
				setState(98);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(99);
			match(RIGHTBRACE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public AssigmentContext assigment() {
			return getRuleContext(AssigmentContext.class,0);
		}
		public ConditionContext condition() {
			return getRuleContext(ConditionContext.class,0);
		}
		public PrintingContext printing() {
			return getRuleContext(PrintingContext.class,0);
		}
		public SpecialContext special() {
			return getRuleContext(SpecialContext.class,0);
		}
		public LoopContext loop() {
			return getRuleContext(LoopContext.class,0);
		}
		public TerminalNode RETURN() { return getToken(unagiParser.RETURN, 0); }
		public SuperexpContext superexp() {
			return getRuleContext(SuperexpContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_statement);
		try {
			setState(110);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(101);
				assigment();
				}
				break;
			case IF:
				enterOuterAlt(_localctx, 2);
				{
				setState(102);
				condition();
				}
				break;
			case PRINT:
				enterOuterAlt(_localctx, 3);
				{
				setState(103);
				printing();
				}
				break;
			case T__13:
			case T__14:
			case T__15:
			case T__16:
			case T__17:
			case T__18:
				enterOuterAlt(_localctx, 4);
				{
				setState(104);
				special();
				}
				break;
			case WHILE:
			case FOR:
				enterOuterAlt(_localctx, 5);
				{
				setState(105);
				loop();
				}
				break;
			case RETURN:
				enterOuterAlt(_localctx, 6);
				{
				setState(106);
				match(RETURN);
				setState(107);
				superexp();
				setState(108);
				match(T__3);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LoopContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(unagiParser.WHILE, 0); }
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public TerminalNode LEFTBRACE() { return getToken(unagiParser.LEFTBRACE, 0); }
		public TerminalNode RIGHTBRACE() { return getToken(unagiParser.RIGHTBRACE, 0); }
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public TerminalNode FOR() { return getToken(unagiParser.FOR, 0); }
		public TerminalNode ARROW() { return getToken(unagiParser.ARROW, 0); }
		public LoopContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_loop; }
	}

	public final LoopContext loop() throws RecognitionException {
		LoopContext _localctx = new LoopContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_loop);
		int _la;
		try {
			setState(140);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case WHILE:
				enterOuterAlt(_localctx, 1);
				{
				setState(112);
				match(WHILE);
				setState(113);
				match(LEFTP);
				setState(114);
				superexp();
				setState(115);
				match(RIGHTP);
				setState(116);
				match(LEFTBRACE);
				setState(120);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
					{
					{
					setState(117);
					statement();
					}
					}
					setState(122);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(123);
				match(RIGHTBRACE);
				}
				break;
			case FOR:
				enterOuterAlt(_localctx, 2);
				{
				setState(125);
				match(FOR);
				setState(126);
				match(LEFTP);
				setState(127);
				superexp();
				setState(128);
				match(ARROW);
				setState(129);
				superexp();
				setState(130);
				match(RIGHTP);
				setState(131);
				match(LEFTBRACE);
				setState(135);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
					{
					{
					setState(132);
					statement();
					}
					}
					setState(137);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(138);
				match(RIGHTBRACE);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AssigmentContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(unagiParser.ID, 0); }
		public TerminalNode ASG() { return getToken(unagiParser.ASG, 0); }
		public SuperexpContext superexp() {
			return getRuleContext(SuperexpContext.class,0);
		}
		public AssigmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assigment; }
	}

	public final AssigmentContext assigment() throws RecognitionException {
		AssigmentContext _localctx = new AssigmentContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_assigment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(142);
			match(ID);
			setState(143);
			match(ASG);
			setState(144);
			superexp();
			setState(145);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionsContext extends ParserRuleContext {
		public TerminalNode FUNC() { return getToken(unagiParser.FUNC, 0); }
		public FunctypeContext functype() {
			return getRuleContext(FunctypeContext.class,0);
		}
		public TerminalNode ID() { return getToken(unagiParser.ID, 0); }
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public ArgfuncContext argfunc() {
			return getRuleContext(ArgfuncContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public TerminalNode LEFTBRACE() { return getToken(unagiParser.LEFTBRACE, 0); }
		public TerminalNode RIGHTBRACE() { return getToken(unagiParser.RIGHTBRACE, 0); }
		public List<DeclarationContext> declaration() {
			return getRuleContexts(DeclarationContext.class);
		}
		public DeclarationContext declaration(int i) {
			return getRuleContext(DeclarationContext.class,i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public FunctionsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functions; }
	}

	public final FunctionsContext functions() throws RecognitionException {
		FunctionsContext _localctx = new FunctionsContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_functions);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			match(FUNC);
			setState(148);
			functype();
			setState(149);
			match(ID);
			setState(150);
			match(LEFTP);
			setState(151);
			argfunc();
			setState(152);
			match(RIGHTP);
			setState(153);
			match(LEFTBRACE);
			setState(157);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==VAR) {
				{
				{
				setState(154);
				declaration();
				}
				}
				setState(159);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(163);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
				{
				{
				setState(160);
				statement();
				}
				}
				setState(165);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(166);
			match(RIGHTBRACE);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctypeContext extends ParserRuleContext {
		public TerminalNode EMPTY() { return getToken(unagiParser.EMPTY, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public FunctypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functype; }
	}

	public final FunctypeContext functype() throws RecognitionException {
		FunctypeContext _localctx = new FunctypeContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functype);
		try {
			setState(170);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case EMPTY:
				enterOuterAlt(_localctx, 1);
				{
				setState(168);
				match(EMPTY);
				}
				break;
			case NUM:
			case DECIMAL:
			case BOOL:
			case CHAR:
			case PHRASE:
			case LIST:
				enterOuterAlt(_localctx, 2);
				{
				setState(169);
				type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TerminalNode NUM() { return getToken(unagiParser.NUM, 0); }
		public TerminalNode DECIMAL() { return getToken(unagiParser.DECIMAL, 0); }
		public TerminalNode BOOL() { return getToken(unagiParser.BOOL, 0); }
		public TerminalNode CHAR() { return getToken(unagiParser.CHAR, 0); }
		public TerminalNode PHRASE() { return getToken(unagiParser.PHRASE, 0); }
		public TerminalNode LIST() { return getToken(unagiParser.LIST, 0); }
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(172);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << NUM) | (1L << DECIMAL) | (1L << BOOL) | (1L << CHAR) | (1L << PHRASE) | (1L << LIST))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListContext extends ParserRuleContext {
		public TerminalNode LIST() { return getToken(unagiParser.LIST, 0); }
		public TerminalNode LESS() { return getToken(unagiParser.LESS, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode MORETHAN() { return getToken(unagiParser.MORETHAN, 0); }
		public ListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_list; }
	}

	public final ListContext list() throws RecognitionException {
		ListContext _localctx = new ListContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_list);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(174);
			match(LIST);
			setState(175);
			match(LESS);
			setState(176);
			type();
			setState(177);
			match(MORETHAN);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArgfuncContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<TerminalNode> ID() { return getTokens(unagiParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(unagiParser.ID, i);
		}
		public ArgfuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_argfunc; }
	}

	public final ArgfuncContext argfunc() throws RecognitionException {
		ArgfuncContext _localctx = new ArgfuncContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_argfunc);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(191);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << NUM) | (1L << DECIMAL) | (1L << BOOL) | (1L << CHAR) | (1L << PHRASE) | (1L << LIST))) != 0)) {
				{
				{
				setState(179);
				type();
				setState(180);
				match(ID);
				}
				setState(188);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2) {
					{
					{
					setState(182);
					match(T__2);
					setState(183);
					type();
					setState(184);
					match(ID);
					}
					}
					setState(190);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SuperexpContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public SuperexpContext superexp() {
			return getRuleContext(SuperexpContext.class,0);
		}
		public TerminalNode AND() { return getToken(unagiParser.AND, 0); }
		public TerminalNode OR() { return getToken(unagiParser.OR, 0); }
		public SuperexpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_superexp; }
	}

	public final SuperexpContext superexp() throws RecognitionException {
		SuperexpContext _localctx = new SuperexpContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_superexp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(193);
			expression();
			setState(196);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==AND || _la==OR) {
				{
				setState(194);
				_la = _input.LA(1);
				if ( !(_la==AND || _la==OR) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(195);
				superexp();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode MORETHAN() { return getToken(unagiParser.MORETHAN, 0); }
		public TerminalNode LESS() { return getToken(unagiParser.LESS, 0); }
		public TerminalNode MOREOREQUAL() { return getToken(unagiParser.MOREOREQUAL, 0); }
		public TerminalNode LESSOREQUAL() { return getToken(unagiParser.LESSOREQUAL, 0); }
		public TerminalNode NOTEQUAL() { return getToken(unagiParser.NOTEQUAL, 0); }
		public TerminalNode EQUAL() { return getToken(unagiParser.EQUAL, 0); }
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_expression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(198);
			exp();
			setState(201);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << MORETHAN) | (1L << LESSOREQUAL) | (1L << MOREOREQUAL) | (1L << EQUAL) | (1L << NOTEQUAL))) != 0)) {
				{
				setState(199);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << MORETHAN) | (1L << LESSOREQUAL) | (1L << MOREOREQUAL) | (1L << EQUAL) | (1L << NOTEQUAL))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(200);
				expression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpContext extends ParserRuleContext {
		public TermContext term() {
			return getRuleContext(TermContext.class,0);
		}
		public ExpContext exp() {
			return getRuleContext(ExpContext.class,0);
		}
		public TerminalNode SUM() { return getToken(unagiParser.SUM, 0); }
		public TerminalNode SUB() { return getToken(unagiParser.SUB, 0); }
		public ExpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exp; }
	}

	public final ExpContext exp() throws RecognitionException {
		ExpContext _localctx = new ExpContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_exp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(203);
			term();
			setState(206);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(204);
				_la = _input.LA(1);
				if ( !(_la==SUM || _la==SUB) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(205);
				exp();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TermContext extends ParserRuleContext {
		public FactorContext factor() {
			return getRuleContext(FactorContext.class,0);
		}
		public TermContext term() {
			return getRuleContext(TermContext.class,0);
		}
		public TerminalNode MULT() { return getToken(unagiParser.MULT, 0); }
		public TerminalNode DIV() { return getToken(unagiParser.DIV, 0); }
		public TermContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_term; }
	}

	public final TermContext term() throws RecognitionException {
		TermContext _localctx = new TermContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_term);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(208);
			factor();
			setState(211);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==MULT || _la==DIV) {
				{
				setState(209);
				_la = _input.LA(1);
				if ( !(_la==MULT || _la==DIV) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(210);
				term();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FactorContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public TerminalNode SUM() { return getToken(unagiParser.SUM, 0); }
		public TerminalNode SUB() { return getToken(unagiParser.SUB, 0); }
		public TerminalNode ID() { return getToken(unagiParser.ID, 0); }
		public ListfuncContext listfunc() {
			return getRuleContext(ListfuncContext.class,0);
		}
		public FactorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_factor; }
	}

	public final FactorContext factor() throws RecognitionException {
		FactorContext _localctx = new FactorContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_factor);
		int _la;
		try {
			setState(234);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LEFTP:
				enterOuterAlt(_localctx, 1);
				{
				setState(213);
				match(LEFTP);
				setState(214);
				superexp();
				setState(215);
				match(RIGHTP);
				}
				break;
			case T__6:
			case T__7:
			case SUM:
			case SUB:
			case CTE_N:
			case CTE_D:
			case CTE_C:
			case CTE_P:
				enterOuterAlt(_localctx, 2);
				{
				setState(218);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==SUM || _la==SUB) {
					{
					setState(217);
					_la = _input.LA(1);
					if ( !(_la==SUM || _la==SUB) ) {
					_errHandler.recoverInline(this);
					}
					else {
						if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
						_errHandler.reportMatch(this);
						consume();
					}
					}
				}

				setState(220);
				constant();
				}
				break;
			case ID:
				enterOuterAlt(_localctx, 3);
				{
				setState(221);
				match(ID);
				setState(232);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
				case 1:
					{
					setState(222);
					match(LEFTP);
					setState(226);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (((((_la - 7)) & ~0x3f) == 0 && ((1L << (_la - 7)) & ((1L << (T__6 - 7)) | (1L << (T__7 - 7)) | (1L << (SUM - 7)) | (1L << (SUB - 7)) | (1L << (LEFTP - 7)) | (1L << (ID - 7)) | (1L << (CTE_N - 7)) | (1L << (CTE_D - 7)) | (1L << (CTE_C - 7)) | (1L << (CTE_P - 7)))) != 0)) {
						{
						{
						setState(223);
						superexp();
						}
						}
						setState(228);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(229);
					match(RIGHTP);
					}
					break;
				case 2:
					{
					setState(230);
					match(T__5);
					setState(231);
					listfunc();
					}
					break;
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public TerminalNode CTE_N() { return getToken(unagiParser.CTE_N, 0); }
		public TerminalNode CTE_D() { return getToken(unagiParser.CTE_D, 0); }
		public TerminalNode CTE_C() { return getToken(unagiParser.CTE_C, 0); }
		public TerminalNode CTE_P() { return getToken(unagiParser.CTE_P, 0); }
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_constant);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(236);
			_la = _input.LA(1);
			if ( !(((((_la - 7)) & ~0x3f) == 0 && ((1L << (_la - 7)) & ((1L << (T__6 - 7)) | (1L << (T__7 - 7)) | (1L << (CTE_N - 7)) | (1L << (CTE_D - 7)) | (1L << (CTE_C - 7)) | (1L << (CTE_P - 7)))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConditionContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(unagiParser.IF, 0); }
		public List<TerminalNode> LEFTP() { return getTokens(unagiParser.LEFTP); }
		public TerminalNode LEFTP(int i) {
			return getToken(unagiParser.LEFTP, i);
		}
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public List<TerminalNode> RIGHTP() { return getTokens(unagiParser.RIGHTP); }
		public TerminalNode RIGHTP(int i) {
			return getToken(unagiParser.RIGHTP, i);
		}
		public List<TerminalNode> LEFTBRACE() { return getTokens(unagiParser.LEFTBRACE); }
		public TerminalNode LEFTBRACE(int i) {
			return getToken(unagiParser.LEFTBRACE, i);
		}
		public List<TerminalNode> RIGHTBRACE() { return getTokens(unagiParser.RIGHTBRACE); }
		public TerminalNode RIGHTBRACE(int i) {
			return getToken(unagiParser.RIGHTBRACE, i);
		}
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public List<TerminalNode> ELIF() { return getTokens(unagiParser.ELIF); }
		public TerminalNode ELIF(int i) {
			return getToken(unagiParser.ELIF, i);
		}
		public TerminalNode ELSE() { return getToken(unagiParser.ELSE, 0); }
		public ConditionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_condition; }
	}

	public final ConditionContext condition() throws RecognitionException {
		ConditionContext _localctx = new ConditionContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_condition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(238);
			match(IF);
			setState(239);
			match(LEFTP);
			setState(240);
			superexp();
			setState(241);
			match(RIGHTP);
			setState(242);
			match(LEFTBRACE);
			setState(246);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
				{
				{
				setState(243);
				statement();
				}
				}
				setState(248);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(249);
			match(RIGHTBRACE);
			setState(265);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ELIF) {
				{
				{
				setState(250);
				match(ELIF);
				setState(251);
				match(LEFTP);
				setState(252);
				superexp();
				setState(253);
				match(RIGHTP);
				setState(254);
				match(LEFTBRACE);
				setState(258);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
					{
					{
					setState(255);
					statement();
					}
					}
					setState(260);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(261);
				match(RIGHTBRACE);
				}
				}
				setState(267);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(277);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELSE) {
				{
				setState(268);
				match(ELSE);
				setState(269);
				match(LEFTBRACE);
				setState(273);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << PRINT) | (1L << RETURN) | (1L << ID))) != 0)) {
					{
					{
					setState(270);
					statement();
					}
					}
					setState(275);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(276);
				match(RIGHTBRACE);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrintingContext extends ParserRuleContext {
		public TerminalNode PRINT() { return getToken(unagiParser.PRINT, 0); }
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public List<TerminalNode> CTE_P() { return getTokens(unagiParser.CTE_P); }
		public TerminalNode CTE_P(int i) {
			return getToken(unagiParser.CTE_P, i);
		}
		public PrintingContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_printing; }
	}

	public final PrintingContext printing() throws RecognitionException {
		PrintingContext _localctx = new PrintingContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_printing);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(279);
			match(PRINT);
			setState(280);
			match(LEFTP);
			setState(283);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
			case 1:
				{
				setState(281);
				superexp();
				}
				break;
			case 2:
				{
				setState(282);
				match(CTE_P);
				}
				break;
			}
			setState(292);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__2) {
				{
				{
				setState(285);
				match(T__2);
				setState(288);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
				case 1:
					{
					setState(286);
					superexp();
					}
					break;
				case 2:
					{
					setState(287);
					match(CTE_P);
					}
					break;
				}
				}
				}
				setState(294);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(295);
			match(RIGHTP);
			setState(296);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ListfuncContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public TerminalNode CTE_N() { return getToken(unagiParser.CTE_N, 0); }
		public TerminalNode ID() { return getToken(unagiParser.ID, 0); }
		public FactorContext factor() {
			return getRuleContext(FactorContext.class,0);
		}
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public ListfuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listfunc; }
	}

	public final ListfuncContext listfunc() throws RecognitionException {
		ListfuncContext _localctx = new ListfuncContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_listfunc);
		int _la;
		try {
			setState(317);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__8:
			case T__9:
				enterOuterAlt(_localctx, 1);
				{
				setState(298);
				_la = _input.LA(1);
				if ( !(_la==T__8 || _la==T__9) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(299);
				match(LEFTP);
				setState(303);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,30,_ctx) ) {
				case 1:
					{
					setState(300);
					match(CTE_N);
					}
					break;
				case 2:
					{
					setState(301);
					match(ID);
					}
					break;
				case 3:
					{
					setState(302);
					factor();
					}
					break;
				}
				setState(305);
				match(RIGHTP);
				}
				break;
			case T__10:
				enterOuterAlt(_localctx, 2);
				{
				setState(306);
				match(T__10);
				setState(307);
				match(LEFTP);
				setState(311);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
				case 1:
					{
					setState(308);
					constant();
					}
					break;
				case 2:
					{
					setState(309);
					match(ID);
					}
					break;
				case 3:
					{
					setState(310);
					factor();
					}
					break;
				}
				setState(313);
				match(RIGHTP);
				}
				break;
			case T__11:
			case T__12:
				enterOuterAlt(_localctx, 3);
				{
				setState(314);
				_la = _input.LA(1);
				if ( !(_la==T__11 || _la==T__12) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(315);
				match(LEFTP);
				setState(316);
				match(RIGHTP);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SpecialContext extends ParserRuleContext {
		public DrawsquareContext drawsquare() {
			return getRuleContext(DrawsquareContext.class,0);
		}
		public DrawtriangleContext drawtriangle() {
			return getRuleContext(DrawtriangleContext.class,0);
		}
		public DrawrectangleContext drawrectangle() {
			return getRuleContext(DrawrectangleContext.class,0);
		}
		public DrawcircleContext drawcircle() {
			return getRuleContext(DrawcircleContext.class,0);
		}
		public RootContext root() {
			return getRuleContext(RootContext.class,0);
		}
		public PerimeterContext perimeter() {
			return getRuleContext(PerimeterContext.class,0);
		}
		public SpecialContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_special; }
	}

	public final SpecialContext special() throws RecognitionException {
		SpecialContext _localctx = new SpecialContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_special);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(325);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__15:
				{
				setState(319);
				drawsquare();
				}
				break;
			case T__16:
				{
				setState(320);
				drawtriangle();
				}
				break;
			case T__17:
				{
				setState(321);
				drawrectangle();
				}
				break;
			case T__18:
				{
				setState(322);
				drawcircle();
				}
				break;
			case T__13:
				{
				setState(323);
				root();
				}
				break;
			case T__14:
				{
				setState(324);
				perimeter();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class RootContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public SuperexpContext superexp() {
			return getRuleContext(SuperexpContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public RootContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_root; }
	}

	public final RootContext root() throws RecognitionException {
		RootContext _localctx = new RootContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_root);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(327);
			match(T__13);
			setState(328);
			match(LEFTP);
			setState(329);
			superexp();
			setState(330);
			match(RIGHTP);
			setState(331);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PerimeterContext extends ParserRuleContext {
		public List<TerminalNode> LEFTP() { return getTokens(unagiParser.LEFTP); }
		public TerminalNode LEFTP(int i) {
			return getToken(unagiParser.LEFTP, i);
		}
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public PerimeterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_perimeter; }
	}

	public final PerimeterContext perimeter() throws RecognitionException {
		PerimeterContext _localctx = new PerimeterContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_perimeter);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(333);
			match(T__14);
			setState(334);
			match(LEFTP);
			setState(335);
			superexp();
			setState(336);
			match(T__2);
			setState(337);
			superexp();
			setState(338);
			match(T__2);
			setState(339);
			superexp();
			setState(342);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(340);
				match(T__2);
				setState(341);
				superexp();
				}
			}

			setState(344);
			match(LEFTP);
			setState(345);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DrawsquareContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public ColorContext color() {
			return getRuleContext(ColorContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public DrawsquareContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_drawsquare; }
	}

	public final DrawsquareContext drawsquare() throws RecognitionException {
		DrawsquareContext _localctx = new DrawsquareContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_drawsquare);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(347);
			match(T__15);
			setState(348);
			match(LEFTP);
			setState(349);
			superexp();
			setState(350);
			match(T__2);
			setState(351);
			superexp();
			setState(352);
			match(T__2);
			setState(353);
			superexp();
			setState(354);
			match(T__2);
			setState(355);
			color();
			setState(356);
			match(RIGHTP);
			setState(357);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DrawtriangleContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public ColorContext color() {
			return getRuleContext(ColorContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public DrawtriangleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_drawtriangle; }
	}

	public final DrawtriangleContext drawtriangle() throws RecognitionException {
		DrawtriangleContext _localctx = new DrawtriangleContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_drawtriangle);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(359);
			match(T__16);
			setState(360);
			match(LEFTP);
			setState(361);
			superexp();
			setState(362);
			match(T__2);
			setState(363);
			superexp();
			setState(364);
			match(T__2);
			setState(365);
			superexp();
			setState(366);
			match(T__2);
			setState(367);
			superexp();
			setState(368);
			match(T__2);
			setState(369);
			superexp();
			setState(370);
			match(T__2);
			setState(371);
			color();
			setState(372);
			match(RIGHTP);
			setState(373);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DrawrectangleContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public ColorContext color() {
			return getRuleContext(ColorContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public DrawrectangleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_drawrectangle; }
	}

	public final DrawrectangleContext drawrectangle() throws RecognitionException {
		DrawrectangleContext _localctx = new DrawrectangleContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_drawrectangle);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(375);
			match(T__17);
			setState(376);
			match(LEFTP);
			setState(377);
			superexp();
			setState(378);
			match(T__2);
			setState(379);
			superexp();
			setState(380);
			match(T__2);
			setState(381);
			superexp();
			setState(382);
			match(T__2);
			setState(383);
			superexp();
			setState(384);
			match(T__2);
			setState(385);
			color();
			setState(386);
			match(RIGHTP);
			setState(387);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DrawcircleContext extends ParserRuleContext {
		public TerminalNode LEFTP() { return getToken(unagiParser.LEFTP, 0); }
		public List<SuperexpContext> superexp() {
			return getRuleContexts(SuperexpContext.class);
		}
		public SuperexpContext superexp(int i) {
			return getRuleContext(SuperexpContext.class,i);
		}
		public ColorContext color() {
			return getRuleContext(ColorContext.class,0);
		}
		public TerminalNode RIGHTP() { return getToken(unagiParser.RIGHTP, 0); }
		public DrawcircleContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_drawcircle; }
	}

	public final DrawcircleContext drawcircle() throws RecognitionException {
		DrawcircleContext _localctx = new DrawcircleContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_drawcircle);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(389);
			match(T__18);
			setState(390);
			match(LEFTP);
			setState(391);
			superexp();
			setState(392);
			match(T__2);
			setState(393);
			superexp();
			setState(394);
			match(T__2);
			setState(395);
			superexp();
			setState(396);
			match(T__2);
			setState(397);
			color();
			setState(398);
			match(RIGHTP);
			setState(399);
			match(T__3);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ColorContext extends ParserRuleContext {
		public ColorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_color; }
	}

	public final ColorContext color() throws RecognitionException {
		ColorContext _localctx = new ColorContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_color);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(401);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__22))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3B\u0196\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\3\2\3\2\3\2\3\2\7\2?\n\2\f\2"+
		"\16\2B\13\2\3\2\7\2E\n\2\f\2\16\2H\13\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\7"+
		"\3Q\n\3\f\3\16\3T\13\3\3\3\3\3\3\4\3\4\3\4\7\4[\n\4\f\4\16\4^\13\4\3\4"+
		"\7\4a\n\4\f\4\16\4d\13\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5"+
		"\5q\n\5\3\6\3\6\3\6\3\6\3\6\3\6\7\6y\n\6\f\6\16\6|\13\6\3\6\3\6\3\6\3"+
		"\6\3\6\3\6\3\6\3\6\3\6\3\6\7\6\u0088\n\6\f\6\16\6\u008b\13\6\3\6\3\6\5"+
		"\6\u008f\n\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\7\b\u009e"+
		"\n\b\f\b\16\b\u00a1\13\b\3\b\7\b\u00a4\n\b\f\b\16\b\u00a7\13\b\3\b\3\b"+
		"\3\t\3\t\5\t\u00ad\n\t\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3"+
		"\f\3\f\3\f\3\f\7\f\u00bd\n\f\f\f\16\f\u00c0\13\f\5\f\u00c2\n\f\3\r\3\r"+
		"\3\r\5\r\u00c7\n\r\3\16\3\16\3\16\5\16\u00cc\n\16\3\17\3\17\3\17\5\17"+
		"\u00d1\n\17\3\20\3\20\3\20\5\20\u00d6\n\20\3\21\3\21\3\21\3\21\3\21\5"+
		"\21\u00dd\n\21\3\21\3\21\3\21\3\21\7\21\u00e3\n\21\f\21\16\21\u00e6\13"+
		"\21\3\21\3\21\3\21\5\21\u00eb\n\21\5\21\u00ed\n\21\3\22\3\22\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\7\23\u00f7\n\23\f\23\16\23\u00fa\13\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\7\23\u0103\n\23\f\23\16\23\u0106\13\23\3\23"+
		"\3\23\7\23\u010a\n\23\f\23\16\23\u010d\13\23\3\23\3\23\3\23\7\23\u0112"+
		"\n\23\f\23\16\23\u0115\13\23\3\23\5\23\u0118\n\23\3\24\3\24\3\24\3\24"+
		"\5\24\u011e\n\24\3\24\3\24\3\24\5\24\u0123\n\24\7\24\u0125\n\24\f\24\16"+
		"\24\u0128\13\24\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\5\25\u0132\n\25"+
		"\3\25\3\25\3\25\3\25\3\25\3\25\5\25\u013a\n\25\3\25\3\25\3\25\3\25\5\25"+
		"\u0140\n\25\3\26\3\26\3\26\3\26\3\26\3\26\5\26\u0148\n\26\3\27\3\27\3"+
		"\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\5\30\u0159"+
		"\n\30\3\30\3\30\3\30\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32"+
		"\3\32\3\32\3\32\3\32\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34\3\34"+
		"\3\34\3\34\3\35\3\35\3\35\2\2\36\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36"+
		" \"$&(*,.\60\62\64\668\2\13\4\2*.;;\3\29:\3\2\34!\3\2\"#\3\2$%\4\2\t\n"+
		"?B\3\2\13\f\3\2\16\17\3\2\26\31\2\u01a9\2:\3\2\2\2\4K\3\2\2\2\6W\3\2\2"+
		"\2\bp\3\2\2\2\n\u008e\3\2\2\2\f\u0090\3\2\2\2\16\u0095\3\2\2\2\20\u00ac"+
		"\3\2\2\2\22\u00ae\3\2\2\2\24\u00b0\3\2\2\2\26\u00c1\3\2\2\2\30\u00c3\3"+
		"\2\2\2\32\u00c8\3\2\2\2\34\u00cd\3\2\2\2\36\u00d2\3\2\2\2 \u00ec\3\2\2"+
		"\2\"\u00ee\3\2\2\2$\u00f0\3\2\2\2&\u0119\3\2\2\2(\u013f\3\2\2\2*\u0147"+
		"\3\2\2\2,\u0149\3\2\2\2.\u014f\3\2\2\2\60\u015d\3\2\2\2\62\u0169\3\2\2"+
		"\2\64\u0179\3\2\2\2\66\u0187\3\2\2\28\u0193\3\2\2\2:;\7\3\2\2;<\7>\2\2"+
		"<@\7\4\2\2=?\5\4\3\2>=\3\2\2\2?B\3\2\2\2@>\3\2\2\2@A\3\2\2\2AF\3\2\2\2"+
		"B@\3\2\2\2CE\5\16\b\2DC\3\2\2\2EH\3\2\2\2FD\3\2\2\2FG\3\2\2\2GI\3\2\2"+
		"\2HF\3\2\2\2IJ\5\6\4\2J\3\3\2\2\2KL\7\65\2\2LM\5\22\n\2MR\7>\2\2NO\7\5"+
		"\2\2OQ\7>\2\2PN\3\2\2\2QT\3\2\2\2RP\3\2\2\2RS\3\2\2\2SU\3\2\2\2TR\3\2"+
		"\2\2UV\7\6\2\2V\5\3\2\2\2WX\7\7\2\2X\\\7(\2\2Y[\5\4\3\2ZY\3\2\2\2[^\3"+
		"\2\2\2\\Z\3\2\2\2\\]\3\2\2\2]b\3\2\2\2^\\\3\2\2\2_a\5\b\5\2`_\3\2\2\2"+
		"ad\3\2\2\2b`\3\2\2\2bc\3\2\2\2ce\3\2\2\2db\3\2\2\2ef\7)\2\2f\7\3\2\2\2"+
		"gq\5\f\7\2hq\5$\23\2iq\5&\24\2jq\5*\26\2kq\5\n\6\2lm\7\67\2\2mn\5\30\r"+
		"\2no\7\6\2\2oq\3\2\2\2pg\3\2\2\2ph\3\2\2\2pi\3\2\2\2pj\3\2\2\2pk\3\2\2"+
		"\2pl\3\2\2\2q\t\3\2\2\2rs\7\62\2\2st\7&\2\2tu\5\30\r\2uv\7\'\2\2vz\7("+
		"\2\2wy\5\b\5\2xw\3\2\2\2y|\3\2\2\2zx\3\2\2\2z{\3\2\2\2{}\3\2\2\2|z\3\2"+
		"\2\2}~\7)\2\2~\u008f\3\2\2\2\177\u0080\7\63\2\2\u0080\u0081\7&\2\2\u0081"+
		"\u0082\5\30\r\2\u0082\u0083\7\32\2\2\u0083\u0084\5\30\r\2\u0084\u0085"+
		"\7\'\2\2\u0085\u0089\7(\2\2\u0086\u0088\5\b\5\2\u0087\u0086\3\2\2\2\u0088"+
		"\u008b\3\2\2\2\u0089\u0087\3\2\2\2\u0089\u008a\3\2\2\2\u008a\u008c\3\2"+
		"\2\2\u008b\u0089\3\2\2\2\u008c\u008d\7)\2\2\u008d\u008f\3\2\2\2\u008e"+
		"r\3\2\2\2\u008e\177\3\2\2\2\u008f\13\3\2\2\2\u0090\u0091\7>\2\2\u0091"+
		"\u0092\7\33\2\2\u0092\u0093\5\30\r\2\u0093\u0094\7\6\2\2\u0094\r\3\2\2"+
		"\2\u0095\u0096\78\2\2\u0096\u0097\5\20\t\2\u0097\u0098\7>\2\2\u0098\u0099"+
		"\7&\2\2\u0099\u009a\5\26\f\2\u009a\u009b\7\'\2\2\u009b\u009f\7(\2\2\u009c"+
		"\u009e\5\4\3\2\u009d\u009c\3\2\2\2\u009e\u00a1\3\2\2\2\u009f\u009d\3\2"+
		"\2\2\u009f\u00a0\3\2\2\2\u00a0\u00a5\3\2\2\2\u00a1\u009f\3\2\2\2\u00a2"+
		"\u00a4\5\b\5\2\u00a3\u00a2\3\2\2\2\u00a4\u00a7\3\2\2\2\u00a5\u00a3\3\2"+
		"\2\2\u00a5\u00a6\3\2\2\2\u00a6\u00a8\3\2\2\2\u00a7\u00a5\3\2\2\2\u00a8"+
		"\u00a9\7)\2\2\u00a9\17\3\2\2\2\u00aa\u00ad\7\64\2\2\u00ab\u00ad\5\22\n"+
		"\2\u00ac\u00aa\3\2\2\2\u00ac\u00ab\3\2\2\2\u00ad\21\3\2\2\2\u00ae\u00af"+
		"\t\2\2\2\u00af\23\3\2\2\2\u00b0\u00b1\7;\2\2\u00b1\u00b2\7\34\2\2\u00b2"+
		"\u00b3\5\22\n\2\u00b3\u00b4\7\35\2\2\u00b4\25\3\2\2\2\u00b5\u00b6\5\22"+
		"\n\2\u00b6\u00b7\7>\2\2\u00b7\u00be\3\2\2\2\u00b8\u00b9\7\5\2\2\u00b9"+
		"\u00ba\5\22\n\2\u00ba\u00bb\7>\2\2\u00bb\u00bd\3\2\2\2\u00bc\u00b8\3\2"+
		"\2\2\u00bd\u00c0\3\2\2\2\u00be\u00bc\3\2\2\2\u00be\u00bf\3\2\2\2\u00bf"+
		"\u00c2\3\2\2\2\u00c0\u00be\3\2\2\2\u00c1\u00b5\3\2\2\2\u00c1\u00c2\3\2"+
		"\2\2\u00c2\27\3\2\2\2\u00c3\u00c6\5\32\16\2\u00c4\u00c5\t\3\2\2\u00c5"+
		"\u00c7\5\30\r\2\u00c6\u00c4\3\2\2\2\u00c6\u00c7\3\2\2\2\u00c7\31\3\2\2"+
		"\2\u00c8\u00cb\5\34\17\2\u00c9\u00ca\t\4\2\2\u00ca\u00cc\5\32\16\2\u00cb"+
		"\u00c9\3\2\2\2\u00cb\u00cc\3\2\2\2\u00cc\33\3\2\2\2\u00cd\u00d0\5\36\20"+
		"\2\u00ce\u00cf\t\5\2\2\u00cf\u00d1\5\34\17\2\u00d0\u00ce\3\2\2\2\u00d0"+
		"\u00d1\3\2\2\2\u00d1\35\3\2\2\2\u00d2\u00d5\5 \21\2\u00d3\u00d4\t\6\2"+
		"\2\u00d4\u00d6\5\36\20\2\u00d5\u00d3\3\2\2\2\u00d5\u00d6\3\2\2\2\u00d6"+
		"\37\3\2\2\2\u00d7\u00d8\7&\2\2\u00d8\u00d9\5\30\r\2\u00d9\u00da\7\'\2"+
		"\2\u00da\u00ed\3\2\2\2\u00db\u00dd\t\5\2\2\u00dc\u00db\3\2\2\2\u00dc\u00dd"+
		"\3\2\2\2\u00dd\u00de\3\2\2\2\u00de\u00ed\5\"\22\2\u00df\u00ea\7>\2\2\u00e0"+
		"\u00e4\7&\2\2\u00e1\u00e3\5\30\r\2\u00e2\u00e1\3\2\2\2\u00e3\u00e6\3\2"+
		"\2\2\u00e4\u00e2\3\2\2\2\u00e4\u00e5\3\2\2\2\u00e5\u00e7\3\2\2\2\u00e6"+
		"\u00e4\3\2\2\2\u00e7\u00eb\7\'\2\2\u00e8\u00e9\7\b\2\2\u00e9\u00eb\5("+
		"\25\2\u00ea\u00e0\3\2\2\2\u00ea\u00e8\3\2\2\2\u00ea\u00eb\3\2\2\2\u00eb"+
		"\u00ed\3\2\2\2\u00ec\u00d7\3\2\2\2\u00ec\u00dc\3\2\2\2\u00ec\u00df\3\2"+
		"\2\2\u00ed!\3\2\2\2\u00ee\u00ef\t\7\2\2\u00ef#\3\2\2\2\u00f0\u00f1\7/"+
		"\2\2\u00f1\u00f2\7&\2\2\u00f2\u00f3\5\30\r\2\u00f3\u00f4\7\'\2\2\u00f4"+
		"\u00f8\7(\2\2\u00f5\u00f7\5\b\5\2\u00f6\u00f5\3\2\2\2\u00f7\u00fa\3\2"+
		"\2\2\u00f8\u00f6\3\2\2\2\u00f8\u00f9\3\2\2\2\u00f9\u00fb\3\2\2\2\u00fa"+
		"\u00f8\3\2\2\2\u00fb\u010b\7)\2\2\u00fc\u00fd\7\60\2\2\u00fd\u00fe\7&"+
		"\2\2\u00fe\u00ff\5\30\r\2\u00ff\u0100\7\'\2\2\u0100\u0104\7(\2\2\u0101"+
		"\u0103\5\b\5\2\u0102\u0101\3\2\2\2\u0103\u0106\3\2\2\2\u0104\u0102\3\2"+
		"\2\2\u0104\u0105\3\2\2\2\u0105\u0107\3\2\2\2\u0106\u0104\3\2\2\2\u0107"+
		"\u0108\7)\2\2\u0108\u010a\3\2\2\2\u0109\u00fc\3\2\2\2\u010a\u010d\3\2"+
		"\2\2\u010b\u0109\3\2\2\2\u010b\u010c\3\2\2\2\u010c\u0117\3\2\2\2\u010d"+
		"\u010b\3\2\2\2\u010e\u010f\7\61\2\2\u010f\u0113\7(\2\2\u0110\u0112\5\b"+
		"\5\2\u0111\u0110\3\2\2\2\u0112\u0115\3\2\2\2\u0113\u0111\3\2\2\2\u0113"+
		"\u0114\3\2\2\2\u0114\u0116\3\2\2\2\u0115\u0113\3\2\2\2\u0116\u0118\7)"+
		"\2\2\u0117\u010e\3\2\2\2\u0117\u0118\3\2\2\2\u0118%\3\2\2\2\u0119\u011a"+
		"\7\66\2\2\u011a\u011d\7&\2\2\u011b\u011e\5\30\r\2\u011c\u011e\7B\2\2\u011d"+
		"\u011b\3\2\2\2\u011d\u011c\3\2\2\2\u011e\u0126\3\2\2\2\u011f\u0122\7\5"+
		"\2\2\u0120\u0123\5\30\r\2\u0121\u0123\7B\2\2\u0122\u0120\3\2\2\2\u0122"+
		"\u0121\3\2\2\2\u0123\u0125\3\2\2\2\u0124\u011f\3\2\2\2\u0125\u0128\3\2"+
		"\2\2\u0126\u0124\3\2\2\2\u0126\u0127\3\2\2\2\u0127\u0129\3\2\2\2\u0128"+
		"\u0126\3\2\2\2\u0129\u012a\7\'\2\2\u012a\u012b\7\6\2\2\u012b\'\3\2\2\2"+
		"\u012c\u012d\t\b\2\2\u012d\u0131\7&\2\2\u012e\u0132\7?\2\2\u012f\u0132"+
		"\7>\2\2\u0130\u0132\5 \21\2\u0131\u012e\3\2\2\2\u0131\u012f\3\2\2\2\u0131"+
		"\u0130\3\2\2\2\u0132\u0133\3\2\2\2\u0133\u0140\7\'\2\2\u0134\u0135\7\r"+
		"\2\2\u0135\u0139\7&\2\2\u0136\u013a\5\"\22\2\u0137\u013a\7>\2\2\u0138"+
		"\u013a\5 \21\2\u0139\u0136\3\2\2\2\u0139\u0137\3\2\2\2\u0139\u0138\3\2"+
		"\2\2\u013a\u013b\3\2\2\2\u013b\u0140\7\'\2\2\u013c\u013d\t\t\2\2\u013d"+
		"\u013e\7&\2\2\u013e\u0140\7\'\2\2\u013f\u012c\3\2\2\2\u013f\u0134\3\2"+
		"\2\2\u013f\u013c\3\2\2\2\u0140)\3\2\2\2\u0141\u0148\5\60\31\2\u0142\u0148"+
		"\5\62\32\2\u0143\u0148\5\64\33\2\u0144\u0148\5\66\34\2\u0145\u0148\5,"+
		"\27\2\u0146\u0148\5.\30\2\u0147\u0141\3\2\2\2\u0147\u0142\3\2\2\2\u0147"+
		"\u0143\3\2\2\2\u0147\u0144\3\2\2\2\u0147\u0145\3\2\2\2\u0147\u0146\3\2"+
		"\2\2\u0148+\3\2\2\2\u0149\u014a\7\20\2\2\u014a\u014b\7&\2\2\u014b\u014c"+
		"\5\30\r\2\u014c\u014d\7\'\2\2\u014d\u014e\7\6\2\2\u014e-\3\2\2\2\u014f"+
		"\u0150\7\21\2\2\u0150\u0151\7&\2\2\u0151\u0152\5\30\r\2\u0152\u0153\7"+
		"\5\2\2\u0153\u0154\5\30\r\2\u0154\u0155\7\5\2\2\u0155\u0158\5\30\r\2\u0156"+
		"\u0157\7\5\2\2\u0157\u0159\5\30\r\2\u0158\u0156\3\2\2\2\u0158\u0159\3"+
		"\2\2\2\u0159\u015a\3\2\2\2\u015a\u015b\7&\2\2\u015b\u015c\7\6\2\2\u015c"+
		"/\3\2\2\2\u015d\u015e\7\22\2\2\u015e\u015f\7&\2\2\u015f\u0160\5\30\r\2"+
		"\u0160\u0161\7\5\2\2\u0161\u0162\5\30\r\2\u0162\u0163\7\5\2\2\u0163\u0164"+
		"\5\30\r\2\u0164\u0165\7\5\2\2\u0165\u0166\58\35\2\u0166\u0167\7\'\2\2"+
		"\u0167\u0168\7\6\2\2\u0168\61\3\2\2\2\u0169\u016a\7\23\2\2\u016a\u016b"+
		"\7&\2\2\u016b\u016c\5\30\r\2\u016c\u016d\7\5\2\2\u016d\u016e\5\30\r\2"+
		"\u016e\u016f\7\5\2\2\u016f\u0170\5\30\r\2\u0170\u0171\7\5\2\2\u0171\u0172"+
		"\5\30\r\2\u0172\u0173\7\5\2\2\u0173\u0174\5\30\r\2\u0174\u0175\7\5\2\2"+
		"\u0175\u0176\58\35\2\u0176\u0177\7\'\2\2\u0177\u0178\7\6\2\2\u0178\63"+
		"\3\2\2\2\u0179\u017a\7\24\2\2\u017a\u017b\7&\2\2\u017b\u017c\5\30\r\2"+
		"\u017c\u017d\7\5\2\2\u017d\u017e\5\30\r\2\u017e\u017f\7\5\2\2\u017f\u0180"+
		"\5\30\r\2\u0180\u0181\7\5\2\2\u0181\u0182\5\30\r\2\u0182\u0183\7\5\2\2"+
		"\u0183\u0184\58\35\2\u0184\u0185\7\'\2\2\u0185\u0186\7\6\2\2\u0186\65"+
		"\3\2\2\2\u0187\u0188\7\25\2\2\u0188\u0189\7&\2\2\u0189\u018a\5\30\r\2"+
		"\u018a\u018b\7\5\2\2\u018b\u018c\5\30\r\2\u018c\u018d\7\5\2\2\u018d\u018e"+
		"\5\30\r\2\u018e\u018f\7\5\2\2\u018f\u0190\58\35\2\u0190\u0191\7\'\2\2"+
		"\u0191\u0192\7\6\2\2\u0192\67\3\2\2\2\u0193\u0194\t\n\2\2\u01949\3\2\2"+
		"\2%@FR\\bpz\u0089\u008e\u009f\u00a5\u00ac\u00be\u00c1\u00c6\u00cb\u00d0"+
		"\u00d5\u00dc\u00e4\u00ea\u00ec\u00f8\u0104\u010b\u0113\u0117\u011d\u0122"+
		"\u0126\u0131\u0139\u013f\u0147\u0158";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}