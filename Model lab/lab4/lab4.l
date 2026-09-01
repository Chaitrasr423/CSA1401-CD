%{
#include <stdio.h>

int count = 0;
%}

%option noyywrap

%%

"int"|"char"|"float"|"double"|"if"|"else"|"for"|"while"|"return"
        { printf("Keyword: %s\n", yytext); count++; }

[0-9]+
        { printf("Constant: %s\n", yytext); count++; }

[A-Za-z_][A-Za-z0-9_]*
        { printf("Identifier: %s\n", yytext); count++; }

"=="|"!="|"<="|">="|"+"|"-"|"*"|"/"|"="
        { printf("Operator: %s\n", yytext); count++; }

[;,(){}]
        { printf("Special Symbol: %s\n", yytext); count++; }

[ \t\n]+ ;

. ;

%%

int main()
{
    yyin = fopen("input.c", "r");

    if(yyin == NULL)
    {
        printf("Cannot open input.c\n");
        return 1;
    }

    yylex();

    printf("\nTotal number of tokens = %d\n", count);
