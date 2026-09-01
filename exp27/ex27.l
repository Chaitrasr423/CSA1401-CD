%{
#include<stdio.h>
%}

%%
abc      { printf("ABC"); }
.|\n     { printf("%s", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter String: ");
    yylex();
    return 0;
}
