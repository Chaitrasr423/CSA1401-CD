%{
#include <stdio.h>

int positive = 0;
int negative = 0;
%}

%%
[+]?[0-9]+ {
    printf("%s : Positive Number\n", yytext);
    positive++;
}

-[0-9]+ {
    printf("%s : Negative Number\n", yytext);
    negative++;
}

[ \t\n]+ ;
. ;
%%

int main()
{
    printf("Enter numbers:\n");
    yylex();

    printf("\nPositive numbers: %d\n", positive);
    printf("Negative numbers: %d\n", negative);

    return 0;
}

int yywrap()
{
    return 1;
}
