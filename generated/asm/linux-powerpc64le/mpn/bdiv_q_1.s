

































































	.abiversion 2




	.globl	__gmpn_bdiv_q_1
	.type	__gmpn_bdiv_q_1, @function
	.section	".text"
	.align	5
__gmpn_bdiv_q_1:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_bdiv_q_1, .-__gmpn_bdiv_q_1


	addi	7, 5, -1
	cmpdi	1, 5, 1
	ld	12, 0(4)
	li	8, 0
	neg	0, 6
	and	0, 6, 0
	cntlzd	0, 0
	subfic	8, 0, 63
	srd	6, 6, 8
.L7:
	mtctr	7
	
	ld	10, ..__gmp_binvert_limb_table@toc(2)
	rldicl	11, 6, 63, 57
	lbzx	0, 10, 11
	mulld	9, 0, 0
	sldi	0, 0, 1
	mulld	9, 6, 9
	subf	0, 9, 0
	mulld	10, 0, 0
	sldi	0, 0, 1
	mulld	10, 6, 10
	subf	0, 10, 0
	mulld	9, 0, 0
	sldi	0, 0, 1
	mulld	9, 6, 9
	subf	7, 9, 0		

	
	bne	0, .Lnorm
	b	.Lunorm


	.size	__gmpn_bdiv_q_1, .-__gmpn_bdiv_q_1



	.globl	__gmpn_pi1_bdiv_q_1
	.type	__gmpn_pi1_bdiv_q_1, @function
	.section	".text"
	.align	5
__gmpn_pi1_bdiv_q_1:


	cmpdi	0, 8, 0
	ld	12, 0(4)
	addic	0, 5, -1		
	cmpdi	1, 5, 1
	mtctr	0
	beq	0, .Lnorm

.Lunorm:
	subfic	10, 8, 64		
	li	5, 0
	srd	11, 12, 8
	beq	1, .Led1

	.align	4
.Ltpu:	ld	12, 8(4)
	nop
	addi	4, 4, 8
	sld	0, 12, 10
	or	11, 11, 0
	subfe	9, 5, 11
	srd	11, 12, 8
	mulld	0, 7, 9
	mulhdu	5, 0, 6
	std	0, 0(3)
	addi	3, 3, 8
	bdnz	.Ltpu

	subfe	11, 5, 11
.Led1:	mulld	0, 7, 11
	std	0, 0(3)
	blr

	.align	4
.Lnorm:
	mulld	11, 12, 7
	mulhdu	5, 11, 6
	std	11, 0(3)
	beqlr	1

	.align	4
.Ltpn:	ld	9, 8(4)
	addi	4, 4, 8
	subfe	5, 5, 9
	mulld	11, 7, 5
	mulhdu	5, 11, 6	
	std	11, 8(3)
	addi	3, 3, 8
	bdnz	.Ltpn

	blr

	.size	__gmpn_pi1_bdiv_q_1, .-__gmpn_pi1_bdiv_q_1

	.section	".toc", "aw"
..__gmp_binvert_limb_table:	.tc	__gmp_binvert_limb_table[TC], __gmp_binvert_limb_table
	.section .note.GNU-stack,"",@progbits
