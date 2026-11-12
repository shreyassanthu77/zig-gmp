


































































	.abiversion 2


	.globl	__gmpn_sec_tabselect
	.type	__gmpn_sec_tabselect, @function
	.section	".text"
	.align	5
__gmpn_sec_tabselect:


	addic.	9, 5, -4		
	std	31, -8(1)
	std	30, -16(1)
	std	29, -24(1)
	std	28, -32(1)
	std	27, -40(1)
	sldi	12, 5, 3

	blt	0, .Louter_end
.Louter_top:
	mtctr	6
	mr	10, 4
	li	28, 0
	li	29, 0
	li	30, 0
	li	31, 0
	addic.	9, 9, -4		
	mr	8, 7

	.align	4
.Ltop:	addic	8, 8, -1		
	subfe	11, 11, 11
	ld	0, 0(4)
	ld	27, 8(4)
	and	0, 0, 11
	and	27, 27, 11
	or	28, 28, 0
	or	29, 29, 27
	ld	0, 16(4)
	ld	27, 24(4)
	and	0, 0, 11
	and	27, 27, 11
	or	30, 30, 0
	or	31, 31, 27
	add	4, 4, 12
	bdnz	.Ltop

	std	28, 0(3)
	std	29, 8(3)
	std	30, 16(3)
	std	31, 24(3)
	addi	4, 10, 32
	addi	3, 3, 32
	bge	0, .Louter_top
.Louter_end:

	rldicl.	0, 5, 63, 63
	beq	0, .Lb0x
.Lb1x:	mtctr	6
	mr	10, 4
	li	28, 0
	li	29, 0
	mr	8, 7
	.align	4
.Ltp2:	addic	8, 8, -1
	subfe	11, 11, 11
	ld	0, 0(4)
	ld	27, 8(4)
	and	0, 0, 11
	and	27, 27, 11
	or	28, 28, 0
	or	29, 29, 27
	add	4, 4, 12
	bdnz	.Ltp2
	std	28, 0(3)
	std	29, 8(3)
	addi	4, 10, 16
	addi	3, 3, 16

.Lb0x:	rldicl.	0, 5, 0, 63
	beq	0, .Lb00
.Lb01:	mtctr	6
	mr	10, 4
	li	28, 0
	mr	8, 7
	.align	4
.Ltp1:	addic	8, 8, -1
	subfe	11, 11, 11
	ld	0, 0(4)
	and	0, 0, 11
	or	28, 28, 0
	add	4, 4, 12
	bdnz	.Ltp1
	std	28, 0(3)

.Lb00:	ld	31, -8(1)
	ld	30, -16(1)
	ld	29, -24(1)
	ld	28, -32(1)
	ld	27, -40(1)
	blr

	.size	__gmpn_sec_tabselect, .-__gmpn_sec_tabselect

	.section .note.GNU-stack,"",@progbits
