%{
#include<stdio.h>
int chars =0, words = 0,whiteSpaces = 0;
%}
%%
[ \t]+ {whiteSpaces++; chars ++;}
[a-zA-Z0-9]+ {words++; chars+=yyleng;}

%%
int main()
{
    yylex();
    printf("No of characters : %d\n",chars);
    printf("No. of words : %d\n",words);
    printf("No. of whiteSpaces : %d\n",whiteSpaces);
    return 0;
}
int yywrap()
{
     return 1;
}