































































	.abiversion 2


	.globl	__gmpn_mul_basecase
	.type	__gmpn_mul_basecase, @function
	.section	".text"
	.align	5
__gmpn_mul_basecase:





	cmpdi	0, 5, 2
	bgt	0, .Lun_gt2
	cmpdi	6, 7, 1
	ld	7, 0(6)
	ld	5, 0(4)
	mulld	8, 5, 7	
	mulhdu	9, 5, 7	
	std	8, 0(3)
	beq	0, .L2x
	std	9, 8(3)
	blr
	.align	4
.L2x:	ld	0, 8(4)
	mulld	8, 0, 7	
	mulhdu	10, 0, 7	
	addc	9, 9, 8
	addze	10, 10
	bne	6, .L2x2
	std	9, 8(3)
	std	10, 16(3)
	blr
	.align	4
.L2x2:	ld	6, 8(6)
	nop
	mulld	8, 5, 6	
	mulhdu	11, 5, 6	
	addc	9, 9, 8
	std	9, 8(3)
	adde	11, 11, 10
	mulld	12, 0, 6	
	mulhdu	0, 0, 6	
	addze	0, 0
	addc	11, 11, 12
	addze	0, 0
	std	11, 16(3)
	std	0, 24(3)
	blr

.Lun_gt2:
	std	31, -8(1)
	std	30, -16(1)
	std	29, -24(1)
	std	28, -32(1)
	std	27, -40(1)
	std	26, -48(1)
	std	25, -56(1)
	std	24, -64(1)
	std	23, -72(1)
	std	22, -80(1)

	mr	22, 3
	mr	23, 4

	ld	25, 0(6)	
	addi	6, 6, 8
	ld	26, 0(4)

	rldicl.	0, 5, 0,62	
	cmpdi	6, 0, 2
	addi	5, 5, 1	
	srdi	5, 5, 2	
	mtctr	5		
	beq	0, .Lb0
	blt	6, .Lb1
	beq	6, .Lb2


	.align	4
.Lb3:	mulld	0, 26, 25
	mulhdu	12, 26, 25
	addic	0, 0, 0
	std	0, 0(3)
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_m_3

	.align	4
.Llo_m_3:
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 24(4)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	27, 32(4)
	nop
	adde	0, 0, 12
	adde	24, 24, 31
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	ld	26, 40(4)
	nop
	mulld	11, 27, 25
	mulhdu	12, 27, 25
	ld	27, 48(4)
	std	0, 8(3)
	adde	9, 9, 8
	std	24, 16(3)
	adde	11, 11, 10
	std	9, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Llo_m_3

	.align	4
.Lend_m_3:
	mulld	0, 26, 25
	mulhdu	31, 26, 25

	mulld	24, 27, 25
	mulhdu	8, 27, 25

	adde	0, 0, 12
	adde	24, 24, 31

	std	0, 8(3)
	std	24, 16(3)
	addze	8, 8
	std	8, 24(3)
	addic.	7, 7, -1
	beq	.Lret

	.align	4
.Louter_lo_3:
	mtctr	5		
	addi	3, 22, 8
	mr	4, 23
	addi	22, 22, 8
	ld	25, 0(6)	
	addi	6, 6, 8
	ld	26, 0(4)
	ld	28, 0(3)
	mulld	0, 26, 25
	mulhdu	12, 26, 25
	addc	0, 0, 28
	std	0, 0(3)
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_3

	.align	4		
.Llo_3:
	mulld	0, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 24(4)	
	ld	28, 8(3)	
	mulld	24, 27, 25	
	mulhdu	8, 27, 25	
	ld	27, 32(4)	
	ld	29, 16(3)	
	adde	0, 0, 12	
	adde	24, 24, 10	
	mulld	9, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 40(4)	
	ld	30, 24(3)	
	mulld	11, 27, 25	
	mulhdu	12, 27, 25	
	ld	27, 48(4)	
	ld	31, 32(3)	
	adde	9, 9, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 8(3)	
	adde	24, 24, 29	
	std	24, 16(3)	
	adde	9, 9, 30	
	std	9, 24(3)	
	adde	11, 11, 31	
	std	11, 32(3)	
	addi	4, 4, 32	
	addi	3, 3, 32	
	bdnz	.Llo_3	

	.align	4
.Lend_3:
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	ld	28, 8(3)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	29, 16(3)
	nop
	adde	0, 0, 12
	adde	24, 24, 10
	addze	8, 8
	addc	0, 0, 28
	std	0, 8(3)
	adde	24, 24, 29
	std	24, 16(3)
	addze	8, 8
	std	8, 24(3)

	addic.	7, 7, -1
	bne	.Louter_lo_3
	b	.Lret


	.align	4
.Lb0:	ld	27, 8(4)
	addi	4, 4, 8
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	addc	24, 24, 10
	addze	12, 8
	std	0, 0(3)
	std	24, 8(3)
	addi	3, 3, 8
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_m_0

	.align	4
.Llo_m_0:
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 24(4)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	27, 32(4)
	nop
	adde	0, 0, 12
	adde	24, 24, 31
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	ld	26, 40(4)
	nop
	mulld	11, 27, 25
	mulhdu	12, 27, 25
	ld	27, 48(4)
	std	0, 8(3)
	adde	9, 9, 8
	std	24, 16(3)
	adde	11, 11, 10
	std	9, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Llo_m_0

	.align	4
.Lend_m_0:
	mulld	0, 26, 25
	mulhdu	31, 26, 25

	mulld	24, 27, 25
	mulhdu	8, 27, 25

	adde	0, 0, 12
	adde	24, 24, 31

	std	0, 8(3)
	addze	8, 8
	std	24, 16(3)
	addic.	7, 7, -1
	std	8, 24(3)
	nop
	beq	.Lret

	.align	4
.Louter_lo_0:
	mtctr	5		
	addi	3, 22, 16
	addi	4, 23, 8
	addi	22, 22, 8
	ld	25, 0(6)	
	addi	6, 6, 8
	ld	26, -8(4)
	ld	27, 0(4)
	ld	28, -8(3)
	ld	29, 0(3)
	nop
	nop
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	addc	24, 24, 10
	addze	12, 8
	addc	0, 0, 28
	std	0, -8(3)
	adde	24, 24, 29
	std	24, 0(3)
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_0

	.align	4		
.Llo_0:
	mulld	0, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 24(4)	
	ld	28, 8(3)	
	mulld	24, 27, 25	
	mulhdu	8, 27, 25	
	ld	27, 32(4)	
	ld	29, 16(3)	
	adde	0, 0, 12	
	adde	24, 24, 10	
	mulld	9, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 40(4)	
	ld	30, 24(3)	
	mulld	11, 27, 25	
	mulhdu	12, 27, 25	
	ld	27, 48(4)	
	ld	31, 32(3)	
	adde	9, 9, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 8(3)	
	adde	24, 24, 29	
	std	24, 16(3)	
	adde	9, 9, 30	
	std	9, 24(3)	
	adde	11, 11, 31	
	std	11, 32(3)	
	addi	4, 4, 32	
	addi	3, 3, 32	
	bdnz	.Llo_0	

	.align	4
.Lend_0:
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	ld	28, 8(3)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	29, 16(3)
	nop
	adde	0, 0, 12
	adde	24, 24, 10
	addze	8, 8
	addic.	7, 7, -1
	addc	0, 0, 28
	std	0, 8(3)
	adde	24, 24, 29
	std	24, 16(3)
	addze	8, 8
	std	8, 24(3)
	bne	.Louter_lo_0
	b	.Lret


	.align	4
.Lb1:	ld	27, 8(4)
	nop
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 16(4)
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	addc	24, 24, 31
	adde	9, 9, 8
	addze	12, 10
	std	0, 0(3)
	std	24, 8(3)
	std	9, 16(3)
	addi	4, 4, 16
	addi	3, 3, 16
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_m_1

	.align	4
.Llo_m_1:
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 24(4)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	27, 32(4)
	nop
	adde	0, 0, 12
	adde	24, 24, 31
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	ld	26, 40(4)
	nop
	mulld	11, 27, 25
	mulhdu	12, 27, 25
	ld	27, 48(4)
	std	0, 8(3)
	adde	9, 9, 8
	std	24, 16(3)
	adde	11, 11, 10
	std	9, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Llo_m_1

	.align	4
.Lend_m_1:
	mulld	0, 26, 25
	mulhdu	31, 26, 25

	mulld	24, 27, 25
	mulhdu	8, 27, 25

	adde	0, 0, 12
	adde	24, 24, 31

	std	0, 8(3)
	addze	8, 8
	std	24, 16(3)
	addic.	7, 7, -1
	std	8, 24(3)
	nop
	beq	.Lret

	.align	4
.Louter_lo_1:
	mtctr	5		
	addi	3, 22, 24
	addi	4, 23, 16
	addi	22, 22, 8
	ld	25, 0(6)	
	addi	6, 6, 8
	ld	26, -16(4)
	ld	27, -8(4)
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 0(4)
	ld	28, -16(3)
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	29, -8(3)
	ld	30, 0(3)
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	addc	24, 24, 31
	adde	9, 9, 8
	addze	12, 10
	addc	0, 0, 28
	std	0, -16(3)
	adde	24, 24, 29
	std	24, -8(3)
	adde	9, 9, 30
	std	9, 0(3)
	ld	26, 8(4)
	ld	27, 16(4)
	bdz	.Lend_1

	.align	4		
.Llo_1:
	mulld	0, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 24(4)	
	ld	28, 8(3)	
	mulld	24, 27, 25	
	mulhdu	8, 27, 25	
	ld	27, 32(4)	
	ld	29, 16(3)	
	adde	0, 0, 12	
	adde	24, 24, 10	
	mulld	9, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 40(4)	
	ld	30, 24(3)	
	mulld	11, 27, 25	
	mulhdu	12, 27, 25	
	ld	27, 48(4)	
	ld	31, 32(3)	
	adde	9, 9, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 8(3)	
	adde	24, 24, 29	
	std	24, 16(3)	
	adde	9, 9, 30	
	std	9, 24(3)	
	adde	11, 11, 31	
	std	11, 32(3)	
	addi	4, 4, 32	
	addi	3, 3, 32	
	bdnz	.Llo_1	

	.align	4
.Lend_1:
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	ld	28, 8(3)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	29, 16(3)
	nop
	adde	0, 0, 12
	adde	24, 24, 10
	addze	8, 8
	addic.	7, 7, -1
	addc	0, 0, 28
	std	0, 8(3)
	adde	24, 24, 29
	std	24, 16(3)
	addze	8, 8
	std	8, 24(3)
	bne	.Louter_lo_1
	b	.Lret


	.align	4
.Lb2:	ld	27, 8(4)
	addi	4, 4, -8
	addi	3, 3, -8
	li	12, 0
	addic	12, 12, 0

	.align	4
.Llo_m_2:
	mulld	0, 26, 25
	mulhdu	31, 26, 25
	ld	26, 24(4)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	27, 32(4)
	nop
	adde	0, 0, 12
	adde	24, 24, 31
	mulld	9, 26, 25
	mulhdu	10, 26, 25
	ld	26, 40(4)
	nop
	mulld	11, 27, 25
	mulhdu	12, 27, 25
	ld	27, 48(4)
	std	0, 8(3)
	adde	9, 9, 8
	std	24, 16(3)
	adde	11, 11, 10
	std	9, 24(3)
	addi	4, 4, 32
	std	11, 32(3)

	addi	3, 3, 32
	bdnz	.Llo_m_2

	.align	4
.Lend_m_2:
	mulld	0, 26, 25
	mulhdu	31, 26, 25

	mulld	24, 27, 25
	mulhdu	8, 27, 25

	adde	0, 0, 12
	adde	24, 24, 31

	std	0, 8(3)
	addze	8, 8
	std	24, 16(3)
	addic.	7, 7, -1
	std	8, 24(3)
	nop
	beq	.Lret

	.align	4
.Louter_lo_2:
	mtctr	5		
	addi	3, 22, 0
	addi	4, 23, -8
	addi	22, 22, 8
	ld	25, 0(6)	
	addi	6, 6, 8
	ld	26, 8(4)
	ld	27, 16(4)
	li	12, 0
	addic	12, 12, 0

	.align	4		
.Llo_2:
	mulld	0, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 24(4)	
	ld	28, 8(3)	
	mulld	24, 27, 25	
	mulhdu	8, 27, 25	
	ld	27, 32(4)	
	ld	29, 16(3)	
	adde	0, 0, 12	
	adde	24, 24, 10	
	mulld	9, 26, 25	
	mulhdu	10, 26, 25	
	ld	26, 40(4)	
	ld	30, 24(3)	
	mulld	11, 27, 25	
	mulhdu	12, 27, 25	
	ld	27, 48(4)	
	ld	31, 32(3)	
	adde	9, 9, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 8(3)	
	adde	24, 24, 29	
	std	24, 16(3)	
	adde	9, 9, 30	
	std	9, 24(3)	
	adde	11, 11, 31	
	std	11, 32(3)	
	addi	4, 4, 32	
	addi	3, 3, 32	
	bdnz	.Llo_2	

	.align	4
.Lend_2:
	mulld	0, 26, 25
	mulhdu	10, 26, 25
	ld	28, 8(3)
	nop
	mulld	24, 27, 25
	mulhdu	8, 27, 25
	ld	29, 16(3)
	nop
	adde	0, 0, 12
	adde	24, 24, 10
	addze	8, 8
	addic.	7, 7, -1
	addc	0, 0, 28
	std	0, 8(3)
	adde	24, 24, 29
	std	24, 16(3)
	addze	8, 8
	std	8, 24(3)
	bne	.Louter_lo_2
	b	.Lret


.Lret:	ld	31, -8(1)
	ld	30, -16(1)
	ld	29, -24(1)
	ld	28, -32(1)
	ld	27, -40(1)
	ld	26, -48(1)
	ld	25, -56(1)
	ld	24, -64(1)
	ld	23, -72(1)
	ld	22, -80(1)
	blr

	.size	__gmpn_mul_basecase, .-__gmpn_mul_basecase

	.section .note.GNU-stack,"",@progbits
