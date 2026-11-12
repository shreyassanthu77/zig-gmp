
































































  
  
  
  	
  






	.abiversion 2


	.globl	__gmpn_addmul_1
	.type	__gmpn_addmul_1, @function
	.section	".text"
	.align	5
__gmpn_addmul_1:


	std	31, -8(1)
	rldicl.	0, 5, 0,62	
	std	30, -16(1)
	cmpdi	6, 0, 2
	std	29, -24(1)
	addi	5, 5, 3		
	std	28, -32(1)
	srdi	5, 5, 2		
	std	27, -40(1)
	mtctr	5		
	beq	0, .Lb00
	blt	6, .Lb01
	beq	6, .Lb10

.Lb11:	ld	9, 0(4)
	ld	28, 0(3)
	mulld	0, 9, 6
	mulhdu	12, 9, 6
	addc	0, 0, 28
	std	0, 0(3)
	addi	3, 3, 8
	ld	9, 8(4)
	ld	27, 16(4)
	addi	4, 4, 24

	b	.Lbot

	.align	4
.Lb00:	ld	9, 0(4)
	ld	27, 8(4)
	ld	28, 0(3)
	ld	29, 8(3)
	mulld	0, 9, 6
	mulhdu	5, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	addc	7, 7, 5
	addze	12, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addi	3, 3, 16
	ld	9, 16(4)
	ld	27, 24(4)
	addi	4, 4, 32

	b	.Lbot

	.align	4
.Lb01:	bdnz	.Lgt1
	ld	9, 0(4)
	ld	11, 0(3)
	mulld	0, 9, 6
	mulhdu	8, 9, 6
	addc	0, 0, 11
	std	0, 0(3)


	addze	3, 8
	blr
.Lgt1:	ld	9, 0(4)
	ld	27, 8(4)
	mulld	0, 9, 6
	mulhdu	5, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 16(4)
	ld	28, 0(3)
	ld	29, 8(3)
	ld	30, 16(3)
	mulld	11, 9, 6
	mulhdu	10, 9, 6
	addc	7, 7, 5
	adde	11, 11, 8
	addze	12, 10
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	adde	11, 11, 30
	std	11, 16(3)
	addi	3, 3, 24
	ld	9, 24(4)
	ld	27, 32(4)
	addi	4, 4, 40

	b	.Lbot

.Lb10:	addic	0, 0, 0
	li	12, 0		
	ld	9, 0(4)
	ld	27, 8(4)
	bdz	.Lend
	addi	4, 4, 16

	.align	4
.Ltop:	mulld	0, 9, 6
	mulhdu	5, 9, 6	
	mulld	7, 27, 6
	mulhdu	8, 27, 6	
	ld	9, 0(4)
	ld	28, 0(3)
	ld	27, 8(4)
	ld	29, 8(3)
	adde	0, 0, 12	
	adde	7, 7, 5	
	mulld	5, 9, 6
	mulhdu	10, 9, 6	
	mulld	11, 27, 6
	mulhdu	12, 27, 6	
	ld	9, 16(4)
	ld	30, 16(3)
	ld	27, 24(4)
	ld	31, 24(3)
	adde	5, 5, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 0(3)	
	adde	7, 7, 29	
	std	7, 8(3)	
	adde	5, 5, 30	
	std	5, 16(3)	
	adde	11, 11, 31	
	std	11, 24(3)	
	addi	4, 4, 32

	addi	3, 3, 32
.Lbot:

	bdnz	.Ltop

.Lend:	mulld	0, 9, 6
	mulhdu	5, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	28, 0(3)
	ld	29, 8(3)
	adde	0, 0, 12
	adde	7, 7, 5
	addze	8, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)


	addze	3, 8
	ld	31, -8(1)
	ld	30, -16(1)
	ld	29, -24(1)
	ld	28, -32(1)
	ld	27, -40(1)
	blr

	.size	__gmpn_addmul_1, .-__gmpn_addmul_1

	.section .note.GNU-stack,"",@progbits
