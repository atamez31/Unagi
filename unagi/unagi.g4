grammar unagi;

// Grammar
program: 'program' ID ':' declaration* functions* main;

declaration: VAR type ID (',' ID)* ';';

main: 'start' LEFTBRACE declaration* statement* RIGHTBRACE;

statement:
assigment
| condition
| printing
| special
| loop
| RETURN superexp ';';

loop:
WHILE LEFTP superexp RIGHTP LEFTBRACE statement* RIGHTBRACE
| FOR LEFTP superexp ARROW superexp RIGHTP LEFTBRACE statement* RIGHTBRACE;

assigment: ID ASG superexp ';';

functions:
FUNC functype ID LEFTP argfunc RIGHTP LEFTBRACE declaration* statement* RIGHTBRACE;

functype: EMPTY | type;

type: NUM | DECIMAL | BOOL | CHAR | PHRASE | LIST;

list: LIST LESS type MORETHAN;

argfunc: ((type ID) (',' type ID)*)?;

superexp: expression ((AND | OR) expression)?;

expression:
exp (
(
MORETHAN
| LESS
| MOREOREQUAL
| LESSOREQUAL
| 'NOTEQUAL'
| 'EQUAL'
) exp
)?;

exp: term ((SUM | SUB) exp)?;

term: factor ((MULT | DIV) term)?;

factor:
LEFTP superexp RIGHTP
| (SUM | SUB)? constant
| ID (LEFTP (superexp)* RIGHTP | '.' listfunc)?;

constant: CTE_N | CTE_D | 'true' | 'false' | CTE_C | CTE_P;

condition:
IF LEFTP superexp RIGHTP LEFTBRACE statement* RIGHTBRACE (
ELIF LEFTP superexp RIGHTP LEFTBRACE statement* RIGHTBRACE
)* (ELSE LEFTBRACE statement* RIGHTBRACE)?;

printing:
PRINT LEFTP (superexp | CTE_P) (',' (superexp | CTE_P))* RIGHTP ';';

listfunc: ('get' | 'remove') LEFTP (CTE_N | ID | factor) RIGHTP
| 'add' LEFTP (constant | ID | factor) RIGHTP
| ('first' | 'last') LEFTP RIGHTP;

special: (
drawsquare
| drawtriangle
| drawrectangle
| drawcircle
| root
| perimeter
);

root: 'root' LEFTP superexp RIGHTP ';';

perimeter:
'perimeter' LEFTP superexp ',' superexp ',' superexp (
',' superexp
)? LEFTP ';';

drawsquare:
'drawSquare' LEFTP superexp ',' superexp ',' superexp ',' color RIGHTP ';';

drawtriangle:
'drawTriangle' LEFTP superexp ',' superexp ',' superexp ',' superexp ',' superexp ',' color
RIGHTP ';';

drawrectangle:
'drawRectangle' LEFTP superexp ',' superexp ',' superexp ',' superexp ',' color RIGHTP ';';

drawcircle:
'drawCircle' LEFTP superexp ',' superexp ',' superexp ',' color RIGHTP ';';

color: 'red' | 'blue' | 'green' | 'yellow';

// Regex
ARROW: '->';
ASG: '=';
LESS: '<';
MORETHAN: '>';
LESSOREQUAL: '<=';
MOREOREQUAL: '>=';
EQUAL: '==';
NOTEQUAL: '<>';
SUM: '+';
SUB: '-';
MULT: '*';
DIV: '/';
LEFTP: '(';
RIGHTP: ')';
LEFTBRACE: '{';
RIGHTBRACE: '}';
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
