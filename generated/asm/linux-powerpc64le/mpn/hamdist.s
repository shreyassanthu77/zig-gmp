

























































	.abiversion 2


	.globl	__gmpn_hamdist
	.type	__gmpn_hamdist, @function
	.section	".text"
	.align	5
__gmpn_hamdist:


	std	30, -16(1)
	std	31, -8(1)

	addi	0, 5, 1

	srdi	0, 0, 1	
	mtctr	0

	andi.	0, 5, 1

	li	0, 0
	li	12, 0

	beq	.Levn

.Lodd:	ld	6, 0(3)
	addi	3, 3, 8
	ld	8, 0(4)
	addi	4, 4, 8
	xor	10, 6, 8
	.long 2101347316
	bdz	.Le1

.Levn:	ld	6, 0(3)
	ld	8, 0(4)
	ld	7, 8(3)
	ld	9, 8(4)
	xor	10, 6, 8
	addi	3, 3, 16
	addi	4, 4, 16
	li	30, 0
	li	31, 0
	bdz	.Lend

	nop
	nop

.Ltop:	add	0, 0, 30
	ld	6, 0(3)
	ld	8, 0(4)
	xor	11, 7, 9
	.long 2103313396
	add	12, 12, 31
	ld	7, 8(3)
	ld	9, 8(4)
	xor	10, 6, 8
	.long 2105476084
	addi	3, 3, 16
	addi	4, 4, 16
	bdnz	.Ltop

.Lend:	add	0, 0, 30
	xor	11, 7, 9
	.long 2103313396
	add	12, 12, 31
	.long 2105476084

	add	0, 0, 30
	add	12, 12, 31
.Le1:	add	3, 0, 12
	ld	30, -16(1)
	ld	31, -8(1)
	blr

	.size	__gmpn_hamdist, .-__gmpn_hamdist

	.section .note.GNU-stack,"",@progbits
