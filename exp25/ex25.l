%{
#include<stdio.h>
%}

%%
[A-Z]+      { printf("%s\n", yytext); }
.|\n        ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence:\n");
    yylex();
    return 0;
}
