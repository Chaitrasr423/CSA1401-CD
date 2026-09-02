%{
#include <stdio.h>
%}

%%
[0-9]    { printf("%s : Digit\n", yytext); }
.        { printf("%s : Not a Digit\n", yytext); }
%%

int main()
{
    printf("Enter a character: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
