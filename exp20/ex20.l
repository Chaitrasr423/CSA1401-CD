%{
#include <stdio.h>
%}

%%
[0-9]+(\.[0-9]+)?     { printf("%s\n", yytext); }
.|\n                  ;
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
