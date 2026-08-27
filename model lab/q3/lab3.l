%{
#include <stdio.h>

int positive = 0;
int negative = 0;
%}

%%

\-[0-9]+       { negative++; }
\+?[1-9][0-9]* { positive++; }
0              { /* zero is neither positive nor negative */ }
[ \t\n]+       { /* ignore spaces */ }
.              { /* ignore other characters */ }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter integers:\n");
    yylex();

    printf("\nPositive integers = %d\n", positive);
    printf("Negative integers = %d\n", negative);

    return 0;
}
