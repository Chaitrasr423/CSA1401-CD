#include <stdio.h>
#include <string.h>

struct symbol
{
    char name[20];
    char type[20];
};

struct symbol s[20];
int n = 0;

void insert()
{
    printf("Enter Symbol Name: ");
    scanf("%s", s[n].name);

    printf("Enter Data Type: ");
    scanf("%s", s[n].type);

    n++;
    printf("Symbol Inserted Successfully.\n");
}

void display()
{
    int i;

    printf("\nSYMBOL TABLE\n");
    printf("--------------------------\n");
    printf("Name\tType\n");
    printf("--------------------------\n");

    for(i = 0; i < n; i++)
    {
        printf("%s\t%s\n", s[i].name, s[i].type);
    }
}

void search()
{
    char key[20];
    int i, found = 0;

    printf("Enter Symbol Name to Search: ");
    scanf("%s", key);

    for(i = 0; i < n; i++)
    {
        if(strcmp(key, s[i].name) == 0)
        {
            printf("Symbol Found\n");
            printf("Name : %s\n", s[i].name);
            printf("Type : %s\n", s[i].type);
            found = 1;
            break;
        }
    }

    if(found == 0)
        printf("Symbol Not Found\n");
}

int main()
{
    int ch;

    do
    {
        printf("\n1.Insert\n2.Display\n3.Search\n4.Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &ch);

        switch(ch)
        {
            case 1: insert();
                    break;

            case 2: display();
                    break;

            case 3: search();
                    break;

            case 4: printf("Exiting...");
                    break;

            default: printf("Invalid Choice");
        }

    } while(ch != 4);

    return 0;
}
