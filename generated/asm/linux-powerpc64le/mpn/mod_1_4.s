































































	.abiversion 2




	.globl	__gmpn_mod_1s_4p
	.type	__gmpn_mod_1s_4p, @function
	.section	".text"
	.align	5
__gmpn_mod_1s_4p:


	std	23, -72(1)
	ld	23, 48(6)
	std	24, -64(1)
	std	25, -56(1)
	ld	24, 32(6)
	ld	25, 24(6)
	std	26, -48(1)
	std	27, -40(1)
	ld	26, 16(6)
	std	28, -32(1)
	std	29, -24(1)
	std	30, -16(1)
	std	31, -8(1)
	ld	30, 40(6)

	rldicl.	0, 4, 0,62
	sldi	31, 4, 3
	add	3, 3, 31		

	cmpdi	7, 0, 2
	beq	0, .Lb00
	blt	7, .Lb01
	beq	7, .Lb10

.Lb11:	ld	11, -16(3)
	ld	9, -8(3)
	ld	0, -24(3)
	mulhdu	27, 11, 26
	mulld	8, 11, 26
	mulhdu	11, 9, 25
	mulld	9, 9, 25
	addc	31, 8, 0
	addze	10, 27
	addc	0, 9, 31
	adde	9, 11, 10
	addi	3, 3, -40
	b	.L6

	.align	4
.Lb00:	ld	11, -24(3)
	ld	10, -16(3)
	ld	9, -8(3)
	ld	0, -32(3)
	mulld	8, 11, 26
	mulhdu	7, 10, 25
	mulhdu	27, 11, 26
	mulhdu	11, 9, 24
	mulld	10, 10, 25
	mulld	9, 9, 24
	addc	31, 8, 0
	addze	0, 27
	addc	8, 31, 10
	adde	10, 0, 7
	addc	0, 9, 8
	adde	9, 11, 10
	addi	3, 3, -48
	b	.L6

	.align	4
.Lb01:	li	9, 0
	ld	0, -8(3)
	addi	3, 3, -24
	b	.L6

	.align	4
.Lb10:	ld	9, -8(3)
	ld	0, -16(3)
	addi	3, 3, -32

	.align	4
.L6:	addi	10, 4, 3
	srdi	7, 10, 2
	mtctr	7
	bdz	.Lend

	.align	4
.Ltop:	ld	31, -16(3)
	ld	10, -8(3)
	ld	11, 8(3)
	ld	12, 0(3)
	mulld	29, 0, 30		
	mulhdu	0,  0, 30		
	mulhdu	27, 10, 26
	mulld	10, 10, 26
	mulhdu	7, 9, 23		
	mulld	9, 9, 23		
	mulhdu	28, 11, 24
	mulld	11, 11, 24
	mulhdu	4, 12, 25
	mulld	12, 12, 25
	addc	8, 10, 31
	addze	10, 27
	addi	3, 3, -32
	addc	27, 8, 12
	adde	12, 10, 4
	addc	11, 27, 11
	adde	31, 12, 28
	addc	12, 11, 29
	adde	4, 31, 0
	addc	0, 9, 12
	adde	9, 7, 4
	bdnz	.Ltop

.Lend:
	lwz	3, 8(6)
	mulld	10, 9, 26
	mulhdu	9, 9, 26
	addc	11, 0, 10
	addze	9, 9
	ld	10, 0(6)
	subfic	8, 3, 64
	sld	9, 9, 3
	srd	8, 11, 8
	sld	11, 11, 3
	or	9, 8, 9
	mulld	0, 9, 10
	mulhdu	10, 9, 10
	addi	9, 9, 1
	addc	8, 0, 11
	adde	0, 10, 9
	mulld	0, 0, 5
	subf	0, 0, 11
	cmpld	7, 8, 0
	bge	7, .L9
	add	0, 0, 5
.L9:	cmpld	7, 0, 5
	bge-	7, .L16
.L10:	srd	3, 0, 3
	ld	23, -72(1)
	ld	24, -64(1)
	ld	25, -56(1)
	ld	26, -48(1)
	ld	27, -40(1)
	ld	28, -32(1)
	ld	29, -24(1)
	ld	30, -16(1)
	ld	31, -8(1)
	blr

.L16:	subf	0, 5, 0
	b	.L10

	.size	__gmpn_mod_1s_4p, .-__gmpn_mod_1s_4p



	.globl	__gmpn_mod_1s_4p_cps
	.type	__gmpn_mod_1s_4p_cps, @function
	.section	".text"
	.align	5
__gmpn_mod_1s_4p_cps:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_mod_1s_4p_cps, .-__gmpn_mod_1s_4p_cps


	mflr	0
	std	29, -24(1)
	std	30, -16(1)
	mr	29, 3
	std	0, 16(1)
	std	31, -8(1)
	stdu	1, -144(1)
	cntlzd	31, 4
	sld	30, 4, 31
	mr	3, 30
	bl	__gmpn_invert_limb
	nop
	subfic	9, 31, 64
	li	10, 1
	sld	10, 10, 31
	srd	9, 3, 9
	neg	0, 30
	or	10, 10, 9
	mulld	10, 10, 0
	mulhdu	11, 10, 3
	nor	11, 11, 11
	subf	11, 10, 11
	mulld	11, 11, 30
	mulld	0, 10, 3
	cmpld	7, 0, 11
	bge	7, .L18
	add	11, 11, 30
.L18:	mulhdu	9, 11, 3
	add	9, 11, 9
	nor	9, 9, 9
	mulld	9, 9, 30
	mulld	0, 11, 3
	cmpld	7, 0, 9
	bge	7, .L19
	add	9, 9, 30
.L19:	mulhdu	0, 9, 3
	add	0, 9, 0
	nor	0, 0, 0
	mulld	0, 0, 30
	mulld	8, 9, 3
	cmpld	7, 8, 0
	bge	7, .L20
	add	0, 0, 30
.L20:	mulhdu	8, 0, 3
	add	8, 0, 8
	nor	8, 8, 8
	mulld	8, 8, 30
	mulld	7, 0, 3
	cmpld	7, 7, 8
	bge	7, .L21
	add	8, 8, 30
.L21:	srd	0, 0, 31
	addi	1, 1, 144
	srd	8, 8, 31
	srd	10, 10, 31
	srd	11, 11, 31
	std	0, 40(29)
	std	31, 8(29)
	srd	9, 9, 31
	ld	0, 16(1)
	ld	30, -16(1)
	std	8, 48(29)
	std	3, 0(29)
	mtlr	0
	ld	31, -8(1)
	std	10, 16(29)
	std	11, 24(29)
	std	9, 32(29)
	ld	29, -24(1)
	blr

	.size	__gmpn_mod_1s_4p_cps, .-__gmpn_mod_1s_4p_cps

	.section .note.GNU-stack,"",@progbits
