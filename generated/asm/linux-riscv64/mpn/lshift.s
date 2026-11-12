
















































	.text
	.align	3
	.globl	__gmpn_lshift 
	.type	__gmpn_lshift,@function
__gmpn_lshift:
	slli	t0, a2, 3
	add	a1, a1, t0
	add	a4, a0, t0
	sub	t5, x0, a3
	srli	a7, a2, 2

	ld	t0, -8(a1)
	srl	a0, t0, t5

	andi	t6, a2, 1
	andi	a5, a2, 2
	bnez	t6, .Lbx1

	sll	t3, t0, a3
	ld	t0, -16(a1)
	addi	a7, a7, -1
	bnez	a5, .Lb10
	addi	a4, a4, 16
	j	.Lb0
.Lb10:	addi	a1, a1, -16
	bge	a7, x0, .Lb2
.Leq2:	srl	t4, t0, t5
	sll	t2, t0, a3
	or	t4, t3, t4
	sd	t4, -8(a4)
	sd	t2, -16(a4)
	ret

.Lbx1:	sll	t2, t0, a3
	bnez	a5, .Lb11
	bnez	a7, .Lgt1
	sd	t2, -8(a4)
	ret
.Lgt1:	ld	t0, -16(a1)
	addi	a1, a1, -8
	addi	a4, a4, 8
	addi	a7, a7, -1
	j	.Lb1
.Lb11:	ld	t0, -16(a1)
	addi	a1, a1, 8
	addi	a4, a4, 24
	j	.Lb3

.Ltop:	addi	a1, a1, -32
	addi	a4, a4, -32
	addi	a7, a7, -1
.Lb2:	srl	t4, t0, t5
	sll	t2, t0, a3
	ld	t0, -8(a1)
	or	t4, t3, t4
	sd	t4, -8(a4)
.Lb1:	srl	t4, t0, t5
	sll	t3, t0, a3
	ld	t0, -16(a1)
	or	t4, t2, t4
	sd	t4, -16(a4)
.Lb0:	srl	t4, t0, t5
	sll	t2, t0, a3
	ld	t0, -24(a1)
	or	t4, t3, t4
	sd	t4, -24(a4)
.Lb3:	srl	t4, t0, t5
	sll	t3, t0, a3
	ld	t0, -32(a1)
	or	t4, t2, t4
	sd	t4, -32(a4)
	bnez	a7, .Ltop

.Lend:	srl	t4, t0, t5
	sll	t2, t0, a3
	or	t4, t3, t4
	sd	t4, -40(a4)
	sd	t2, -48(a4)
	ret
	.size	__gmpn_lshift,.-__gmpn_lshift
	.section .note.GNU-stack,"",@progbits
