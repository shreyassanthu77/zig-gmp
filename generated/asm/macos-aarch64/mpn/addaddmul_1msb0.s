




























































	.text
	.align	3
	.globl	___gmpn_addaddmul_1msb0 
	
___gmpn_addaddmul_1msb0:
	lsr	x7, x3, #1
	adds	x6, xzr, xzr
	tbz	x3, #0, Ltop

	ldr	x11, [x1], #8		
	ldr	x15, [x2], #8		
	mul	x10, x11, x4		
	umulh	x11, x11, x4		
	mul	x14, x15, x5		
	umulh	x15, x15, x5		
	adds	x10, x10, x14		
	adcs	x6, x11, x15		
	str	x10, [x0], #8		
	cbz	x7, Lend

Ltop:	ldp	x11, x13, [x1], #16	
	ldp	x15, x17, [x2], #16	
	mul	x10, x11, x4		
	umulh	x11, x11, x4		
	mul	x14, x15, x5		
	umulh	x15, x15, x5		
	adcs	x10, x10, x14		
	adc	x11, x11, x15		
	adds	x10, x10, x6		
	mul	x12, x13, x4		
	umulh	x13, x13, x4		
	mul	x14, x17, x5		
	umulh	x17, x17, x5		
	adcs	x12, x12, x14		
	adc	x6, x13, x17		
	adds	x11, x12, x11		
	stp	x10, x11, [x0], #16	
	sub	x7, x7, #1
	cbnz	x7, Ltop

Lend:	adc	x0, x6, xzr
	ret
	
