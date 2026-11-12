






























































 



  
  
  





	.abiversion 2


	.globl	__gmpn_addmul_2
	.type	__gmpn_addmul_2, @function
	.section	".text"
	.align	5
__gmpn_addmul_2:




	std	31, -8(1)

	andi.	12, 5, 1
	addi	0, 5, 1
	srdi	0, 0, 1
	mtctr	0
	ld	11, 0(6)		
	li	10, 0
	ld	12, 8(6)		
	li	31, 0
	ld	5, 0(4)
	beq	.Llo0
	addi	4, 4, -8
	addi	3, 3, -8
	b	.Llo1

	.align	5
.Ltop:
	ld	0, -8(3)
	ld	5, 0(4)
	addc	6, 6, 0
	adde	7, 7, 8
	addze	9, 9
	addc	6, 6, 10
	adde	10, 7, 31
	std	6, -8(3)
	addze	31, 9
.Llo0:	mulld	6, 11, 5		
	mulhdu	7, 11, 5		
	mulld	8, 12, 5		
	mulhdu	9, 12, 5		
	ld	0, 0(3)
	ld	5, 8(4)
	addc	6, 6, 0
	adde	7, 7, 8
	addze	9, 9
	addc	6, 6, 10
	adde	10, 7, 31
	std	6, 0(3)
	addze	31, 9
.Llo1:	mulld	6, 11, 5		
	mulhdu	7, 11, 5		
	addi	4, 4, 16
	addi	3, 3, 16
	mulld	8, 12, 5		
	mulhdu	9, 12, 5		
	bdnz	.Ltop

.Lend:
	ld	0, -8(3)
	addc	6, 6, 0
	adde	7, 7, 8
	addze	9, 9
	addc	6, 6, 10
	std	6, -8(3)
	adde	10, 7, 31
	addze	31, 9
	std	10, 0(3)
	mr	3, 31


	ld	31, -8(1)

	blr

	.size	__gmpn_addmul_2, .-__gmpn_addmul_2

	.section .note.GNU-stack,"",@progbits
