#include <iostream>
#include "Scanner.h"
using namespace std;
int main() {
	Scanner scanner;   // define a Scanner object
	while (int token = scanner.lex()) // get all tokens
	{
		string const &text = scanner.matched();
		switch (token) {
		case Scanner::TYPE_SPECIFIER:
			cout << "TYPE_SPECIFIER: " << text << '\n';
			break;
		case Scanner::KEYWORD:
			cout << "KEYWORD: " << text << '\n';
			break;
		case Scanner::IDENTIFIER:
			cout << "IDENTIFIER: " << text << '\n';
			break;
		case Scanner::INT_CONST:
			cout << "INT_CONST: " << text << '\n';
			break;
		case Scanner::FLOAT_CONST:
			cout << "FLOAT_CONST: " << text << '\n';
			break;
		case Scanner::EQ_OP:
            cout << "EQ_OP: " << text << '\n';
			break;
		case Scanner::NE_OP:
			cout << "NE_OP: " << text << '\n';
			break;
		case Scanner::LE_OP:
            cout << "LE_OP: " << text << '\n';
			break;
		case Scanner::GE_OP:
			cout << "GE_OP: " << text << '\n';
			break;
		case Scanner::AND_OP:
			cout << "AND_OP: " << text << '\n';
			break;
		case Scanner::OR_OP:
            cout << "OR_OP: " << text << '\n';
			break;
		case '!':
			cout << "not: " << text << '\n';
			break;
		case '=':
			cout << "assign: " << text << '\n';
			break;
		case '+':
			cout << "plus: " << text << '\n';
			break;
		case '-':
			cout << "sub: " << text << '\n';
			break;
		case '*':
			cout << "mul: " << text << '\n';
			break;
		case '/':
			cout << "divide: " << text << '\n';
			break;
		case '<':
			cout << "LessThan: " << text << '\n';
			break;
		case '>':
			cout << "GreaterThan: " << text << '\n';
			break;
		case ',':
			cout << "comma: " << text << '\n';
			break;
		case '(':
			cout << "lparen: " << text << '\n';
			break;
		case ')':
			cout << "rparen: " << text << '\n';
			break;
		case '{':
			cout << "lbrace: " << text << '\n';
			break;
		case '}':
			cout << "rbrace: " << text << '\n';
			break;
		case '[':
			cout << "lsquare: " << text << '\n';
			break;
		case ']':
			cout << "rsquare: " << text << '\n';
			break;
		case ';':
			cout << "semicolon: " << text << '\n';
			break;
		case Scanner::STRING_LITERAL:
			cout << "String: " << text << '\n';
			break;
		case Scanner::OTHERS:
			cout << "OTHERS: `" << text << "'\n";
		}
	}
}







/*#include <iostream>
#include "Scanner.h"
#include "Parser.h"
using namespace std;
int main(int argc, char** arg) {
	Parser parser;
	parser.parse();
}*/

