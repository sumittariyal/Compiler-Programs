%{
    #include <stdio.h>
%}
%%
[0-9]*[20468]   { printf("Even Number\n"); }  
[0-9]*[13579]   { printf("Odd Number\n"); }  
.*              { printf("Invalid input\n"); }  
%%
int main()
{
    printf("Enter a number: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
