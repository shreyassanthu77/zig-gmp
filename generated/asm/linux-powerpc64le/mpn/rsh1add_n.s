


























































  
  
  
  












	.abiversion 2


	.globl	__gmpn_rsh1add_n
	.type	__gmpn_rsh1add_n, @function
	.section	".text"
	.align	5
__gmpn_rsh1add_n:


	ld	8, 0(4)
	ld	10, 0(5)

	cmpdi	6, 6, 2

	addi	0, 6, 1
	srdi	0, 0, 2
	mtctr	0			

	andi.	0, 6, 1
	bne	0, .Lbx1

.Lbx0:	addc	12, 10, 8
	ld	8, 8(4)
	ld	10, 8(5)
	adde	0, 10, 8
	ble	6, .Ln2
	ld	8, 16(4)
	ld	10, 16(5)
	srdi	9, 12, 1
	rldicl	11, 12, 0, 63		
	adde	12, 10, 8
	andi.	6, 6, 2
	bne	0, .Lb10
.Lb00:	addi	3, 3, -24
	b	.Llo0
.Lb10:	addi	4, 4, 16
	addi	5, 5, 16
	addi	3, 3, -8
	b	.Llo2

	.align	4
.Lbx1:	addc	0, 10, 8
	ble	6, .Ln1
	ld	8, 8(4)
	ld	10, 8(5)
	adde	12, 10, 8
	ld	8, 16(4)
	ld	10, 16(5)
	srdi	7, 0, 1
	rldicl	11, 0, 0, 63		
	adde	0, 10, 8
	andi.	6, 6, 2
	bne	0, .Lb11
.Lb01:	addi	4, 4, 8
	addi	5, 5, 8
	addi	3, 3, -16
	b	.Llo1
.Lb11:	addi	4, 4, 24
	addi	5, 5, 24
	bdz	.Lend

	.align	5
.Ltop:	ld	8, 0(4)
	ld	10, 0(5)
	srdi	9, 12, 1
	rldimi	7, 12, 63, 0
	std	7, 0(3)
	adde	12, 10, 8
.Llo2:	ld	8, 8(4)
	ld	10, 8(5)
	srdi	7, 0, 1
	rldimi	9, 0, 63, 0
	std	9, 8(3)
	adde	0, 10, 8
.Llo1:	ld	8, 16(4)
	ld	10, 16(5)
	srdi	9, 12, 1
	rldimi	7, 12, 63, 0
	std	7, 16(3)
	adde	12, 10, 8
.Llo0:	ld	8, 24(4)
	ld	10, 24(5)
	srdi	7, 0, 1
	rldimi	9, 0, 63, 0
	std	9, 24(3)
	adde	0, 10, 8
	addi	4, 4, 32
	addi	5, 5, 32
	addi	3, 3, 32
	bdnz	.Ltop

.Lend:	srdi	9, 12, 1
	rldimi	7, 12, 63, 0
	std	7, 0(3)
.Lcj2:	srdi	7, 0, 1
	rldimi	9, 0, 63, 0
	std	9, 8(3)
.Lcj1:	adde	12, 12, 12		
	rldimi	7, 12, 63, 0
	std	7, 16(3)
	mr	3, 11
	blr

.Ln1:	srdi	7, 0, 1
	rldicl	11, 0, 0, 63		
	adde	12, 12, 12		
	rldimi	7, 12, 63, 0
	std	7, 0(3)
	mr	3, 11
	blr

.Ln2:	addi	3, 3, -8
	srdi	9, 12, 1
	rldicl	11, 12, 0, 63		
	b	.Lcj2

	.size	__gmpn_rsh1add_n, .-__gmpn_rsh1add_n

	.section .note.GNU-stack,"",@progbits
