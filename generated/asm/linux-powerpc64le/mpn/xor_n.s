






















































































	
	











	.abiversion 2


	.globl	__gmpn_xor_n
	.type	__gmpn_xor_n, @function
	.section	".text"
	.align	5
__gmpn_xor_n:


	ld	8, 0(4)	
	ld	9, 0(5)	
	addi	6, 6, 3	
	rldic.	0, 6, 3, 59	
	cmpldi	6, 0, 16	


	rldicl	6, 6, 62, 2	
	mtctr	6

	ld	6, 0(4)	
	ld	7, 0(5)	

	add	5, 5, 0	
	add	4, 4, 0	
	add	3, 3, 0	

	beq	0, .LL01
	blt	6, .LL10
	beq	6, .LL11
	b	.LL00

.Loop:	ld	8, -24(4)
	ld	9, -24(5)
	xor	10, 6, 7
	std	10, -32(3)
.LL00:	ld	6, -16(4)
	ld	7, -16(5)
	xor	10, 8, 9
	std	10, -24(3)
.LL11:	ld	8, -8(4)
	ld	9, -8(5)
	xor	10, 6, 7
	std	10, -16(3)
.LL10:	ld	6, 0(4)
	ld	7, 0(5)
	xor	10, 8, 9
	std	10, -8(3)
.LL01:	addi	5, 5, 32
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Loop

	xor	10, 6, 7
	std	10, -32(3)
	blr

	.size	__gmpn_xor_n, .-__gmpn_xor_n

	.section .note.GNU-stack,"",@progbits
