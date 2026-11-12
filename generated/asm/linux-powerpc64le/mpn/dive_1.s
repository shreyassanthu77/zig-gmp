


































































	.abiversion 2




	.globl	__gmpn_divexact_1
	.type	__gmpn_divexact_1, @function
	.section	".text"
	.align	5
__gmpn_divexact_1:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_divexact_1, .-__gmpn_divexact_1


	addic.	5, 5, -1
	ld	12, 0(4)
	bne	0, .L2
	divdu	0, 12, 6
	std	0, 0(3)
	blr
.L2:
	rldicl.	0, 6, 0, 63
	li	10, 0
	bne	0, .L7
	neg	0, 6
	and	0, 6, 0
	cntlzd	0, 0
	subfic	0, 0, 63
	rldicl	10, 0, 0, 32
	srd	6, 6, 0
.L7:
	mtctr	5
	
	ld	5, ..__gmp_binvert_limb_table@toc(2)
	rldicl	11, 6, 63, 57
	lbzx	0, 5, 11
	mulld	9, 0, 0
	sldi	0, 0, 1
	mulld	9, 6, 9
	subf	0, 9, 0
	mulld	5, 0, 0
	sldi	0, 0, 1
	mulld	5, 6, 5
	subf	0, 5, 0
	mulld	9, 0, 0
	sldi	0, 0, 1
	mulld	9, 6, 9
	subf	7, 9, 0		

	bne	0, .Lnorm
	subfic	8, 10, 64		
	li	5, 0
	srd	11, 12, 10

	.align	4
.Lloop0:
	ld	12, 8(4)
	nop
	addi	4, 4, 8
	sld	0, 12, 8
	or	11, 11, 0
	subfe	9, 5, 11
	srd	11, 12, 10
	mulld	0, 7, 9
	mulhdu	5, 0, 6
	std	0, 0(3)
	addi	3, 3, 8
	bdnz	.Lloop0

	subfe	0, 5, 11
	mulld	0, 7, 0
	std	0, 0(3)
	blr

	.align	4
.Lnorm:
	mulld	11, 12, 7
	mulhdu	5, 11, 6
	std	11, 0(3)
	.align	4
.Lloop1:
	ld	9, 8(4)
	addi	4, 4, 8
	subfe	5, 5, 9
	mulld	11, 7, 5
	mulhdu	5, 11, 6	
	std	11, 8(3)
	addi	3, 3, 8
	bdnz	.Lloop1

	blr

	.size	__gmpn_divexact_1, .-__gmpn_divexact_1

	.section	".toc", "aw"
..__gmp_binvert_limb_table:	.tc	__gmp_binvert_limb_table[TC], __gmp_binvert_limb_table
	.section .note.GNU-stack,"",@progbits
