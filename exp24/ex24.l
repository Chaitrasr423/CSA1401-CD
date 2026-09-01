%{
#include<stdio.h>
int count = 0;
FILE *out;
%}

%%
"/*"([^*]|\n)*"*/"    { count++; }
"//".*                { count++; }
.|\n                  { fputs(yytext, out); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    FILE *in = fopen("input.c","r");
    out = fopen("output.c","w");

    yyin = in;
    yylex();

    fclose(in);
    fclose(out);

    printf("Number of comment lines = %d\n", count);
    return 0;
}
