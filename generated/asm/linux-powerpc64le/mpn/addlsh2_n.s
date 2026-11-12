








































































  
  
  
  
  



  
  
 



	.abiversion 2


	.globl	__gmpn_addlsh2_n
	.type	__gmpn_addlsh2_n, @function
	.section	".text"
	.align	5
__gmpn_addlsh2_n:


	rldic	7, 6, 3, 59
	add	4, 4, 7
	add	5, 5, 7
	add	3, 3, 7


	addic	0, 6, 3	

	srdi	0, 0, 2
	mtctr	0

	andi.	0, 6, 1
	beq	.Lbx0

.Lbx1:	andi.	0, 6, 2
	li	0, 0
	bne	.Llo3
	b	.Llo1

.Lbx0:	andi.	0, 6, 2
	li	9, 0
	bne	.Llo2

	.align	5
.Ltop:	addi	3, 3, 32
	ld	10, 0(5)
	addi	5, 5, 32
	rldimi	9, 10, 2, 0
	ld	6, 0(4)
	addi	4, 4, 32
	srdi	0, 10, 62
	adde	9, 9, 6
	std	9, -32(3)
.Llo3:	ld	11, -24(5)
	rldimi	0, 11, 2, 0
	ld	7, -24(4)
	srdi	9, 11, 62
	adde	0, 0, 7
	std	0, -24(3)
.Llo2:	ld	10, -16(5)
	rldimi	9, 10, 2, 0
	ld	6, -16(4)
	srdi	0, 10, 62
	adde	9, 9, 6
	std	9, -16(3)
.Llo1:	ld	11, -8(5)
	rldimi	0, 11, 2, 0
	ld	7, -8(4)
	srdi	9, 11, 62
	adde	0, 0, 7
	std	0, -8(3)
	bdnz	.Ltop		

	addze	3, 9
	blr

	.size	__gmpn_addlsh2_n, .-__gmpn_addlsh2_n


	.section .note.GNU-stack,"",@progbits
