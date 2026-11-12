





























































  
  
  
  





	.text
	.align	3
	.globl	___gmpn_submul_1 
	
___gmpn_submul_1:
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
	subs	x8, x12, x8
	sbcs	x4, x13, x4
	sbcs	x5, x14, x5
	csinc	x6, x6, x6, cs
	subs	x8, x8, x17
	sbcs	x4, x4, x9
	sbcs	x5, x5, x10
	csinc	x17, x6, x6, cs
	stp	x8, x4, [x0], #16
	str	x5, [x0], #8
	cbnz	x16, Ltop
	mov	x0, x17
	ret

Lb01:	ldr	x12, [x0]
	subs	x8, x12, x8
	csinc	x4, x4, x4, cs
	subs	x8, x8, x17
	csinc	x17, x4, x4, cs
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
	subs	x8, x12, x8
	sbcs	x4, x13, x4
	csinc	x5, x5, x5, cs
	subs	x8, x8, x17
	sbcs	x4, x4, x9
	csinc	x17, x5, x5, cs
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
	subs	x8, x12, x8		
	sbcs	x4, x13, x4		
	sbcs	x5, x14, x5		
	sbcs	x6, x15, x6		
	csinc	x7, x7, x7, cs	
	subs	x8, x8, x17		
	sbcs	x4, x4, x9		
	sbcs	x5, x5, x10		
	sbcs	x6, x6, x11		
	csinc	x17, x7, x7, cs	
	stp	x8, x4, [x0], #16
	stp	x5, x6, [x0], #16
	sub	x16, x16, #1
	cbnz	x16, Ltop

Ldone:mov	x0, x17
	ret
	
