%{
#include <stdio.h>
%}

%%
[aAeEiIoOuU]      { printf("%s is a Vowel\n", yytext); }
[a-zA-Z]          { printf("%s is a Consonant\n", yytext); }
[ \t\n]           ;
.                 { printf("%s is not an Alphabet\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter characters: ");
    yylex();
    return 0;
}
