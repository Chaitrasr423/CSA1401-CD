%{
#include <stdio.h>
%}

%%

"#include<stdio.h>"     { printf("PREPROCESSOR : %s\n", yytext); }
"void"                  { printf("KEYWORD : %s\n", yytext); }
"int"                   { printf("KEYWORD : %s\n", yytext); }
"printf"                { printf("FUNCTION : %s\n", yytext); }

[0-9]+                  { printf("NUMBER : %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("IDENTIFIER : %s\n", yytext); }

"="                     { printf("OPERATOR : %s\n", yytext); }
"+"                     { printf("OPERATOR : %s\n", yytext); }
"-"                     { printf("OPERATOR : %s\n", yytext); }
"*"                     { printf("OPERATOR : %s\n", yytext); }
"/"                     { printf("OPERATOR : %s\n", yytext); }

"("                     { printf("SPECIAL SYMBOL : %s\n", yytext); }
")"                     { printf("SPECIAL SYMBOL : %s\n", yytext); }
"{"                     { printf("SPECIAL SYMBOL : %s\n", yytext); }
"}"                     { printf("SPECIAL SYMBOL : %s\n", yytext); }
","                     { printf("SPECIAL SYMBOL : %s\n", yytext); }
";"                     { printf("SPECIAL SYMBOL : %s\n", yytext); }

\"[a-zA-Z]*\"           { printf("STRING : %s\n", yytext); }

[ \t\n]+                { }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("TOKENS IN THE C PROGRAM\n");
    printf("=======================\n");
    yylex();
    return 0;
}
