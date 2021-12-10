ldr	 r1, = vi
ldr	 r1, [ r1 ]
ldr	 r2, = vf
ldr	 r2, [ r2 ]
bucle	 :	 cmp r1, r2
bhi	 salir

add r1, r1, # 1
b bucle
salir :

Listado 2.2 del Ejercicio 2.1
//Aqui usaremos el Bucle//