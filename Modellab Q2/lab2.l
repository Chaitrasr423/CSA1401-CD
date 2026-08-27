%{
#include <stdio.h>

int upper = 0;
int lower = 0;
%}

%option noyywrap

%%

[A-Z]       { upper++; }
[a-z]       { lower++; }
.|\n        ;

%%

int main()
{
    yyin = fopen("input.txt", "r");

    if(yyin == NULL)
    {
        printf("Cannot open input.txt\n");
        return 1;
    }

    yylex();

    printf("Uppercase characters = %d\n", upper);
    printf("Lowercase characters = %d\n", lower);

    fclose(yyin);

    return 0;
}
