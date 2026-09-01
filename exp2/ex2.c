#include <stdio.h>
#include <string.h>

int main()
{
    char str[200];

    printf("Enter a line: ");
    fgets(str, sizeof(str), stdin);

    if (strncmp(str, "//", 2) == 0)
    {
        printf("Single-line Comment");
    }
    else if (strncmp(str, "/*", 2) == 0)
    {
        if (strstr(str, "*/") != NULL)
            printf("Multi-line Comment");
        else
            printf("Invalid Comment");
    }
    else
    {
        printf("Not a Comment");
    }

    return 0;
}
