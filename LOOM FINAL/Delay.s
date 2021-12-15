
	.data
	.balign 4	
hello:  .asciz "Hello World!\n\n"
seconds:
	.int	1		
microsec:
	.int	500000		
	
n	.req    r6              
max	.req	r5		


	.text
	.global main
	.extern printf
	.extern sleep
	.extern usleep
	
main:   push 	{ip, lr}	
				

	mov	n, #0
	mov	max, #10
	
loop:	cmp	n, max		
	bgt	done		
				
	
        ldr 	r0, =hello
        bl 	printf		

@	ldr	r0, =seconds	 
@	ldr	r0, [r0]	
@	bl	sleep

	ldr	r0, =microsec	
	ldr	r0, [r0]	
	bl	usleep
	
	add	n, #1		
	b	loop

done:	
        pop 	{ip, pc}	