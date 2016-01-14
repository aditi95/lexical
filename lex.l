

// There may be some flexer directives here

%%
[ \t]                                    //skip
VOID|FLOAT|INT								return TYPE_SPECIFIER;
IF|ELSE|WHILE|FOR|RETURN                    return KEYWORD;
[[:alpha:]_][[:alnum:]_]*					return IDENTIFIER;
([1-9][0-9]*)|(0[bB][01]*)|(0[0-7]*)|(0[xX][0-9a-fA-F]*)	return INT_CONST;
([1-9][0-9]*|0)"."[[:digit:]]+[eE]([+-]?)[[:digit:]]+	return FLOAT_CONST;
"\""[[:alnum:] \n\t\\"\""]*"\""		return STRING_LITERAL;
"=="										return EQ_OP;
"!="										return NE_OP;
"<="										return LE_OP;
">="										return GE_OP;
"&&"										return AND_OP;
"||"										return OR_OP;
"!"											return '!';
"="											return '=';
"-"											return '-';
"+"                                         return '+';
"*"											return '*';
"/"											return '/';
","                                         return ',';
"<"											return '<';
">"											return '>';
"("                                         return '(';
")"											return ')';
"{"                                         return '{';
"}"                                         return '}';
"["                                         return '[';
"]"                                         return ']';
";"                                         return ';';
"\n"                                        return '\n';
.                                           return OTHERS;    
                                      