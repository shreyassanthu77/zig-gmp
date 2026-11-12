

































































	.abiversion 2


	.globl	__gmpn_mul_1c
	.type	__gmpn_mul_1c, @function
	.section	".text"
	.align	5
__gmpn_mul_1c:


	std	27, -40(1)
	std	26, -48(1)
	mr	12, 7
	b	.Lent

	.size	__gmpn_mul_1c, .-__gmpn_mul_1c


	.globl	__gmpn_mul_1
	.type	__gmpn_mul_1, @function
	.section	".text"
	.align	5
__gmpn_mul_1:


	std	27, -40(1)
	std	26, -48(1)
	li	12, 0		
.Lent:	ld	26, 0(4)

	rldicl.	0, 5, 0,62	
	cmpdi	6, 0, 2
	addic	5, 5, 3		
	srdi	5, 5, 2		
	mtctr	5		
	beq	0, .Lb00
	blt	6, .Lb01
	beq	6, .Lb10

.Lb11:	mr	7, 12
	mulld	0, 26, 6
	mulhdu	12, 26, 6
	addi	4, 4, 8
	addc	0, 0, 7
	std	0, 0(3)
	addi	3, 3, 8
	b	.Lfic

.Lb00:	ld	27, 8(4)
	addi	4, 4, 16
	mulld	0, 26, 6
	mulhdu	5, 26, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	addc	0, 0, 12
	adde	7, 7, 5
	addze	12, 8
	std	0, 0(3)
	std	7, 8(3)
	addi	3, 3, 16
	b	.Lfic

	nop			
.Lb01:	bdnz	.Lgt1
	mulld	0, 26, 6
	mulhdu	8, 26, 6
	addc	0, 0, 12
	std	0, 0(3)
	b	.Lret
.Lgt1:	ld	27, 8(4)
	nop
	mulld	0, 26, 6
	mulhdu	5, 26, 6
	ld	26, 16(4)
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	mulld	9, 26, 6
	mulhdu	10, 26, 6
	addc	0, 0, 12
	adde	7, 7, 5
	adde	9, 9, 8
	addze	12, 10
	std	0, 0(3)
	std	7, 8(3)
	std	9, 16(3)
	addi	4, 4, 24
	addi	3, 3, 24
	b	.Lfic

	nop
.Lfic:	ld	26, 0(4)
.Lb10:	ld	27, 8(4)
	addi	4, 4, 16
	bdz	.Lend

.Ltop:	mulld	0, 26, 6
	mulhdu	5, 26, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	26, 0(4)
	ld	27, 8(4)
	adde	0, 0, 12
	adde	7, 7, 5
	mulld	9, 26, 6
	mulhdu	10, 26, 6
	mulld	11, 27, 6
	mulhdu	12, 27, 6
	ld	26, 16(4)
	ld	27, 24(4)
	std	0, 0(3)
	adde	9, 9, 8
	std	7, 8(3)
	adde	11, 11, 10
	std	9, 16(3)
	addi	4, 4, 32
	std	11, 24(3)

	addi	3, 3, 32
	bdnz	.Ltop

.Lend:	mulld	0, 26, 6
	mulhdu	5, 26, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	adde	0, 0, 12
	adde	7, 7, 5
	std	0, 0(3)
	std	7, 8(3)
.Lret:	addze	3, 8
	ld	27, -40(1)
	ld	26, -48(1)
	blr

	.size	__gmpn_mul_1, .-__gmpn_mul_1

	.section .note.GNU-stack,"",@progbits
