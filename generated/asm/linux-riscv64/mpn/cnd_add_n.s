














































    
    
    






	.text
	.align	3
	.globl	__gmpn_cnd_add_n 
	.type	__gmpn_cnd_add_n,@function
__gmpn_cnd_add_n:
	li	t6, 0

	sltiu	t5, a0, 1
	addi	t5, t5, -1

	andi	t0, a4, 1
	beq	t0, x0, .Ltop
	addi	a2, a2, 8
	addi	a3, a3, -8
	addi	a1, a1, -8
	addi	a4, a4, -1
	j	.Lmid

.Ltop:	ld	a0, 0(a2)
	ld	a6, 0(a3)
	addi	a4, a4, -2	
	addi	a2, a2, 16	
	and	a6, a6, t5
	add	t0, a0, a6
	sltu	t2, t0, a0
	add	t4, t0, t6	
	sltu	t3, t4, t0	
	sd	t4, 0(a1)
	add	t6, t2, t3	
.Lmid:	ld	a5, -8(a2)
	ld	a7, 8(a3)
	addi	a3, a3, 16	
	addi	a1, a1, 16	
	and	a7, a7, t5
	add	t1, a5, a7
	sltu	t2, t1, a5
	add	t4, t1, t6	
	sltu	t3, t4, t1	
	sd	t4, -8(a1)
	add	t6, t2, t3	
	bne	a4, x0, .Ltop	

.Lend:	mv	a0, t6
	ret
	.size	__gmpn_cnd_add_n,.-__gmpn_cnd_add_n

	.section .note.GNU-stack,"",@progbits
