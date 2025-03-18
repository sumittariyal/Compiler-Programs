%{
 #include<stdio.h>
 int vowels = 0, cons = 0;
%}
%%
[aeiouAEIOU]    { vowels++; }  
[a-zA-Z] { cons++; }  /* Match consonants only */
[ \t\n]         { /* Ignore spaces, tabs, and newlines */ }  
.               { /* Ignore numbers and special characters */ }
%%

int main()
{
    printf("Enter text:\n");
    yylex(); 
    printf("\nNumber of vowels = %d\n", vowels);
    printf("Number of consonants = %d\n", cons);
    return 0;
}

int yywrap()
{
    return 1;
}
