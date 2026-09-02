%{
#include <stdio.h>
#include <string.h>

char oldword[50];
char newword[50];
%}

%%
[a-zA-Z]+ {
    if(strcmp(yytext, oldword) == 0)
        printf("%s", newword);
    else
        printf("%s", yytext);
}

.|\n {
    printf("%s", yytext);
}
%%

int main()
{
    printf("Enter the word to replace: ");
    scanf("%s", oldword);

    printf("Enter the new word: ");
    scanf("%s", newword);

    printf("\nEnter the file content:\n");
    getchar();

    yylex();

    return 0;
}

int yywrap()
{
    return 1;
}
