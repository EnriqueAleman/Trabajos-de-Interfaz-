 <stdio.h>
int v []= { 8, 10, - 3, 4, - 5, 50, 2, 3 };

//Aqui iniciaria el programa "Main''
void main(void)
{
    int min, i;
    min = v[0];
    for (i=0; i<8; i++){//Aqui pondremos el margen de partida y en que numerosestara//
        if (v[i] < min){
            min = v[i];
            
        }
    }
    printf ("minimos: %d", min);//aqui estaria los minimos a los que llegaria//
}

//Aqui acabaria la actividad 3.3