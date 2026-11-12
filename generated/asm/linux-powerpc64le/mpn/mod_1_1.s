































































	.abiversion 2




	.globl	__gmpn_mod_1_1p
	.type	__gmpn_mod_1_1p, @function
	.section	".text"
	.align	5
__gmpn_mod_1_1p:


	sldi	10, 4, 3
	addi	4, 4, -1
	add	3, 3, 10
	ld	0, 16(6)		
	ld	12, 24(6)		
	ld	9, -8(3)
	ld	10, -16(3)
	mtctr	4
	mulhdu	8, 9, 0
	mulld	7, 9, 0
	addc	11, 7, 10
	addze	9, 8
	bdz	.Lend

	.align	4
.Ltop:	ld	4, -24(3)
	addi	3, 3, -8
	nop
	mulld	10, 11, 0
	mulld	8, 9, 12
	mulhdu	11, 11, 0
	mulhdu	9, 9, 12
	addc	7, 10, 4
	addze	10, 11
	addc	11, 8, 7
	adde	9, 9, 10
	bdnz	.Ltop

.Lend:
	lwz	0, 8(6)
	ld	3, 0(6)
	cmpdi	7, 0, 0
	beq-	7, .L4
	subfic	10, 0, 64
	sld	9, 9, 0
	srd	10, 11, 10
	or	9, 10, 9
.L4:	subfc	10, 5, 9
	subfe	10, 10, 10
	nand	10, 10, 10
	sld	11, 11, 0
	and	10, 10, 5
	subf	9, 10, 9
	mulhdu	10, 9, 3
	mulld	3, 9, 3
	addi	9, 9, 1
	addc	8, 3, 11
	adde	3, 10, 9
	mulld	3, 3, 5
	subf	3, 3, 11
	cmpld	7, 8, 3
	bge	7, .L5		
	add	3, 3, 5
.L5:	cmpld	7, 3, 5
	bge-	7, .L10
	srd	3, 3, 0
	blr

.L10:	subf	3, 5, 3
	srd	3, 3, 0
	blr

	.size	__gmpn_mod_1_1p, .-__gmpn_mod_1_1p



	.globl	__gmpn_mod_1_1p_cps
	.type	__gmpn_mod_1_1p_cps, @function
	.section	".text"
	.align	5
__gmpn_mod_1_1p_cps:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_mod_1_1p_cps, .-__gmpn_mod_1_1p_cps


	mflr	0
	std	29, -24(1)
	std	30, -16(1)
	std	31, -8(1)
	cntlzd	31, 4
	std	0, 16(1)
	extsw	31, 31
	mr	29, 3
	stdu	1, -144(1)
	sld	30, 4, 31
	mr	3, 30
	bl	__gmpn_invert_limb
	nop
	cmpdi	7, 31, 0
	neg	0, 30
	beq-	7, .L13
	subfic	11, 31, 64
	li	0, 1
	neg	9, 30
	srd	11, 3, 11
	sld	0, 0, 31
	or	0, 11, 0
	mulld	0, 0, 9
.L13:	mulhdu	9, 0, 3
	mulld	11, 0, 3
	add	9, 0, 9
	nor	9, 9, 9
	mulld	9, 9, 30
	cmpld	7, 11, 9
	bge	7, .L14
	add	9, 9, 30
.L14:	addi	1, 1, 144
	srd	0, 0, 31
	std	31, 8(29)
	std	3, 0(29)
	std	0, 16(29)
	ld	0, 16(1)
	srd	9, 9, 31
	ld	30, -16(1)
	ld	31, -8(1)
	std	9, 24(29)
	ld	29, -24(1)
	mtlr	0
	blr

	.size	__gmpn_mod_1_1p_cps, .-__gmpn_mod_1_1p_cps

	.section .note.GNU-stack,"",@progbits
