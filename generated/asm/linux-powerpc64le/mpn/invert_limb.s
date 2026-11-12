

























































	.abiversion 2


	.globl	__gmpn_invert_limb
	.type	__gmpn_invert_limb, @function
	.section	".text"
	.align	5
__gmpn_invert_limb:


	sldi.	4, 3, 1
	neg	5, 3
	.long 2087000850
	beq-	.L1
	blr
.L1:	li	3, -1
	blr

	.size	__gmpn_invert_limb, .-__gmpn_invert_limb

	.section .note.GNU-stack,"",@progbits
