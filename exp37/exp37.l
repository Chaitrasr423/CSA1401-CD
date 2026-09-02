%{
#include <stdio.h>
#include <string.h>

char word[50];
int count = 0;
%}

%%
[a-zA-Z]+ {
    if(strcmp(yytext, word) == 0)
        count++;
}

[ \t\n]+ ;
. ;
%%

int main()
{
    printf("Enter the word to search: ");
    scanf("%s", word);

    printf("Enter the sentence: ");
    getchar();
    yylex();

    printf("Frequency of %s = %d\n", word, count);

    return 0;
}

int yywrap()
{
    return 1;
}
