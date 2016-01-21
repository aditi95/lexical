%debug
%scanner Scanner.h
%scanner-token-function d_scanner.lex()

%token VOID INT FLOAT IF ELSE WHILE FOR RETURN IDENTIFIER INT_CONST 
%token FLOAT_CONST STRING_LITERAL EQ_OP NE_OP LE_OP GE_OP AND_OP OR_OP INC_OP 


%%

translation_unit:
                function_defination
              | translation_unit function_defination
              ;

function_defination:
                type_specifier fun_declarator compound_statement
              	;

type_specifier:
          		VOID 	
        		| INT   
						| FLOAT 
						;        

fun_declarator:
              IDENTIFIER '(' parameter_list ')'
            |	IDENTIFIER '(' ')'
            ;

parameter_list:
							parameter_declaration
						| parameter_list ',' parameter_declaration
						;

parameter_declaration:
											type_specifier declarator
											;

declarator:
					IDENTIFIER
				| declarator '[' constant_expresion ']'
				;

constant_expresion:
									INT_CONST
								|	FLOAT_CONST
								;

compound_statement:
									'{' '}'
								|	'{' statement_list '}'
								|	'{' declaration_list statement_list '}'
								;

statement_list:
							statement
						| statement_list statement
						;

statement:
					'{' statement_list '}'
				| selection_statement
				| iteration_statement
				| assignment_statement
				| RETURN expression ';'
				;

assignment_statement:
										';'
									|	l_expression '=' expression ';'
									;

expression: 
          logical_and_expression 
        | expression OR_OP logical_and_expression
        ;


logical_and_expression: 
          						equality_expression
        						| logical_and_expression AND_OP equality_expression 
        						;

equality_expression: 
          					relational_expression 
        					| equality_expression EQ_OP relational_expression 	
									| equality_expression NE_OP relational_expression
									;

relational_expression: 
          						additive_expression
        						| relational_expression '<' additive_expression 
										| relational_expression '>' additive_expression 
										| relational_expression LE_OP additive_expression 
        						| relational_expression GE_OP additive_expression
        						;	

additive_expression: 
          					multiplicative_expression
									| additive_expression '+' multiplicative_expression 
									| additive_expression '-' multiplicative_expression 
									;

multiplicative_expression: 
          								unary_expression
												| multiplicative_expression '*' unary_expression 
												| multiplicative_expression '/' unary_expression 
												;

unary_expression: 
          			postfix_expression  				
							| unary_operator postfix_expression
							;	

postfix_expression: 
          				primary_expression
        				| IDENTIFIER '(' ')'
								| IDENTIFIER '(' expression_list ')' 
								| l_expression INC_OP
								;

primary_expression: 
          				l_expression
        				| l_expression '=' expression 
								| INT_CONST
								| FLOAT_CONST
        				| STRING_LITERAL
								| '(' expression ')' 	
								;

l_expression: 
          	IDENTIFIER
        	| l_expression '[' expression ']' 	
        	;

expression_list: 
          			expression
        			| expression_list ',' expression
        			;

unary_operator: 
          		'-'	
						| '!' 	
						;

selection_statement: 
          					IF '(' expression ')' statement ELSE statement 
          					;

iteration_statement: 
          					WHILE '(' expression ')' statement 	
        					| FOR '(' expression ';' expression ';' expression ')' statement
        					;

declaration_list: 
         				declaration  					
        			|	declaration_list declaration
        			;

declaration: 
          	type_specifier declarator_list';'
          	;

declarator_list: 
          			declarator
							| declarator_list ',' declarator 
							;