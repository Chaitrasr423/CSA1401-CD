#include <stdio.h>
#include <string.h>

int main()
{
    char input[100];
    int i;

    printf("Enter expression: ");
    fgets(input, sizeof(input), stdin);

    input[strcspn(input, "\n")] = '\0';

    for(i = 0; input[i] != '\0'; i++)
    {
        if(input[i] == '+' || input[i] == '-' ||
           input[i] == '*' || input[i] == '/')
        {
            printf("Valid operator found: %c\n", input[i]);
        }
    }

    return 0;
}
