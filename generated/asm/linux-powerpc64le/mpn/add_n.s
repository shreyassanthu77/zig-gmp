
























































  
  
  
  
  
  
  












	.abiversion 2


	.globl	__gmpn_add_nc
	.type	__gmpn_add_nc, @function
	.section	".text"
	.align	5
__gmpn_add_nc:


	addic	0, 7, -1
	b	.Lent

	.size	__gmpn_add_nc, .-__gmpn_add_nc



	.globl	__gmpn_add_n
	.type	__gmpn_add_n, @function
	.section	".text"
	.align	5
__gmpn_add_n:


	addic	0, 0, 0
.Lent:
	andi.	7, 6, 1
	beq	.Lbx0

.Lbx1:	ld	7, 0(4)
	ld	9, 0(5)
	adde	11, 9, 7
	std	11, 0(3)
	cmpldi	6, 6, 1
	beq	6, .Lend
	addi	4, 4, 8
	addi	5, 5, 8
	addi	3, 3, 8

.Lbx0:	addi	0, 6, 2	
	srdi	0, 0, 2	
	mtctr	0

	andi.	7, 6, 2
	bne	.Lmid

	addi	4, 4, 16
	addi	5, 5, 16
	addi	3, 3, 16

	.align	5
.Ltop:	ld	6, -16(4)
	ld	7, -8(4)
	ld	8, -16(5)
	ld	9, -8(5)
	adde	10, 8, 6
	adde	11, 9, 7
	std	10, -16(3)
	std	11, -8(3)
.Lmid:	ld	6, 0(4)
	ld	7, 8(4)
	ld	8, 0(5)
	ld	9, 8(5)
	adde	10, 8, 6
	adde	11, 9, 7
	std	10, 0(3)
	std	11, 8(3)
	addi	4, 4, 32
	addi	5, 5, 32
	addi	3, 3, 32
	bdnz	.Ltop

.Lend:	subfe	3, 0, 0	
	addi	3, 3, 1
	blr

	.size	__gmpn_add_n, .-__gmpn_add_n

	.section .note.GNU-stack,"",@progbits
