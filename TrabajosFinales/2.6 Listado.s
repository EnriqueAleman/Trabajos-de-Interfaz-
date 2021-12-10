##//  Autor :  EnriqueAleman
##//  Institucion   :  Instituto Tecnologico de Tijuana
##//  Catedratico   :  Rene Solis Reyes 
##//  Fecha : 12/09/21
##//  Nombre del Ejercicio  :   Listado 2.6
##//  18210450
##//  Descripcion del problema: 

.data
var1:	 .asciz	 " %d\ 012 "


.text
.global main
main	 : push 	{ r4, lr }
mov	 r4, 	# 0
.L2	 : mov	 r1, r4
ldr	 r0, = var1
add	 r4,	 r4, # 1
bl	 printf
cmp	 r4, # 5
bne	 .L2
pop	 { r4, pc }
