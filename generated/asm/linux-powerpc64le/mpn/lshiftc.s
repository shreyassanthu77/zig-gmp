






































































	.abiversion 2


	.globl	__gmpn_lshiftc
	.type	__gmpn_lshiftc, @function
	.section	".text"
	.align	5
__gmpn_lshiftc:


	std	31, -8(1)
	std	30, -16(1)
	subfic	0, 6, 64
	sldi	7, 5, 3	
	add	4, 4, 7	
	add	3, 3, 7	
	rldicl.	30, 5, 0,62	
	cmpdi	6, 30, 2
	addi	31, 5, 3	
	ld	10, -8(4)	
	srd	5, 10, 0
	srdi	31, 31, 2	
	mtctr	31		
	beq	0, .Lb00
	blt	6, .Lb01
	ld	11, -16(4)	
	beq	6, .Lb10

	.align	4
.Lb11:	sld	8, 10, 6
	srd	9, 11, 0
	ld	31, -24(4)
	addi	4, 4, -24
	sld	12, 11, 6
	srd	7, 31, 0
	addi	3, 3, 16
	bdnz	.Lgt3

	nor	11, 8, 9
	sld	8, 31, 6
	nor	8, 8, 8
	b	.Lcj3

	.align	4
.Lgt3:	ld	30, -8(4)
	nor	11, 8, 9
	sld	8, 31, 6
	srd	9, 30, 0
	ld	31, -16(4)
	nor	10, 12, 7
	b	.LL11

	.align	5
.Lb10:	sld	12, 10, 6
	addi	3, 3, 24
	srd	7, 11, 0
	bdnz	.Lgt2

	sld	8, 11, 6
	nor	10, 12, 7
	nor	8, 8, 8
	b	.Lcj2

.Lgt2:	ld	30, -24(4)
	sld	8, 11, 6
	srd	9, 30, 0
	ld	31, -32(4)
	nor	10, 12, 7
	sld	12, 30, 6
	srd	7, 31, 0
	ld	30, -40(4)
	nor	11, 8, 9
	addi	4, 4, -16
	b	.LL10

	.align	4
.Lb00:	ld	31, -16(4)
	sld	12, 10, 6
	srd	7, 31, 0
	ld	30, -24(4)
	sld	8, 31, 6
	srd	9, 30, 0
	ld	31, -32(4)
	nor	10, 12, 7
	sld	12, 30, 6
	srd	7, 31, 0
	addi	3, 3, 8
	bdz	.Lcj4

.Lgt4:	addi	4, 4, -32
	ld	30, -8(4)
	nor	11, 8, 9
	b	.LL00

	.align	4
.Lb01:	bdnz	.Lgt1
	sld	8, 10, 6
	nor	8, 8, 8
	std	8, -8(3)
	b	.Lret

.Lgt1:	ld	30, -16(4)
	sld	8, 10, 6
	srd	9, 30, 0
	ld	31, -24(4)
	sld	12, 30, 6
	srd	7, 31, 0
	ld	30, -32(4)
	nor	11, 8, 9
	sld	8, 31, 6
	srd	9, 30, 0
	ld	31, -40(4)
	addi	4, 4, -40
	nor	10, 12, 7
	bdz	.Lend

	.align	5
.Ltop:	sld	12, 30, 6
	srd	7, 31, 0
	ld	30, -8(4)
	std	11, -8(3)
	nor	11, 8, 9
.LL00:	sld	8, 31, 6
	srd	9, 30, 0
	ld	31, -16(4)
	std	10, -16(3)
	nor	10, 12, 7
.LL11:	sld	12, 30, 6
	srd	7, 31, 0
	ld	30, -24(4)
	std	11, -24(3)
	nor	11, 8, 9
.LL10:	sld	8, 31, 6
	srd	9, 30, 0
	ld	31, -32(4)
	addi	4, 4, -32
	std	10, -32(3)
	addi	3, 3, -32
	nor	10, 12, 7
	bdnz	.Ltop

	.align	5
.Lend:	sld	12, 30, 6
	srd	7, 31, 0
	std	11, -8(3)
.Lcj4:	nor	11, 8, 9
	sld	8, 31, 6
	std	10, -16(3)
	nor	8, 8, 8
.Lcj3:	nor	10, 12, 7
	std	11, -24(3)
.Lcj2:	std	10, -32(3)
	std	8, -40(3)

.Lret:	ld	31, -8(1)
	ld	30, -16(1)
	mr	3, 5
	blr

	.size	__gmpn_lshiftc, .-__gmpn_lshiftc

	.section .note.GNU-stack,"",@progbits
