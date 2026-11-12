




































































	.abiversion 2




	.globl	__gmpn_divrem_1
	.type	__gmpn_divrem_1, @function
	.section	".text"
	.align	5
__gmpn_divrem_1:

0:	addis	2, 12, (.TOC.-0b)@ha
	addi	2, 2, (.TOC.-0b)@l
	.localentry __gmpn_divrem_1, .-__gmpn_divrem_1



	mfcr	12
	add.	10, 6, 4
	std	25, -56(1)
	mr	25, 4
	mflr	0
	std	26, -48(1)
	mr	26, 5
	std	28, -32(1)
	mr	28, 6
	std	29, -24(1)
	mr	29, 3
	li	3, 0
	std	30, -16(1)
	mr	30, 7
	std	31, -8(1)
	li	31, 0
	std	27, -40(1)
	std	0, 16(1)
	stw	12, 8(1)
	stdu	1, -176(1)
	beq-	0, .L1
	cmpdi	7, 7, 0
	sldi	0, 10, 3
	add	11, 0, 29
	addi	29, 11, -8
	blt-	7, .L162
	cmpdi	4, 6, 0
	beq+	4, .L71
.L163:
	sldi	9, 6, 3
	add	9, 9, 5
	ld	7, -8(9)
	cmpld	7, 7, 30
	bge-	7, .L71
	cmpdi	7, 10, 1
	li	0, 0
	mr	31, 7
	std	0, -8(11)
	addi	29, 29, -8
	mr	3, 7
	beq-	7, .L1
	addi	28, 6, -1
	cmpdi	4, 28, 0
.L71:
	cntlzd	27, 30
	sld	30, 30, 27
	sld	31, 31, 27
	mr	3, 30
	bl	__gmpn_invert_limb
	nop
	beq-	4, .L110
	sldi	9, 28, 3
	addic.	6, 28, -2
	add	9, 9, 26
	subfic	5, 27, 64
	ld	8, -8(9)
	srd	0, 8, 5
	or	31, 31, 0
	sld	7, 8, 27
	blt-	0, .L154
	addi	28, 28, -1
	mtctr	28
	sldi	6, 6, 3
	.align	4
.Luloop:
	ldx	8, 26, 6
	nop
	mulld	0, 31, 3
	mulhdu	10, 31, 3
	addi	11, 31, 1
	srd	9, 8, 5
	addi	6, 6, -8
	or	9, 7, 9
	addc	0, 0, 9
	adde	10, 10, 11
	mulld	31, 10, 30
	subf	31, 31, 9
	subfc	0, 31, 0	
	subfe	0, 0, 0	
	and	9, 30, 0
	add	31, 31, 9
	add	10, 0, 10	
	cmpld	7, 31, 30
	bge-	7, .L164
.L123:
	std	10, 0(29)
	addi	29, 29, -8
	sld	7, 8, 27
	bdnz	.Luloop
.L154:
	addi	11, 31, 1
	nop
	mulld	0, 31, 3
	mulhdu	8, 31, 3
	addc	0, 0, 7
	adde	8, 8, 11
	mulld	31, 8, 30
	subf	31, 31, 7
	subfc	0, 0, 31	
	subfe	0, 0, 0	
	not	7, 0
	add	8, 7, 8	
	andc	0, 30, 0
	add	31, 31, 0
	cmpld	7, 31, 30
	bge-	7, .L165
.L134:
	std	8, 0(29)
	addi	29, 29, -8
.L110:
	addic.	0, 25, -1
	blt-	0, .L156
	mtctr	25
	neg	9, 30
	.align	4
.Lufloop:
	addi	11, 31, 1
	nop
	mulld	0, 3, 31
	mulhdu	10, 3, 31
	add	10, 10, 11
	mulld	31, 9, 10

	cmpld	7, 31, 0
	blt	7, .L29
	add	31, 30, 31
	addi	10, 10, -1
.L29:

	std	10, 0(29)
	addi	29, 29, -8
	bdnz	.Lufloop
.L156:
	srd	3, 31, 27
.L1:
	addi	1, 1, 176
	ld	0, 16(1)
	lwz	12, 8(1)
	mtlr	0
	ld	25, -56(1)
	ld	26, -48(1)
	mtcrf	8, 12
	ld	27, -40(1)
	ld	28, -32(1)
	ld	29, -24(1)
	ld	30, -16(1)
	ld	31, -8(1)
	blr
.L162:
	cmpdi	7, 6, 0
	beq-	7, .L8
	sldi	9, 6, 3
	addi	29, 29, -8
	add	9, 9, 5
	addi	28, 6, -1
	ld	31, -8(9)
	subfc	9, 7, 31
	li	9, 0
	adde	9, 9, 9
	neg	0, 9
	std	9, -8(11)
	and	0, 0, 7
	subf	31, 0, 31
.L8:
	mr	3, 30
	bl	__gmpn_invert_limb
	nop
	li	27, 0
	addic.	6, 28, -1
	blt-	0, .L110
	mtctr	28
	sldi	6, 6, 3
	.align	4
.Lnloop:
	addi	11, 31, 1
	ldx	8, 26, 6
	mulld	0, 31, 3
	mulhdu	10, 31, 3
	addi	6, 6, -8
	addc	0, 0, 8
	adde	10, 10, 11
	mulld	31, 10, 30
	subf	31, 31, 8	
	subfc	0, 31, 0	
	subfe	0, 0, 0	
	and	9, 30, 0
	add	31, 31, 9
	add	10, 0, 10	
	cmpld	7, 31, 30
	bge-	7, .L167
.L51:
	std	10, 0(29)
	addi	29, 29, -8
	bdnz	.Lnloop
	b	.L110

.L164:
	subf	31, 30, 31
	addi	10, 10, 1
	b	.L123
.L167:
	subf	31, 30, 31
	addi	10, 10, 1
	b	.L51
.L165:
	subf	31, 30, 31
	addi	8, 8, 1
	b	.L134

	.size	__gmpn_divrem_1, .-__gmpn_divrem_1

	.section .note.GNU-stack,"",@progbits
