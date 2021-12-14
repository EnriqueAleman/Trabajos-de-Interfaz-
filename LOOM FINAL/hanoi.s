
	
	.data
	.balign 4
prompt:	.asciz	"Cuantos quieres? "
format:	.asciz	"%d"	
string: .asciz  "move disk from %c to %c\n\0"
peg1:	.int	'A'		
peg2:	.int	'B'
peg3:	.int	'C'
n:	.int	4		

	

	.text
	.global main
	.extern printf
	.extern	scanf


getNumberOfDisks:
	push 	{ip, lr}	
				

	ldr	r0, =prompt	
	bl	printf

	ldr     r0, =format	
	ldr	r1, =n		
	bl	scanf		

        pop 	{ip, pc}
	

moveDisks:	
	push	{r4-r8, lr}

	@ if n==1:
	cmp	r4, #1
	bgt	moveN_1Disks

move1Disk:	
	@ print( "move disk from %c to %c\n", Source, Dest )
	ldr	r0, =string
	mov	r1, r5
	mov	r2, r6
	bl	printf
	b	endMoveDisk

moveN_1Disks:	
	@ moveDisks( n-1, Source, Extra, Dest )
	mov	r8, r7		
	mov	r7, r6
	mov	r6, r8
	sub	r4, #1
	bl	moveDisks
	mov	r8, r7		
	mov	r7, r6
	mov	r6, r8

	@ print( "move disk from %c to %c\n", Source, Dest )
	ldr	r0, =string
	mov	r1, r5
	mov	r2, r6
	bl	printf

	@ moveDisks( n-1, Extra, Dest, Source )	
	mov	r8, r5		
	mov	r5, r7
	mov	r7, r8
	bl	moveDisks
	
endMoveDisk:	
	pop	{r4-r8, pc}

	


main:   push 	{ip, lr}	
				

	bl	getNumberOfDisks
				
	
	ldr	r4, =n		
	ldr	r4, [r4]
	ldr	r5, =peg1	
	ldr	r5, [r5]
	ldr	r6, =peg2	
	ldr	r6, [r6]
	ldr	r7, =peg3	
	ldr	r7, [r7]
	bl	moveDisks	

	
	
        pop 	{ip, pc}	