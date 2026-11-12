






















































	.text
	.align	8
	.globl	__gmpn_addmul_1 
	.type	__gmpn_addmul_1,@function
__gmpn_addmul_1:
	stmg	%r9, %r12, 72(%r15)
	lghi	%r12, 0			
	aghi	%r12, 0			
	lghi	%r11, 0			
	lghi	%r9, 0			

.Ltop:	lg	%r1, 0(%r12,%r3)
	lg	%r10, 0(%r12,%r2)
	mlgr	%r0, %r5
	alcgr	%r1, %r10
	alcgr	%r0, %r9
	algr	%r1, %r11
	lgr	%r11, %r0
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r4, .Ltop

	lghi	%r2, 0
	alcgr	%r2, %r11

	lmg	%r9, %r12, 72(%r15)
	br	%r14
	.size	__gmpn_addmul_1,.-__gmpn_addmul_1
	.section .note.GNU-stack,"",@progbits
