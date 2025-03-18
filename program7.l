%{
#include<stdio.h>
%}
%%
[ \t\n]+ {fprintf(yyout," ");}
.[^ \t\n]+ {fprintf(yyout,"%s",yytext);}

%%
int main()
{
extern FILE* yyin;
extern FILE* yyout;
yyin = fopen("input.txt","r");
yyout = fopen("output.txt","w");
yylex();
return 0;
}
int yywrap()
{
    return 1;
}