


























































	.abiversion 2


	.globl	__gmpn_com
	.type	__gmpn_com, @function
	.section	".text"
	.align	5
__gmpn_com:





	cmpdi	0, 5, 4
	blt	.Lsml

	addi	10, 5, 4
	srdi	10, 10, 3
	mtctr	10

	andi.	0, 5, 1
	rlwinm	11, 5, 0,30,30
	rlwinm	12, 5, 0,29,29
	cmpdi	6, 11, 0
	cmpdi	7, 12, 0

	beq	0, .Lxx0
.Lxx1:	ld	6, 0(4)
	addi	4, 4, 8
	nor	6, 6, 6
	std	6, 0(3)
	addi	3, 3, 8

.Lxx0:	bne	6, .Lx10
.Lx00:	ld	6, 0(4)
	ld	7, 8(4)
	bne	7, .L100
.L000:	addi	3, 3, -32
	b	.Llo0
.L100:	addi	4, 4, -32
	b	.Llo4
.Lx10:	ld	8, 0(4)
	ld	9, 8(4)
	bne	7, .L110
.L010:	addi	4, 4, 16
	addi	3, 3, -16
	b	.Llo2
.L110:	addi	4, 4, -16
	addi	3, 3, -48
	b	.Llo6

.Lsml:	mtctr	5
.Lt:	ld	6, 0(4)
	addi	4, 4, 8
	nor	6, 6, 6
	std	6, 0(3)
	addi	3, 3, 8
	bdnz	.Lt
	blr

	.align	5
.Ltop:	nor	6, 6, 6
	nor	7, 7, 7
	std	6, 0(3)
	std	7, 8(3)
.Llo2:	ld	6, 0(4)
	ld	7, 8(4)
	nor	8, 8, 8
	nor	9, 9, 9
	std	8, 16(3)
	std	9, 24(3)
.Llo0:	ld	8, 16(4)
	ld	9, 24(4)
	nor	6, 6, 6
	nor	7, 7, 7
	std	6, 32(3)
	std	7, 40(3)
.Llo6:	ld	6, 32(4)
	ld	7, 40(4)
	nor	8, 8, 8
	nor	9, 9, 9
	std	8, 48(3)
	std	9, 56(3)
	addi	3, 3, 64
.Llo4:	ld	8, 48(4)
	ld	9, 56(4)
	addi	4, 4, 64
	bdnz	.Ltop

.Lend:	nor	6, 6, 6
	nor	7, 7, 7
	std	6, 0(3)
	std	7, 8(3)
	nor	8, 8, 8
	nor	9, 9, 9
	std	8, 16(3)
	std	9, 24(3)
	blr

	.size	__gmpn_com, .-__gmpn_com

	.section .note.GNU-stack,"",@progbits
