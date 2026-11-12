




























































  
  
  
  





	.text
	.align	3
	.globl	___gmpn_addmul_1c 
	
___gmpn_addmul_1c:
	mov	x17, x4
	b	Lent
	


	.text
	.align	3
	.globl	___gmpn_addmul_1 
	
___gmpn_addmul_1:
	mov	x17, #0		
Lent:	lsr	x16, x2, #2
	tbz	x2, #0, Lbx0

Lbx1:	ldr	x4, [x1], #8
	mul	x8, x4, x3
	umulh	x4, x4, x3
	tbz	x2, #1, Lb01

Lb11:	ldp	x5,x6, [x1], #16
	ldp	x12,x13, [x0]
	ldr	x14, [x0,#16]
	mul	x9, x5, x3
	umulh	x5, x5, x3
	mul	x10, x6, x3
	umulh	x6, x6, x3
	adds	x8, x12, x8
	adcs	x4, x13, x4
	adcs	x5, x14, x5
	csinc	x6, x6, x6, cc
	adds	x8, x8, x17
	adcs	x4, x4, x9
	adcs	x5, x5, x10
	csinc	x17, x6, x6, cc
	stp	x8, x4, [x0], #16
	str	x5, [x0], #8
	cbnz	x16, Ltop
	mov	x0, x17
	ret

Lb01:	ldr	x12, [x0]
	adds	x8, x12, x8
	csinc	x4, x4, x4, cc
	adds	x8, x8, x17
	csinc	x17, x4, x4, cc
	str	x8, [x0], #8
	cbnz	x16, Ltop
	mov	x0, x17
	ret

Lbx0:	ldp	x4,x5, [x1], #16
	tbz	x2, #1, Ltop+4

Lb10:	ldp	x12,x13, [x0]
	mul	x8, x4, x3
	umulh	x4, x4, x3
	mul	x9, x5, x3
	umulh	x5, x5, x3
	adds	x8, x12, x8
	adcs	x4, x13, x4
	csinc	x5, x5, x5, cc
	adds	x8, x8, x17
	adcs	x4, x4, x9
	csinc	x17, x5, x5, cc
	stp	x8, x4, [x0], #16
	cbz	x16, Ldone

Ltop:	ldp	x4,x5, [x1], #16	
	ldp	x6,x7, [x1], #16	
	ldp	x12,x13, [x0]		
	ldp	x14,x15, [x0,#16]	
	mul	x8, x4, x3		
	umulh	x4, x4, x3		
	mul	x9, x5, x3		
	umulh	x5, x5, x3		
	mul	x10, x6, x3		
	umulh	x6, x6, x3		
	mul	x11, x7, x3		
	umulh	x7, x7, x3		
	adds	x8, x12, x8		
	adcs	x4, x13, x4		
	adcs	x5, x14, x5		
	adcs	x6, x15, x6		
	csinc	x7, x7, x7, cc	
	adds	x8, x8, x17		
	adcs	x4, x4, x9		
	adcs	x5, x5, x10		
	adcs	x6, x6, x11		
	csinc	x17, x7, x7, cc	
	stp	x8, x4, [x0], #16
	stp	x5, x6, [x0], #16
	sub	x16, x16, #1
	cbnz	x16, Ltop

Ldone:mov	x0, x17
	ret
	
