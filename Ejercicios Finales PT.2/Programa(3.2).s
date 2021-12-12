#include <stdio.h>

int v []= { 8, 8, 8};
int v1[]= {6, 8, 9};
int v2[]= {50, 70, 90};
int v3[]= {70, 85, 100};
int v4[]= {-1, -10, -20};

void main(void)
{
    media(v);
    media(v1);
    media(v2);
    media(v3);
    media(v4); 
}
void media(int * v)
{
    int med;
    med = 0;
    med = (v[0] + v[1] + v[2]) / 3;
    
    printf ("Aqui esta la media: %d \n", med);
}