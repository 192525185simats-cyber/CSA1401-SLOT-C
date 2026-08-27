#include <stdio.h>

int main()
{
    char *t1 = "t1";
    char *t2 = "t2";
    char *t3 = "t3";

    printf("Expression: x = a + b * c - d\n\n");

    printf("Three Address Code:\n");
    printf("%s = b * c\n", t1);
    printf("%s = a + %s\n", t2, t1);
    printf("%s = %s - d\n", t3, t2);
    printf("x = %s\n", t3);

    return 0;
}
