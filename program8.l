%{
   #include<stdio.h>
%}
%%
"//".*          { /* Ignore single-line comments */ }
"/*"[^*/]*"*/"  { /* Ignore multi-line comments */ }
.               { fprintf(yyout, "%s", yytext); }  /* Print everything else */
%%
int main()
{
    extern FILE* yyout;
    yyout = fopen("output.txt", "w");
    yylex();
    fclose(yyout);
    return 0;
}
int yywrap()
{
    return 1;
}
