%{
#include<stdio.h>
int line = 1;
%}

%%
.*\n    { printf("%d %s", line++, yytext); }
.+      { printf("%d %s\n", line++, yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("sample.c","r");
    yylex();
    return 0;
}
