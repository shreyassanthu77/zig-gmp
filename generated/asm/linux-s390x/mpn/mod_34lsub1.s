





















































	.text
	.align	8
	.globl	__gmpn_mod_34lsub1 
	.type	__gmpn_mod_34lsub1,@function
__gmpn_mod_34lsub1:
	stmg	%r7, %r12, 56(%r15)
	lghi	%r11, 0
	lghi	%r12, 0
	lghi	%r0, 0
	lghi	%r8, 0
	lghi	%r9, 0
	lghi	%r10, 0
	lghi	%r7, 0
	aghi	%r3, -3
	jl	.L3

.Ltop:	alg	%r0, 0(%r2)
	alcg	%r12, 8(%r2)
	alcg	%r11, 16(%r2)
	alcgr	%r8, %r7
	la	%r2, 24(%r2)
	aghi	%r3, -3
	jnl	.Ltop

	lgr	%r7, %r8
	srlg	%r1, %r11, 16
	nihh	%r7, 0			
	agr	%r7, %r1
	srlg	%r8, %r8, 48
	agr	%r7, %r8
	sllg	%r11, %r11, 32
	nihh	%r11, 0
	agr	%r7, %r11
.L3:
	cghi	%r3, -3
	je	.L6
	alg	%r0, 0(%r2)
	alcgr	%r10, %r10
	cghi	%r3, -2
	je	.L6
	alg	%r12, 8(%r2)
	alcgr	%r9, %r9
.L6:
	srlg	%r1, %r0, 48
	nihh	%r0, 0			
	agr	%r0, %r1
	agr	%r0, %r7
	srlg	%r1, %r12, 32
	agr	%r0, %r1
	srlg	%r1, %r10, 32
	agr	%r0, %r1
	llgfr	%r12, %r12
	srlg	%r1, %r9, 16
	sllg	%r12, %r12, 16
	llgfr	%r10, %r10
	agr	%r0, %r1
	llill	%r2, 65535
	agr	%r0, %r12
	sllg	%r10, %r10, 16
	ngr	%r2, %r9
	agr	%r0, %r10
	sllg	%r2, %r2, 32
	agr	%r2, %r0
	lmg	%r7, %r12, 56(%r15)
	br	%r14
	.size	__gmpn_mod_34lsub1,.-__gmpn_mod_34lsub1
	.section .note.GNU-stack,"",@progbits
