
































































	.abiversion 2




	.globl	__gmpn_modexact_1c_odd
	.type	__gmpn_modexact_1c_odd, @function
	.section	".text"
	.align	5
__gmpn_modexact_1c_odd:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_modexact_1c_odd, .-__gmpn_modexact_1c_odd


	addic.	4, 4, -1		
	ld	8, 0(3)
	bne	0, .L2
	cmpld	7, 6, 8
	bge	7, .L4
	subf	8, 6, 8
	divdu	3, 8, 5
	mulld	3, 3, 5
	subf.	3, 3, 8
	beqlr	0
	subf	3, 3, 5
	blr

.L4:	subf	3, 8, 6
	divdu	8, 3, 5
	mulld	8, 8, 5
	subf	3, 8, 3
	blr

.L2:	
	ld	7, ..__gmp_binvert_limb_table@toc(2)
	rldicl	9, 5, 63, 57
	mtctr	4
	lbzx	0, 7, 9
	mulld	7, 0, 0
	sldi	0, 0, 1
	mulld	7, 5, 7
	subf	0, 7, 0
	mulld	9, 0, 0
	sldi	0, 0, 1
	mulld	9, 5, 9
	subf	0, 9, 0
	mulld	7, 0, 0
	sldi	0, 0, 1
	mulld	7, 5, 7
	subf	9, 7, 0

	.align	4
.Lloop:
	subfe	0, 6, 8
	ld	8, 8(3)
	addi	3, 3, 8
	mulld	0, 9, 0
	mulhdu	6, 0, 5
	bdnz	.Lloop

	cmpld	7, 5, 8
	blt	7, .L10

	subfe	0, 0, 0
	subf	6, 0, 6
	cmpld	7, 6, 8
	subf	3, 8, 6
	bgelr	7
	add	3, 5, 3
	blr

.L10:	subfe	0, 6, 8
	mulld	0, 9, 0
	mulhdu	3, 0, 5
	blr

	.size	__gmpn_modexact_1c_odd, .-__gmpn_modexact_1c_odd

	.section	".toc", "aw"
..__gmp_binvert_limb_table:	.tc	__gmp_binvert_limb_table[TC], __gmp_binvert_limb_table
	.section .note.GNU-stack,"",@progbits
