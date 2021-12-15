#include <stdio.h>

int main()
{
    char *Ra="Ra", *Mi="MI", *Fa="Fa";
    for(int x=0; x<9; x++)
    {
        if(x>=0 && x<3)
        {
            printf("Nota: %s\n", Ra);
        }

        if(x>=3 && x<6)
        {
            printf("Nota: %s\n", Mi);
        }

        if(x>=6 && x<9)
        {
            printf("Nota: %s\n", FA);
        }
    }
    return 0;
}