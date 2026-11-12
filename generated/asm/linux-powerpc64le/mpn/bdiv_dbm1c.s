































































	.abiversion 2


	.globl	__gmpn_bdiv_dbm1c
	.type	__gmpn_bdiv_dbm1c, @function
	.section	".text"
	.align	5
__gmpn_bdiv_dbm1c:


	ld	0, 0(4)

	rldicl.	12, 5, 0,62
	cmpldi	6, 12, 2
	cmpldi	7, 5, 4
	addi	5, 5, 1
	srwi	5, 5, 2
	mtctr	5
	beq	0, .Lb00
	blt	6, .Lb01
	beq	6, .Lb10

	.align	4
.Lb11:	mulld	5, 0, 6
	mulhdu	12, 0, 6
	ld	0, 8(4)
	addi	4, 4, -24
	addi	3, 3, -24
	b	.L3

	.align	4
.Lb00:	mulld	9, 0, 6
	mulhdu	8, 0, 6
	addi	4, 4, -16
	addi	3, 3, -16
	b	.L0

	.align	4
.Lb01:	mulld	5, 0, 6
	mulhdu	12, 0, 6
	addi	3, 3, -8
	ble	7, .Le1
	ld	0, 8(4)
	addi	4, 4, -8
	b	.L1

	.align	4
.Lb10:	mulld	9, 0, 6
	mulhdu	8, 0, 6
	ble	7, .Le2

	.align	4
.Ltop:	subfc	11, 9, 7
	ld	10, 8(4)
	ld	0, 16(4)
	subfe	7, 8, 11
	std	11, 0(3)
	mulld	5, 10, 6
	mulhdu	12, 10, 6
.L1:	mulld	9, 0, 6
	mulhdu	8, 0, 6
	subfc	11, 5, 7
	subfe	7, 12, 11
	std	11, 8(3)
.L0:	subfc	11, 9, 7
	ld	10, 24(4)
	ld	0, 32(4)
	subfe	7, 8, 11
	std	11, 16(3)
	mulld	5, 10, 6
	mulhdu	12, 10, 6
.L3:	mulld	9, 0, 6
	mulhdu	8, 0, 6
	subfc	11, 5, 7
	subfe	7, 12, 11
	std	11, 24(3)
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Ltop

.Le2:	ld	10, 8(4)
	mulld	5, 10, 6
	mulhdu	12, 10, 6
	subfc	11, 9, 7
	subfe	7, 8, 11
	std	11, 0(3)
.Le1:	subfc	11, 5, 7
	std	11, 8(3)
	subfe	3, 12, 11
	blr

	.size	__gmpn_bdiv_dbm1c, .-__gmpn_bdiv_dbm1c

	.section .note.GNU-stack,"",@progbits
