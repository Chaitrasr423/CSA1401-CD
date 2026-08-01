%{
#include<stdio.h>
%}

%%
[ \t\n]+ ;

int|float|char|if|else|while|for|return|void    { printf("Keyword: %s\n",yytext); }

[0-9]+    { printf("Constant: %s\n",yytext); }

[a-zA-Z_][a-zA-Z0-9_]*    { printf("Identifier: %s\n",yytext); }

"+"|"-"|"*"|"/"|"="    { printf("Operator: %s\n",yytext); }

";"|","|"("|")"|"{"|"}"    { printf("Delimiter: %s\n",yytext); }

. ;

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}
