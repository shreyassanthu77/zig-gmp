

























































  
      


















	.abiversion 2


	.globl	__gmpn_gcd_22
	.type	__gmpn_gcd_22, @function
	.section	".text"
	.align	5
__gmpn_gcd_22:


.Ltop:	subfc.	8, 6, 4		
	beq	0, .Llowz
	subfe	9, 5, 3		
	subfe.	0, 0, 0		
	subfc	10, 4, 6		
	subfe	11, 3, 5		

.Lbck:	and	0, 10, 8		
	cntlzd	12, 0		
	addi	0, 12, 1		
	subfic	12, 12, 63		

	isel	6, 6, 4, 2		
	isel	5, 5, 3, 2		
	isel	4, 8, 10, 2		
	isel	3, 9, 11, 2		

	srd	4, 4, 12		
	sld	0, 3, 0		
	srd	3, 3, 12		
	or	4, 4, 0		

	or.	0, 3, 5		
	bne	.Ltop


	li	0, 63
	b	.Lodd
	.align	4
.Ltop1:isel	6, 4, 6, 29		
	isel	4, 10, 11, 29	
	subf	12, 12, 0		
	srd	4, 4, 12
.Lodd:	subf	10, 4, 6		
	subf	11, 6, 4		
	cmpld	7, 6, 4
	and	8, 11, 10		
	cntlzd	12, 8
	bne	7, .Ltop1


	mr	3, 6
	li	4, 0

	blr


.Llowz:
	
	
	subfc.	8, 5, 3		
	beq	.Lend
	li	9, 0
	subfe.	0, 0, 0		
	subf	10, 3, 5		
	li	11, 0
	b	.Lbck

.Lend:

	mr	3, 6
	mr	4, 5
	blr


	.size	__gmpn_gcd_22, .-__gmpn_gcd_22

	.section .note.GNU-stack,"",@progbits
