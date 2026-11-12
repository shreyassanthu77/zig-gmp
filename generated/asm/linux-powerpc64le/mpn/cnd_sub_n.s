





























































  
  
  
  
  
  





	.abiversion 2


	.globl	__gmpn_cnd_sub_n
	.type	__gmpn_cnd_sub_n, @function
	.section	".text"
	.align	5
__gmpn_cnd_sub_n:


	std	31, -8(1)
	std	30, -16(1)
	std	29, -24(1)
	std	28, -32(1)
	std	27, -40(1)

	subfic	3, 3, 0
	subfe	3, 3, 3

	rldicl.	0, 7, 0,62	
	cmpdi	6, 0, 2
	addi	7, 7, 3	
	srdi	7, 7, 2	
	mtctr	7		
	beq	0, .Lb00
	blt	6, .Lb01
	beq	6, .Lb10

.Lb11:	ld	8, 0(5)	
	ld	9, 0(6)	
	ld	10, 8(5)	
	ld	11, 8(6)	
	ld	12, 16(5)	
	addi	5, 5, 24
	ld	0, 16(6)	
	addi	6, 6, 24
	and	9, 9, 3
	and	11, 11, 3
	and	0, 0, 3
	subfc	29, 9, 8
	subfe	30, 11, 10
	subfe	31, 0, 12
	std	29, 0(4)
	std	30, 8(4)
	std	31, 16(4)
	addi	4, 4, 24
	bdnz	.Lgo
	b	.Lret

.Lb01:	ld	12, 0(5)	
	addi	5, 5, 8
	ld	0, 0(6)	
	addi	6, 6, 8
	and	0, 0, 3
	subfc	31, 0, 12	
	std	31, 0(4)
	addi	4, 4, 8
	bdnz	.Lgo
	b	.Lret

.Lb10:	ld	10, 0(5)	
	ld	11, 0(6)	
	ld	12, 8(5)	
	addi	5, 5, 16
	ld	0, 8(6)	
	addi	6, 6, 16
	and	11, 11, 3
	and	0, 0, 3
	subfc	30, 11, 10	
	subfe	31, 0, 12	
	std	30, 0(4)
	std	31, 8(4)
	addi	4, 4, 16
	bdnz	.Lgo
	b	.Lret

.Lb00:	addic	0, 1, -1			
.Lgo:	ld	7, 0(5)	
	ld	27, 0(6)	
	ld	8, 8(5)	
	ld	9, 8(6)	
	ld	10, 16(5)	
	ld	11, 16(6)	
	ld	12, 24(5)	
	ld	0, 24(6)	
	and	27, 27, 3
	and	9, 9, 3
	and	11, 11, 3
	and	0, 0, 3
	bdz	.Lend

	addi	5, 5, 32
	addi	6, 6, 32

.Ltop:	subfe	28, 27, 7
	ld	7, 0(5)	
	ld	27, 0(6)	
	subfe	29, 9, 8
	ld	8, 8(5)	
	ld	9, 8(6)	
	subfe	30, 11, 10
	ld	10, 16(5)	
	ld	11, 16(6)	
	subfe	31, 0, 12
	ld	12, 24(5)	
	ld	0, 24(6)	
	std	28, 0(4)
	addi	5, 5, 32
	std	29, 8(4)
	addi	6, 6, 32
	std	30, 16(4)
	std	31, 24(4)
	addi	4, 4, 32
	and	27, 27, 3
	and	9, 9, 3
	and	11, 11, 3
	and	0, 0, 3
	bdnz	.Ltop		

.Lend:	subfe	28, 27, 7
	subfe	29, 9, 8
	subfe	30, 11, 10
	subfe	31, 0, 12
	std	28, 0(4)
	std	29, 8(4)
	std	30, 16(4)
	std	31, 24(4)

.Lret:	ld	31, -8(1)
	ld	30, -16(1)
	ld	29, -24(1)
	ld	28, -32(1)
	ld	27, -40(1)

	subfe	3, 0, 0	
	neg	3, 3
	blr

	.size	__gmpn_cnd_sub_n, .-__gmpn_cnd_sub_n

	.section .note.GNU-stack,"",@progbits
