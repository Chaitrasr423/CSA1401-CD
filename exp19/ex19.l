%{
#include<stdio.h>

int chars=0, words=0, lines=0;
%}

%%
"//".*                      ;
"/*"([^*]|\n|\*+[^*/])*\*+"/"   ;

[ \t]+                      ;
\n                          { lines++; }

[A-Za-z_][A-Za-z0-9_]*      { words++; chars+=yyleng; }
[0-9]+                      { words++; chars+=yyleng; }

.                           { chars++; }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("sample.c","r");

    if(yyin==NULL)
    {
        printf("File not found");
        return 0;
    }

    yylex();

    printf("\nLines = %d", lines);
    printf("\nWords = %d", words);
    printf("\nCharacters = %d", chars);

    fclose(yyin);
    return 0;
}
