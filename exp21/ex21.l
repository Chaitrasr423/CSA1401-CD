%{
#include<stdio.h>
int v=0,c=0;
%}

%%
[aAeEiIoOuU]    { v++; }
[a-zA-Z]        { c++; }
.|\n            ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a sentence: ");
    yylex();
    printf("Vowels = %d\n",v);
    printf("Consonants = %d\n",c);
    return 0;
}
