






























































		


	.abiversion 2




	.globl	__gmpn_divrem_2
	.type	__gmpn_divrem_2, @function
	.section	".text"
	.align	5
__gmpn_divrem_2:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_divrem_2, .-__gmpn_divrem_2


	mflr	0
	std	23, -72(1)
	std	24, -64(1)
	std	25, -56(1)
	std	26, -48(1)
	std	27, -40(1)
	std	28, -32(1)
	std	29, -24(1)
	std	30, -16(1)
	std	31, -8(1)
	std	0, 16(1)
	stdu	1, -192(1)
	mr	24, 3
	mr	25, 4
	sldi	0, 6, 3
	add	26, 5, 0
	addi	26, 26, -24
	ld	30, 8(7)
	ld	28, 0(7)
	ld	29, 16(26)
	ld	31, 8(26)


	li	23, 0
	cmpld	7, 29, 30
	blt	7, .L8
	mfcr	0
	rlwinm	0, 0, 30, 31, 31
	subfc	9, 28, 31
	addze.	0, 0
	nop
	beq	0, .L8
	subfc	31, 28, 31
	subfe	29, 30, 29
	li	23, 1


.L8:
	add	27, 25, 6
	addic.	27, 27, -3
	blt	0, .L18
	mr	3, 30
	bl	__gmpn_invert_limb
	nop
	mulld	10, 3, 30
	mulhdu	0, 3, 28
	addc	8, 10, 28
	subfe	11, 1, 1
	addc	10, 8, 0
	addze.	11, 11
	blt	0, .L91
.L40:
	subfc	10, 30, 10
	addme.	11, 11
	addi	3, 3, -1
	bge	0, .L40
.L91:
	addi	5, 27,  1
	mtctr	5
	sldi	0, 27, 3
	add	24, 24, 0
	.align	4
.Lloop:
	mulhdu	8, 29, 3
	mulld	6, 29, 3
	addc	6, 6, 31
	adde	8, 8, 29
	cmpd	7, 27, 25
	mulld	0, 30, 8
	mulhdu	11, 28, 8
	mulld	10, 28, 8
	subf	31, 0, 31
	li	7, 0
	blt	7, .L60
	ld	7, 0(26)
	addi	26, 26, -8
	nop
.L60:	subfc	7, 28, 7
	subfe	31, 30, 31
	subfc	7, 10, 7
	subfe	4, 11, 31
	subfc	9, 6, 4
	subfe	9, 1, 1
	andc	6, 28, 9
	andc	0, 30, 9
	addc	31, 7, 6
	adde	29, 4, 0
	subf	8, 9, 8
	cmpld	7, 29, 30
	bge-	7, .Lfix
.Lbck:	std	8, 0(24)
	addi	24, 24, -8
	addi	27, 27, -1
	bdnz	.Lloop
.L18:
	std	31, 8(26)
	std	29, 16(26)
	mr	3, 23
	addi	1, 1, 192
	ld	0, 16(1)
	mtlr	0
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
.Lfix:
	mfcr	0
	rlwinm	0, 0, 30, 31, 31
	subfc	9, 28, 31
	addze.	0, 0
	beq	0, .Lbck
	subfc	31, 28, 31
	subfe	29, 30, 29
	addi	8, 8, 1
	b	.Lbck

	.size	__gmpn_divrem_2, .-__gmpn_divrem_2

	.section .note.GNU-stack,"",@progbits
