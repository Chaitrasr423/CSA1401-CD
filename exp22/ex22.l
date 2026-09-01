%{
#include <stdio.h>
%}

%%
\<[^>]+\>      { printf("%s\n", yytext); }
.|\n           ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("sample.html","r");
    yylex();
    return 0;
}
