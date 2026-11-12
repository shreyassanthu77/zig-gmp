


















































	.text
	.align	3
	.globl	__gmpn_sec_tabselect 
	.type	__gmpn_sec_tabselect,@function
__gmpn_sec_tabselect:
	addi	sp,sp,-32
	sd	s0,24(sp)
	sd	s1,16(sp)
	sd	s2,8(sp)
	sd	s3,0(sp)

	addi	a7, a2, -4
	slli	a2, a2, 3
	li	s3, 1

	sub	a3, a4, a3
	blt	a7, zero, .Louter_end
.Louter_top:
	mv	s2, a1
	li	t0, 0
	li	t1, 0
	li	t2, 0
	li	t3, 0
	addi	a7, a7, -4
	mv	a6, a4

	.align	4
.Ltop:	ld	t4, 0(a1)
	ld	t5, 8(a1)
	sltu	s0, a6, s3
	addi	a6, a6, -1
	neg	s0, s0
	ld	t6, 16(a1)
	ld	a5, 24(a1)
	and	t4, s0, t4
	and	t5, s0, t5
	or	t0, t4, t0
	or	t1, t5, t1
	and	t6, s0, t6
	and	a5, s0, a5
	or	t2, t6, t2
	or	t3, a5, t3
	add	a1, a1, a2
	bne	a6, a3, .Ltop

	sd	t0, 0(a0)
	sd	t1, 8(a0)
	sd	t2, 16(a0)
	sd	t3, 24(a0)
	add	a1, s2, 32
	add	a0, a0, 32
	bge	a7, zero, .Louter_top
.Louter_end:
	andi	t0, a2, 2*8
	beq	t0, zero, .Lb0x
.Lb1x:	mv	s2, a1
	li	t0, 0
	li	t1, 0
	mv	a6, a4
	.align	4
.Ltp2:	ld	t4, 0(a1)
	ld	t5, 8(a1)
	sltu	s0, a6, s3
	neg	s0, s0
	addi	a6, a6, -1
	and	t4, s0, t4
	and	t5, s0, t5
	or	t0, t4, t0
	or	t1, t5, t1
	add	a1, a1, a2
	bne	a6, a3, .Ltp2
	sd	t0, 0(a0)
	sd	t1, 8(a0)
	addi	a1, s2, 16
	addi	a0, a0, 16

.Lb0x:	andi	t0, a2, 1*8
	beq	t0, zero, .Lb00
.Lb01:	li	t0, 0
	mv	a6, a4
	.align	4
.Ltp1:	ld	t4, 0(a1)
	sltu	s0, a6, s3
	neg	s0, s0
	addi	a6, a6, -1
	and	t4, s0, t4
	or	t0, t4, t0
	add	a1, a1, a2
	bne	a6, a3, .Ltp1
	sd	t0, 0(a0)

.Lb00:	ld	s0,24(sp)
	ld	s1,16(sp)
	ld	s2,8(sp)
	ld	s3,0(sp)
	addi	sp,sp,32
	jr	ra
	.size	__gmpn_sec_tabselect,.-__gmpn_sec_tabselect
	.section .note.GNU-stack,"",@progbits
