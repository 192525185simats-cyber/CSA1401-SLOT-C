#include <stdio.h>

int main()
{
    printf("Grammar:\n");
    printf("S -> AB\n");
    printf("A -> a | epsilon\n");
    printf("B -> b\n\n");

    printf("FIRST(A) = { a, epsilon }\n");
    printf("FIRST(B) = { b }\n");
    printf("FIRST(S) = { a, b }\n");

    return 0;
}
