%{
#include <stdio.h>
#include <string.h>

int count = 0;

char *keywords[] = {
"int","char","float","double","if","else","for",
"while","return","void"
};

int isKeyword(char *s)
{
    int i;
    for(i=0; i<10; i++)
        if(strcmp(s, keywords[i]) == 0)
            return 1;
    return 0;
}%{
#include <stdio.h>
#include <string.h>

int count = 0;

char *keywords[] = {
    "int", "char", "float", "double", "if",
    "else", "for", "while", "return", "void"
};

int isKeyword(char *s)
{
    int i;

    for(i = 0; i < 10; i++)
    {
        if(strcmp(s, keywords[i]) == 0)
            return 1;
    }

    return 0;
}
%}

%option noyywrap

%%

[ \t\n]+                  ;
"//".*                    ;
"/*"([^*]|\*+[^*/])*\*+"/" ;

[0-9]+                    ;

[A-Za-z_][A-Za-z0-9_]*    {
                              if(!isKeyword(yytext))
                                  count++;
                          }

.                         ;

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

    printf("Number of identifiers = %d\n", count);

    fclose(yyin);

    return 0;
%}

%option noyywrap

%%

[ \t\n]+                    ;
"//".*                      ;
[0-9]+                      ;

[A-Za-z_][A-Za-z0-9_]*      {
                                if(!isKeyword(yytext))
                                    count++;
                            }

.                           ;

%%

int main()
{
    yyin = fopen("input.c","r");

    yylex();

    printf("Number of identifiers = %d\n", count);

    fclose(yyin);
    return 0;
}int main()
{
    int a, b;
    a = 10;
    b = a + 5;
    return 0;
}
