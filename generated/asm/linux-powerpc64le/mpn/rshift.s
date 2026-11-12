





































































	.abiversion 2


	.globl	__gmpn_rshift
	.type	__gmpn_rshift, @function
	.section	".text"
	.align	5
__gmpn_rshift:


	std	31, -8(1)
	std	30, -16(1)
	subfic	0, 6, 64



	rldicl.	30, 5, 0,62	
	cmpdi	6, 30, 2
	addi	31, 5, 3	
	ld	10, 0(4)	
	sld	5, 10, 0

	srdi	31, 31, 2	
	mtctr	31		
	beq	0, .Lb00
	blt	6, .Lb01
	ld	11, 8(4)	
	beq	6, .Lb10

	.align	4
.Lb11:	srd	8, 10, 6
	sld	9, 11, 0
	ld	31, 16(4)
	addi	4, 4, 24
	srd	12, 11, 6
	sld	7, 31, 0
	addi	3, 3, -16
	bdnz	.Lgt3

	or	11, 8, 9
	srd	8, 31, 6
	b	.Lcj3

	.align	4
.Lgt3:	ld	30, 0(4)
	or	11, 8, 9
	srd	8, 31, 6
	sld	9, 30, 0
	ld	31, 8(4)
	or	10, 12, 7
	b	.LL11

	.align	5
.Lb10:	srd	12, 10, 6
	addi	3, 3, -24
	sld	7, 11, 0
	bdnz	.Lgt2

	srd	8, 11, 6
	or	10, 12, 7
	b	.Lcj2

.Lgt2:	ld	30, 16(4)
	srd	8, 11, 6
	sld	9, 30, 0
	ld	31, 24(4)
	or	10, 12, 7
	srd	12, 30, 6
	sld	7, 31, 0
	ld	30, 32(4)
	or	11, 8, 9
	addi	4, 4, 16
	b	.LL10

	.align	4
.Lb00:	ld	31, 8(4)
	srd	12, 10, 6
	sld	7, 31, 0
	ld	30, 16(4)
	srd	8, 31, 6
	sld	9, 30, 0
	ld	31, 24(4)
	or	10, 12, 7
	srd	12, 30, 6
	sld	7, 31, 0
	addi	3, 3, -8
	bdz	.Lcj4

.Lgt4:	addi	4, 4, 32
	ld	30, 0(4)
	or	11, 8, 9
	b	.LL00

	.align	4
.Lb01:	bdnz	.Lgt1
	srd	8, 10, 6
	std	8, 0(3)
	b	.Lret

.Lgt1:	ld	30, 8(4)
	srd	8, 10, 6
	sld	9, 30, 0
	ld	31, 16(4)
	srd	12, 30, 6
	sld	7, 31, 0
	ld	30, 24(4)
	or	11, 8, 9
	srd	8, 31, 6
	sld	9, 30, 0
	ld	31, 32(4)
	addi	4, 4, 40
	or	10, 12, 7
	bdz	.Lend

	.align	5
.Ltop:	srd	12, 30, 6
	sld	7, 31, 0
	ld	30, 0(4)
	std	11, 0(3)
	or	11, 8, 9
.LL00:	srd	8, 31, 6
	sld	9, 30, 0
	ld	31, 8(4)
	std	10, 8(3)
	or	10, 12, 7
.LL11:	srd	12, 30, 6
	sld	7, 31, 0
	ld	30, 16(4)
	std	11, 16(3)
	or	11, 8, 9
.LL10:	srd	8, 31, 6
	sld	9, 30, 0
	ld	31, 24(4)
	addi	4, 4, 32
	std	10, 24(3)
	addi	3, 3, 32
	or	10, 12, 7
	bdnz	.Ltop

	.align	5
.Lend:	srd	12, 30, 6
	sld	7, 31, 0
	std	11, 0(3)
.Lcj4:	or	11, 8, 9
	srd	8, 31, 6
	std	10, 8(3)
.Lcj3:	or	10, 12, 7
	std	11, 16(3)
.Lcj2:	std	10, 24(3)
	std	8, 32(3)

.Lret:	ld	31, -8(1)
	ld	30, -16(1)
	mr	3, 5
	blr

	.size	__gmpn_rshift, .-__gmpn_rshift

	.section .note.GNU-stack,"",@progbits
