##//  Autor :  EnriqueAleman
##//  Institucion   :  Instituto Tecnologico de Tijuana
##//  Catedratico   :  Rene Solis Reyes 
##//  Fecha : 12/09/21
##//  Nombre del Ejercicio  :   For While
##//  18210450
##//  Descripcion del problema: Codigo del programa

.data
var1 : .asciz " %d\ 012 "

//Este seria el codigo del text//
.text
.global main
main	 : push { r4, lr }
	mov r1, # 0
	ldr r4, = var1
	mov r0, r4
	bl printf
	mov r0, r4
	mov r1, # 1
	bl printf
	mov r0, r4
	mov r1, # 2
	bl printf
	mov r0, r4
	mov r1, # 3
	bl printf
	mov r0, r4
	mov r1, # 4
	pop { r4, lr }
	b printf
//Aqui terminaria el codigo//
