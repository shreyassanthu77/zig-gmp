





























































	.abiversion 2


	.globl	__gmpn_gcd_11
	.type	__gmpn_gcd_11, @function
	.section	".text"
	.align	5
__gmpn_gcd_11:


	li	12, 63
	b	.Lodd

	.align	4
.Ltop:	and	8, 11, 10		
	cntlzd	9, 8
	isel	4, 3, 4, 29		
	isel	3, 10, 11, 29	
	subf	9, 9, 12		
	srd	3, 3, 9
.Lodd:	cmpld	7, 4, 3
	subf	10, 3, 4		
	subf	11, 4, 3		
	bne	7, .Ltop

.Lend:	blr

	.size	__gmpn_gcd_11, .-__gmpn_gcd_11

	.section .note.GNU-stack,"",@progbits
