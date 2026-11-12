

























































	.abiversion 2


	.globl	__gmpn_mod_34lsub1
	.type	__gmpn_mod_34lsub1, @function
	.section	".text"
	.align	5
__gmpn_mod_34lsub1:


	li	8, 0
	li	9, 0
	li	10, 0
	li	11, 0

	cmpdi	6, 4, 3
	blt	6, .Llt3

	li	0, -0x5556		
	rldimi	0, 0, 16, 32		
	rldimi	0, 0, 32, 63		
	mulhdu	0, 0, 4
	srdi	0, 0, 1		
	mtctr	0

	ld	5, 0(3)
	ld	6, 8(3)
	ld	7, 16(3)
	addi	3, 3, 24
	bdz	.Lend

	.align	4
.Ltop:	addc	8, 8, 5
	nop
	ld	5, 0(3)
	adde	9, 9, 6
	ld	6, 8(3)
	adde	10, 10, 7
	ld	7, 16(3)
	addi	3, 3, 48
	addze	11, 11
	bdz	.Lendx
	addc	8, 8, 5
	nop
	ld	5, -24(3)
	adde	9, 9, 6
	ld	6, -16(3)
	adde	10, 10, 7
	ld	7, -8(3)
	addze	11, 11
	bdnz	.Ltop

	addi	3, 3, 24
.Lendx:
	addi	3, 3, -24

.Lend:	addc	8, 8, 5
	adde	9, 9, 6
	adde	10, 10, 7
	addze	11, 11

	sldi	5, 0, 1
	add	5, 5, 0		
	sub	4, 4, 5		
.Llt3:	cmpdi	6, 4, 1
	blt	6, .L2

	ld	5, 0(3)
	addc	8, 8, 5
	li	6, 0
	beq	6, .L1

	ld	6, 8(3)
.L1:	adde	9, 9, 6
	addze	10, 10
	addze	11, 11

.L2:	rldicl	0, 8, 0, 16		
	srdi	3, 8, 48		
	rldic	4, 9, 16, 16		
	srdi	5, 9, 32		
	rldic	6, 10, 32, 16		
	srdi	7, 10, 16		

	add	0, 0, 3
	add	4, 4, 5
	add	6, 6, 7

	add	0, 0, 4
	add	6, 6, 11

	add	3, 0, 6
	blr

	.size	__gmpn_mod_34lsub1, .-__gmpn_mod_34lsub1




	.section .note.GNU-stack,"",@progbits
