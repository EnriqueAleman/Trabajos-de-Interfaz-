ejercicio: ejercicio.s
        g++ -S ejercicio.C

ejercicio: ejercicio.s
        gcc -g ejercicio.s -o ejercicio -mbe32
clean:
        rm ejercicio.C ejercicio