












































	.text
	.align	3
	.globl	__gmpn_copyd 
	.type	__gmpn_copyd,@function
__gmpn_copyd:
	slli	t0, a2, 3
	add	a1, a1, t0
	add	a0, a0, t0
	srli	a6, a2, 2

	andi	t0, a2, 1
	andi	t1, a2, 2
	bnez	t0, .Lbx1
.Lbx0:	beqz	a2, .Lret
	ld	t0, -8(a1)
	bnez	t1, .Lb10
.Lb00:	addi	a0, a0, 8
	addi	a6, a6, -1
	j	.Lb0
.Lb10:	addi	a1, a1, 16
	addi	a0, a0, 24
	j	.Lb2
.Lbx1:	ld	t2, -8(a1)
	bnez	t1, .Lb11
	beqz	a6, .L1
	addi	a1, a1, -8
	addi	a6, a6, -1
	j	.Lb1
.L1:	sd	t2, -8(a0)
	ret
.Lb11:	addi	a1, a1, 8
	addi	a0, a0, 16
	j	.Lb3

	.align	4
.Ltop:	addi	a1, a1, -32
	addi	a0, a0, -32
	addi	a6, a6, -1
.Lb1:	ld	t0, -8(a1)
	sd	t2, -8(a0)
.Lb0:	ld	t2, -16(a1)
	sd	t0, -16(a0)
.Lb3:	ld	t0, -24(a1)
	sd	t2, -24(a0)
.Lb2:	ld	t2, -32(a1)
	sd	t0, -32(a0)
	bnez	a6, .Ltop

.Lend:	sd	t2, -40(a0)
.Lret:	ret
	.size	__gmpn_copyd,.-__gmpn_copyd
	.section .note.GNU-stack,"",@progbits
