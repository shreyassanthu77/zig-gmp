














































    
    
    





	.text
	.align	3
	.globl	__gmpn_sub_n 
	.type	__gmpn_sub_n,@function
__gmpn_sub_n:
	li	t6, 0
	srli	a6, a3, 2

	ld	a4, 0(a1)
	ld	a5, 0(a2)

	andi	t0, a3, 1
	andi	t1, a3, 2
	bnez	t0, .Lbx1
.Lbx0:	bnez	t1, .Lb10
.Lb00:	addi	a0, a0, -8
	addi	a6, a6, -1
	j	.Lb0
.Lb10:	addi	a2, a2, -16
	addi	a1, a1, -16
	addi	a0, a0, -24
	j	.Lb2
.Lbx1:	bnez	t1, .Lb11
.Lb01:	beqz	a6, .L1
	addi	a2, a2, 8
	addi	a1, a1, 8
	addi	a6, a6, -1
	j	.Lb1
.L1:	sub	t0, a4, a5
	sd	t0, 0(a0)
	sltu	a0, a4, a5
	ret
.Lb11:	addi	a2, a2, -8
	addi	a1, a1, -8
	addi	a0, a0, -16
	j	.Lb3

	.align	4
.Ltop:	addi	a2, a2, 32
	addi	a1, a1, 32
	addi	a0, a0, 32
	addi	a6, a6, -1
.Lb1:	sub	t0, a4, a5
	sltu	t2, a4, a5
	ld	a4, 0(a1)
	ld	a5, 0(a2)
	sub	t4, t0, t6
	sltu	t3, t0, t6
	sd	t4, 0(a0)
	or	t6, t2, t3

.Lb0:	sub	t1, a4, a5
	sltu	t2, a4, a5
	ld	a4, 8(a1)
	ld	a5, 8(a2)
	sub	t4, t1, t6
	sltu	t3, t1, t6
	sd	t4, 8(a0)
	or	t6, t2, t3
.Lb3:	sub	t0, a4, a5
	sltu	t2, a4, a5
	ld	a4, 16(a1)
	ld	a5, 16(a2)
	sub	t4, t0, t6
	sltu	t3, t0, t6
	sd	t4, 16(a0)
	or	t6, t2, t3
.Lb2:	sub	t1, a4, a5
	sltu	t2, a4, a5
	ld	a4, 24(a1)
	ld	a5, 24(a2)
	sub	t4, t1, t6
	sltu	t3, t1, t6
	sd	t4, 24(a0)
	or	t6, t2, t3
	bne	a6, x0, .Ltop

.Lend:	sub	t0, a4, a5
	sltu	t2, a4, a5
	sub	t4, t0, t6
	sltu	t3, t0, t6
	sd	t4, 32(a0)
	or	a0, t2, t3
	ret
	.size	__gmpn_sub_n,.-__gmpn_sub_n
	.section .note.GNU-stack,"",@progbits
