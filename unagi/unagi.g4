grammar unagi;

// Grammar
program: 'program' ID ':' declaration* functions* main;

declaration: VAR type ID (',' ID)* ';';

main: 'start' '{' declaration* statement* '}';

statement:
assigment
| condition
| printing
| special
| loop
| RETURN superexp ';';

loop:
WHILE '(' superexp ')' '{' statement* '}'
| FOR '(' superexp '->' superexp ')' '{' statement* '}';

assigment: ID '=' superexp ';';

functions:
FUNC functype ID '(' argfunc ')' '{' declaration* statement* '}';

functype: EMPTY | type;

type: NUM | DECIMAL | BOOL | CHAR | PHRASE | LIST;

list: LIST '<' type '>';

argfunc: ((type ID) (',' type ID)*)?;

superexp: expression ((AND | OR) expression)?;

expression: exp (('>' | '<' | '>=' | '<=' | '<>' | '==') exp)?;

exp: term (('+' | '-') term)*;

term: factor (('*' | '/') factor)*;

factor:
'(' superexp ')'
| ('+' | '-')? constant
| ID ('(' (superexp)* ')' | '.' listfunc)?;

constant: CTE_N | CTE_D | 'true' | 'false' | CTE_C | CTE_P;

condition:
IF '(' superexp ')' '{' statement* '}' (ELIF '(' superexp ')' '{' statement* '}')* (
ELSE '{' statement* '}'
)?;

printing:
PRINT '(' (superexp | CTE_P) (',' (superexp | CTE_P))* ')' ';';

listfunc: ('get' | 'remove') '(' (CTE_N | ID | factor) ')'
| 'add' '(' (constant | ID | factor) ')'
| ('first' | 'last') '(' ')';

special: (
drawsquare
| drawtriangle
| drawrectangle
| drawcircle
| root
| perimeter
);

root: 'root' '(' superexp ')' ';';

perimeter:
'perimeter' '(' superexp ',' superexp ',' superexp (
',' superexp
)? ')' ';';

drawsquare:
'drawSquare' '(' superexp ',' superexp ',' superexp ',' color ')' ';';

drawtriangle:
'drawTriangle' '(' superexp ',' superexp ',' superexp ',' superexp ',' superexp ',' color ')'
';';

drawrectangle:
'drawRectangle' '(' superexp ',' superexp ',' superexp ',' superexp ',' color ')' ';';

drawcircle:
'drawCircle' '(' superexp ',' superexp ',' superexp ',' color ')' ';';

color: 'red' | 'blue' | 'green' | 'yellow';

// Regex
NUM: 'num';
DECIMAL: 'decimal';
BOOL: 'bool';
CHAR: 'char';
PHRASE: 'phrase';
IF: 'if';
ELIF: 'elif';
ELSE: 'else';
WHILE: 'while';
FOR: 'for';
EMPTY: 'empty';
VAR: 'var';
PRINT: 'print';
RETURN: 'return';
FUNC: 'func';
AND: 'and';
OR: 'or';
LIST: 'list';
WHITESPACE: ([ \t]+ | ' ') -> skip;
NEWLINE: ( '\r' '\n'? | '\n') -> skip;
ID: [A-z][A-z0-9]*;
CTE_N: [0-9]+;
CTE_D: [0-9]+ '.' [0-9]+;
CTE_C: '\'' . '\'';
CTE_P: '"' (.)*? '"';
