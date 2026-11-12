




















































































	.abiversion 2


	.globl	__gmpn_sqr_basecase
	.type	__gmpn_sqr_basecase, @function
	.section	".text"
	.align	5
__gmpn_sqr_basecase:


	cmpdi	0, 5, 2
	bge	0, .Lge2
	ld	5, 0(4)	
	nop
	mulld	8, 5, 5	
	mulhdu	9, 5, 5	
	std	8, 0(3)
	std	9, 8(3)
	blr
	.align	4
.Lge2:	bgt	0, .Lgt2
	ld	0, 0(4)	
	nop
	mulld	8, 0, 0	
	mulhdu	9, 0, 0	
	ld	6, 8(4)
	mulld	10, 6, 6	
	mulhdu	11, 6, 6	
	mulld	4, 6, 0	
	mulhdu	5, 6, 0	
	addc	4, 4, 4
	adde	5, 5, 5
	addze	11, 11
	addc	9, 9, 4
	adde	10, 10, 5
	addze	11, 11
	std	8, 0(3)
	std	9, 8(3)
	std	10, 16(3)
	std	11, 24(3)
	blr

	.align	4
.Lgt2:	std	31,  -8(1)
	std	30, -16(1)
	std	29, -24(1)
	std	28, -32(1)
	std	27, -40(1)
	std	26, -48(1)
	std	25, -56(1)
	std	24, -64(1)
	std	23, -72(1)
	std	22, -80(1)
	std	21, -88(1)

	mr	22, 3
	mr	23, 4
	mr	24, 5
	mr	25, 3
	mr	21, 4

	rldicl.	0, 5, 0,62	
	cmpdi	6, 0, 2
	addic	7, 5, 2	
	srdi	7, 7, 2	
	mtctr	7		
	beq-	0, .Lb0
	blt-	6, .Lb1
	beq-	6, .Lb2

.Lb3:	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	addi	4, 4, 24
	li	12, 0		
	bdz	.Lem3

	.align	4
.Ltm3:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 0(4)
	ld	27, 8(4)
	adde	0, 0, 12
	adde	7, 7, 26
	mulld	26, 9, 6
	mulhdu	10, 9, 6
	mulld	11, 27, 6
	mulhdu	12, 27, 6
	ld	9, 16(4)
	ld	27, 24(4)
	std	0, 8(3)
	adde	26, 26, 8
	std	7, 16(3)
	adde	11, 11, 10
	std	26, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Ltm3

.Lem3:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	adde	0, 0, 12
	adde	7, 7, 26
	std	0, 8(3)
	std	7, 16(3)
	addze	8, 8
	std	8, 24(3)
	addi	5, 5, 2
	b	.Louter_loop

.Lb0:	ld	6, 0(4)
	ld	27, 8(4)
	mulld	7, 27, 6
	mulhdu	12, 27, 6
	std	7, 8(3)
	addi	3, 3, 8
	ld	9, 16(4)
	ld	27, 24(4)
	addi	4, 4, 32
	bdz	.Lem0

	.align	4
.Ltm0:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 0(4)
	ld	27, 8(4)
	adde	0, 0, 12
	adde	7, 7, 26
	mulld	26, 9, 6
	mulhdu	10, 9, 6
	mulld	11, 27, 6
	mulhdu	12, 27, 6
	ld	9, 16(4)
	ld	27, 24(4)
	std	0, 8(3)
	adde	26, 26, 8
	std	7, 16(3)
	adde	11, 11, 10
	std	26, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Ltm0

.Lem0:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	adde	0, 0, 12
	adde	7, 7, 26
	std	0, 8(3)
	std	7, 16(3)
	addze	8, 8
	std	8, 24(3)
	addi	5, 5, 2
	b	.Louter_loop_ent_2

.Lb1:	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	12, 27, 6
	addc	7, 7, 26
	std	0, 8(3)
	std	7, 16(3)
	addi	3, 3, 16
	ld	9, 24(4)
	ld	27, 32(4)
	addi	4, 4, 40
	bdz	.Lem1

	.align	4
.Ltm1:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 0(4)
	ld	27, 8(4)
	adde	0, 0, 12
	adde	7, 7, 26
	mulld	26, 9, 6
	mulhdu	10, 9, 6
	mulld	11, 27, 6
	mulhdu	12, 27, 6
	ld	9, 16(4)
	ld	27, 24(4)
	std	0, 8(3)
	adde	26, 26, 8
	std	7, 16(3)
	adde	11, 11, 10
	std	26, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Ltm1

.Lem1:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	adde	0, 0, 12
	adde	7, 7, 26
	std	0, 8(3)
	std	7, 16(3)
	addze	8, 8
	std	8, 24(3)
	addi	5, 5, 2
	b	.Louter_loop_ent_3

.Lb2:	addi	7, 7, -1	
	mtctr	7		
	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 24(4)
	mulld	11, 9, 6
	mulhdu	10, 9, 6
	addc	7, 7, 26
	adde	11, 11, 8
	addze	12, 10
	std	0, 8(3)
	std	7, 16(3)
	std	11, 24(3)
	addi	3, 3, 24
	ld	9, 32(4)
	ld	27, 40(4)
	addi	4, 4, 48
	bdz	.Lem2

	.align	4
.Ltm2:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 0(4)
	ld	27, 8(4)
	adde	0, 0, 12
	adde	7, 7, 26
	mulld	26, 9, 6
	mulhdu	10, 9, 6
	mulld	11, 27, 6
	mulhdu	12, 27, 6
	ld	9, 16(4)
	ld	27, 24(4)
	std	0, 8(3)
	adde	26, 26, 8
	std	7, 16(3)
	adde	11, 11, 10
	std	26, 24(3)
	addi	4, 4, 32
	std	11, 32(3)
	addi	3, 3, 32
	bdnz	.Ltm2

.Lem2:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	adde	0, 0, 12
	adde	7, 7, 26
	std	0, 8(3)
	std	7, 16(3)
	addze	8, 8
	std	8, 24(3)
	addi	5, 5, 2
	b	.Louter_loop_ent_0


.Louter_loop:
	addi	5, 5, -1
	addi	21, 21, 8
	addi	25, 25, 16

	mr	4, 21
	addi	3, 25, 8

	srdi	0, 5, 2
	mtctr	0

	bdz	.Louter_end

	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	9, 24(4)
	ld	28, 0(3)
	ld	29, 8(3)
	ld	30, 16(3)
	mulld	11, 9, 6
	mulhdu	10, 9, 6
	addc	7, 7, 26
	adde	11, 11, 8
	addze	12, 10
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	adde	11, 11, 30
	std	11, 16(3)
	addi	3, 3, 24
	ld	9, 32(4)
	ld	27, 40(4)
	addi	4, 4, 48
	bdz	.Lea1

	.align	4
.Lta1:	mulld	0, 9, 6
	mulhdu	26, 9, 6	
	mulld	7, 27, 6
	mulhdu	8, 27, 6	
	ld	9, 0(4)
	ld	28, 0(3)
	ld	27, 8(4)
	ld	29, 8(3)
	adde	0, 0, 12	
	adde	7, 7, 26	
	mulld	26, 9, 6
	mulhdu	10, 9, 6	
	mulld	11, 27, 6
	mulhdu	12, 27, 6	
	ld	9, 16(4)
	ld	30, 16(3)
	ld	27, 24(4)
	ld	31, 24(3)
	adde	26, 26, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 0(3)	
	adde	7, 7, 29	
	std	7, 8(3)	
	adde	26, 26, 30	
	std	26, 16(3)	
	adde	11, 11, 31	
	std	11, 24(3)	
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Lta1

.Lea1:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	28, 0(3)
	ld	29, 8(3)
	adde	0, 0, 12
	adde	7, 7, 26
	addze	8, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addze	8, 8
	std	8, 16(3)

.Louter_loop_ent_0:
	addi	5, 5, -1
	addi	21, 21, 8
	addi	25, 25, 16

	mr	4, 21
	addi	3, 25, 8

	srdi	0, 5, 2
	mtctr	0

	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	ld	28, 0(3)
	ld	29, 8(3)
	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	addc	0, 0, 28
	adde	7, 7, 26
	addze	12, 8
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addi	3, 3, 16
	ld	9, 24(4)
	ld	27, 32(4)
	addi	4, 4, 40
	bdz	.Lea0

	.align	4
.Lta0:	mulld	0, 9, 6
	mulhdu	26, 9, 6	
	mulld	7, 27, 6
	mulhdu	8, 27, 6	
	ld	9, 0(4)
	ld	28, 0(3)
	ld	27, 8(4)
	ld	29, 8(3)
	adde	0, 0, 12	
	adde	7, 7, 26	
	mulld	26, 9, 6
	mulhdu	10, 9, 6	
	mulld	11, 27, 6
	mulhdu	12, 27, 6	
	ld	9, 16(4)
	ld	30, 16(3)
	ld	27, 24(4)
	ld	31, 24(3)
	adde	26, 26, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 0(3)	
	adde	7, 7, 29	
	std	7, 8(3)	
	adde	26, 26, 30	
	std	26, 16(3)	
	adde	11, 11, 31	
	std	11, 24(3)	
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Lta0

.Lea0:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	28, 0(3)
	ld	29, 8(3)
	adde	0, 0, 12
	adde	7, 7, 26
	addze	8, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addze	8, 8
	std	8, 16(3)

.Louter_loop_ent_3:
	addi	5, 5, -1
	addi	21, 21, 8
	addi	25, 25, 16

	mr	4, 21
	addi	3, 25, 8

	srdi	0, 5, 2
	mtctr	0

	ld	6, 0(4)
	ld	9, 8(4)
	ld	28, 0(3)
	mulld	0, 9, 6
	mulhdu	12, 9, 6
	addc	0, 0, 28
	std	0, 0(3)
	addi	3, 3, 8
	ld	9, 16(4)
	ld	27, 24(4)
	addi	4, 4, 32
	bdz	.Lea3

	.align	4
.Lta3:	mulld	0, 9, 6
	mulhdu	26, 9, 6	
	mulld	7, 27, 6
	mulhdu	8, 27, 6	
	ld	9, 0(4)
	ld	28, 0(3)
	ld	27, 8(4)
	ld	29, 8(3)
	adde	0, 0, 12	
	adde	7, 7, 26	
	mulld	26, 9, 6
	mulhdu	10, 9, 6	
	mulld	11, 27, 6
	mulhdu	12, 27, 6	
	ld	9, 16(4)
	ld	30, 16(3)
	ld	27, 24(4)
	ld	31, 24(3)
	adde	26, 26, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 0(3)	
	adde	7, 7, 29	
	std	7, 8(3)	
	adde	26, 26, 30	
	std	26, 16(3)	
	adde	11, 11, 31	
	std	11, 24(3)	
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Lta3

.Lea3:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	28, 0(3)
	ld	29, 8(3)
	adde	0, 0, 12
	adde	7, 7, 26
	addze	8, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addze	8, 8
	std	8, 16(3)


.Louter_loop_ent_2:
	addi	5, 5, -1
	addi	21, 21, 8
	addi	25, 25, 16

	mr	4, 21
	addi	3, 25, 8

	srdi	0, 5, 2
	mtctr	0

	addic	0, 0, 0
	li	12, 0		
	ld	6, 0(4)
	ld	9, 8(4)
	ld	27, 16(4)
	bdz	.Lea2
	addi	4, 4, 24

	.align	4
.Lta2:	mulld	0, 9, 6
	mulhdu	26, 9, 6	
	mulld	7, 27, 6
	mulhdu	8, 27, 6	
	ld	9, 0(4)
	ld	28, 0(3)
	ld	27, 8(4)
	ld	29, 8(3)
	adde	0, 0, 12	
	adde	7, 7, 26	
	mulld	26, 9, 6
	mulhdu	10, 9, 6	
	mulld	11, 27, 6
	mulhdu	12, 27, 6	
	ld	9, 16(4)
	ld	30, 16(3)
	ld	27, 24(4)
	ld	31, 24(3)
	adde	26, 26, 8	
	adde	11, 11, 10	
	addze	12, 12	
	addc	0, 0, 28	
	std	0, 0(3)	
	adde	7, 7, 29	
	std	7, 8(3)	
	adde	26, 26, 30	
	std	26, 16(3)	
	adde	11, 11, 31	
	std	11, 24(3)	
	addi	4, 4, 32
	addi	3, 3, 32
	bdnz	.Lta2

.Lea2:	mulld	0, 9, 6
	mulhdu	26, 9, 6
	mulld	7, 27, 6
	mulhdu	8, 27, 6
	ld	28, 0(3)
	ld	29, 8(3)
	adde	0, 0, 12
	adde	7, 7, 26
	addze	8, 8
	addc	0, 0, 28
	std	0, 0(3)
	adde	7, 7, 29
	std	7, 8(3)
	addze	8, 8
	std	8, 16(3)

	b	.Louter_loop

.Louter_end:
	ld	6, 0(4)
	ld	9, 8(4)
	ld	11, 0(3)
	mulld	0, 9, 6
	mulhdu	8, 9, 6
	addc	0, 0, 11
	std	0, 0(3)
	addze	8, 8
	std	8, 8(3)






	addi	4, 22, 8
	mr	5, 23
	mr	6, 24

	rldicl.	0, 6, 0,62		
	cmpdi	6, 0, 2
	addi	6, 6, 2			
	srdi	6, 6, 2			
	mtctr	6			
	beq	0, .Lxb0
	blt	6, .Lxb1
	beq	6, .Lxb2

.Lxb3:	ld	6,   0(5)
	ld	7,   8(5)
	ld	12, 16(5)
	addi	5, 5, 24
	mulld	24, 6, 6
	mulhdu	25, 6, 6
	mulld	26, 7, 7
	mulhdu	27, 7, 7
	mulld	28, 12, 12
	mulhdu	29, 12, 12
	ld	10,  8(22)
	ld	11, 16(22)
	ld	6,  24(22)
	ld	7,  32(22)
	addc	10, 10, 10
	adde	11, 11, 11
	adde	6, 6, 6
	adde	7, 7, 7
	addze	0, 29
	addc	10, 10, 25
	adde	11, 11, 26
	adde	6, 6, 27
	adde	7, 7, 28
	std	24,  0(22)
	std	10,  8(22)
	std	11, 16(22)
	std	6,  24(22)
	std	7,  32(22)
	addi	22, 22, 40
	bdnz	.Ltop
	b	.Lend

.Lxb2:	ld	6,  0(5)
	ld	7,  8(5)
	addi	5, 5, 16
	mulld	24, 6, 6
	mulhdu	25, 6, 6
	mulld	26, 7, 7
	mulhdu	27, 7, 7
	ld	10,  8(22)
	ld	11, 16(22)
	addc	10, 10, 10
	adde	11, 11, 11
	addze	0, 27
	addc	10, 10, 25
	adde	11, 11, 26
	std	24,  0(22)
	std	10,  8(22)
	std	11, 16(22)
	addi	22, 22, 24
	bdnz	.Ltop
	b	.Lend

.Lxb0:	ld	6,   0(5)
	ld	7,   8(5)
	ld	12, 16(5)
	ld	23, 24(5)
	addi	5, 5, 32
	mulld	24, 6, 6
	mulhdu	25, 6, 6
	mulld	26, 7, 7
	mulhdu	27, 7, 7
	mulld	28, 12, 12
	mulhdu	29, 12, 12
	mulld	30, 23, 23
	mulhdu	31, 23, 23
	ld	10,  8(22)
	ld	11, 16(22)
	ld	6,  24(22)
	ld	7,  32(22)
	ld	12, 40(22)
	ld	23, 48(22)
	addc	10, 10, 10
	adde	11, 11, 11
	adde	6, 6, 6
	adde	7, 7, 7
	adde	12, 12, 12
	adde	23, 23, 23
	addze	0, 31
	std	24,  0(22)
	addc	10, 10, 25
	std	10,  8(22)
	adde	11, 11, 26
	std	11, 16(22)
	adde	6, 6, 27
	std	6,  24(22)
	adde	7, 7, 28
	std	7,  32(22)
	adde	12, 12, 29
	std	12, 40(22)
	adde	23, 23, 30
	std	23, 48(22)
	addi	22, 22, 56
	bdnz	.Ltop
	b	.Lend

.Lxb1:	ld	6,  0(5)
	addi	5, 5, 8
	mulld	24, 6, 6
	mulhdu	0, 6, 6
	std	24, 0(22)
	addic	22, 22, 8		

	.align	5
.Ltop:	ld	6,   0(5)
	ld	7,   8(5)
	ld	12, 16(5)
	ld	23, 24(5)
	addi	5, 5, 32
	mulld	24, 6, 6
	mulhdu	25, 6, 6
	mulld	26, 7, 7
	mulhdu	27, 7, 7
	mulld	28, 12, 12
	mulhdu	29, 12, 12
	mulld	30, 23, 23
	mulhdu	31, 23, 23
	ld	8,   0(22)
	ld	9,   8(22)
	adde	8, 8, 8
	adde	9, 9, 9
	ld	10, 16(22)
	ld	11, 24(22)
	adde	10, 10, 10
	adde	11, 11, 11
	ld	6,  32(22)
	ld	7,  40(22)
	adde	6, 6, 6
	adde	7, 7, 7
	ld	12, 48(22)
	ld	23, 56(22)
	adde	12, 12, 12
	adde	23, 23, 23
	addze	31, 31
	addc	8, 8, 0
	std	8,   0(22)
	adde	9, 9, 24
	std	9,   8(22)
	adde	10, 10, 25
	std	10, 16(22)
	adde	11, 11, 26
	std	11, 24(22)
	adde	6, 6, 27
	std	6,  32(22)
	adde	7, 7, 28
	std	7,  40(22)
	adde	12, 12, 29
	std	12, 48(22)
	adde	23, 23, 30
	std	23, 56(22)
	mr	0, 31
	addi	22, 22, 64
	bdnz	.Ltop

.Lend:	addze	0, 0
	std	0,  0(22)

	ld	31,  -8(1)
	ld	30, -16(1)
	ld	29, -24(1)
	ld	28, -32(1)
	ld	27, -40(1)
	ld	26, -48(1)
	ld	25, -56(1)
	ld	24, -64(1)
	ld	23, -72(1)
	ld	22, -80(1)
	ld	21, -88(1)
	blr

	.size	__gmpn_sqr_basecase, .-__gmpn_sqr_basecase

	.section .note.GNU-stack,"",@progbits
