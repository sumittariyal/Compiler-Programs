%{
  #include<stdio.h>
%}
%%
[0-9]+ {printf("Integer Numeric Literal\n");}
[0-9]+.[0-9]+ {printf("Float Numeric Literal");}
\".*\"  {printf("String\n");}
int|float|break|continue {printf("Keywords");}
[a-zA-Z]+[a-z_0-9A-Z]* {printf("Identifier");}
.* {printf("Invalid Input");}
%%
int main()
{
    yylex();
    return 0;

}
int yywrap()
{
  return 1;
}