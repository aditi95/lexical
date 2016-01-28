

// There may be some flexer directives here

%%
[ \t\n]                                    //skip
void														return Parser::VOID;
int															return Parser::INT;
float														return Parser::FLOAT;
if 						                    				return Parser::IF;
else 					                    				return Parser::ELSE;
while		                    							return Parser::WHILE;
for 					                    				return Parser::FOR;
return 														return Parser::RETURN;
[[:alpha:]_][[:alnum:]_]*									return Parser::IDENTIFIER;
([1-9][0-9]*)|(0[bB][01]*)|(0[0-7]*)|(0[xX][0-9a-fA-F]*)	return Parser::INT_CONST;
([0-9]+)"."[[:digit:]]*([eE][+-]?)?[[:digit:]]*				return Parser::FLOAT_CONST;
"\""[-[:alnum:] \n\t\\"\""]*"\""							return Parser::STRING_LITERAL;
"=="														return Parser::EQ_OP;
"!="														return Parser::NE_OP;
"<="														return Parser::LE_OP;
">="														return Parser::GE_OP;
"&&"														return Parser::AND_OP;
"||"														return Parser::OR_OP;
"++"														return Parser::INC_OP;
"!"															return '!';
"="															return '=';
"-"															return '-';
"+"                                         				return '+';
"*"															return '*';
"/"															return '/';
","                                         				return ',';
"<"															return '<';
">"															return '>';
"("                                         				return '(';
")"															return ')';
"{"                                         				return '{';
"}"                                         				return '}';
"["                                         				return '[';
"]"                                         				return ']';
";"                                         				return ';';
.                                             
                                      
