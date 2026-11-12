
























































	.abiversion 2


	.globl	__gmpn_popcount
	.type	__gmpn_popcount, @function
	.section	".text"
	.align	5
__gmpn_popcount:


	addi	0, 4, 1

	srdi	0, 0, 1	
	mtctr	0

	andi.	0, 4, 1

	li	0, 0
	li	12, 0
	beq	.Levn

.Lodd:	ld	4, 0(3)
	addi	3, 3, 8
	.long 2088764404
	bdz	.Le1

.Levn:	ld	4, 0(3)
	ld	5, 8(3)
	.long 2089288692
	.long 2091451380
	bdz	.Le2

	ld	4, 16(3)
	ld	5, 24(3)
	bdz	.Le4
	addi	3, 3, 32

.Ltop:	add	0, 0, 8
	.long 2089288692
	ld	4, 0(3)
	add	12, 12, 9
	.long 2091451380
	ld	5, 8(3)
	addi	3, 3, 16
	bdnz	.Ltop

.Le4:	add	0, 0, 8
	.long 2089288692
	add	12, 12, 9
	.long 2091451380
.Le2:	add	0, 0, 8
	add	12, 12, 9
.Le1:	add	3, 0, 12
	blr

	.size	__gmpn_popcount, .-__gmpn_popcount

	.section .note.GNU-stack,"",@progbits
