











































	.text
	.align	3
	.globl	__gmpn_mul_1 
	.type	__gmpn_mul_1,@function
__gmpn_mul_1:
	li	a6, 0

.Ltop:	ld	a7, 0(a1)
	addi	a1, a1, 8	
	addi	a0, a0, 8	
	mul	a5, a7, a3
	addi	a2, a2, -1	
	mulhu	a7, a7, a3
	add	a6, a5, a6	
	sltu	a5, a6, a5	
	sd	a6, -8(a0)
	add	a6, a7, a5	
	bne	a2, x0, .Ltop	

.Lend:	mv	a0, a6
	ret
	.size	__gmpn_mul_1,.-__gmpn_mul_1

	.section .note.GNU-stack,"",@progbits
