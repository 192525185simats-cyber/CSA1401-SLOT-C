%{
#include <stdio.h>
#include <string.h>

int keywords = 0;
int identifiers = 0;

char *keyword_list[] = {
    "int", "char", "float", "double",
    "if", "else", "for", "while",
    "return", "void", "break", "continue"
};

int isKeyword(char *word)
{
    int i;

    for(i = 0; i < 12; i++)
    {
        if(strcmp(word, keyword_list[i]) == 0)
            return 1;
    }

    return 0;
}
%}

%%

[a-zA-Z_][a-zA-Z0-9_]* {
    if(isKeyword(yytext))
        keywords++;
    else
        identifiers++;
}

[ \t\n]+    { /* ignore spaces */ }

.           { /* ignore other characters */ }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Reading C source file...\n");

    yyin = fopen("sample.c", "r");

    if(yyin == NULL)
    {
        printf("Cannot open sample.c\n");
        return 1;
    }

    yylex();

    fclose(yyin);

    printf("\nTotal Keywords    = %d\n", keywords);
    printf("Total Identifiers  = %d\n", identifiers);

    return 0;
}
