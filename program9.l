%{
    #include<stdio.h>
%}
%%
\<[^>]+\> { fprintf(yyout, "%s\n", yytext); }  /* Print only HTML tags */
. { }
%%
int main()
{
    extern FILE* yyin;
    extern FILE* yyout;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");

    if (!yyin || !yyout) {
        perror("Error opening file");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(yyout);

    return 0;
}
int yywrap()
{
    return 1;
}
