%{
#include <stdio.h>
%}

%%
"#include<stdio.h>" { printf("%s : HEADER FILE\n", yytext); }
"int" { printf("%s : KEYWORD\n", yytext); }
"float" { printf("%s : KEYWORD\n", yytext); }
"char" { printf("%s : KEYWORD\n", yytext); }
"double" { printf("%s : KEYWORD\n", yytext); }
"void" { printf("%s : KEYWORD\n", yytext); }
"if" { printf("%s : KEYWORD\n", yytext); }
"else" { printf("%s : KEYWORD\n", yytext); }
"for" { printf("%s : KEYWORD\n", yytext); }
"while" { printf("%s : KEYWORD\n", yytext); }
"return" { printf("%s : KEYWORD\n", yytext); }
[0-9]+ { printf("%s : CONSTANT\n", yytext); }
\"[^\"]*\" { printf("%s : STRING\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("%s : IDENTIFIER\n", yytext); }
"==" { printf("%s : OPERATOR\n", yytext); }
"!=" { printf("%s : OPERATOR\n", yytext); }
"<=" { printf("%s : OPERATOR\n", yytext); }
">=" { printf("%s : OPERATOR\n", yytext); }
"+" { printf("%s : OPERATOR\n", yytext); }
"-" { printf("%s : OPERATOR\n", yytext); }
"*" { printf("%s : OPERATOR\n", yytext); }
"/" { printf("%s : OPERATOR\n", yytext); }
"=" { printf("%s : OPERATOR\n", yytext); }
"(" { printf("%s : SPECIAL SYMBOL\n", yytext); }
")" { printf("%s : SPECIAL SYMBOL\n", yytext); }
"{" { printf("%s : SPECIAL SYMBOL\n", yytext); }
"}" { printf("%s : SPECIAL SYMBOL\n", yytext); }
";" { printf("%s : SPECIAL SYMBOL\n", yytext); }
"," { printf("%s : SPECIAL SYMBOL\n", yytext); }
[ \t\n]+ ;
. { printf("%s : UNKNOWN\n", yytext); }
%%

int main()
{
    printf("Enter the C program:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
