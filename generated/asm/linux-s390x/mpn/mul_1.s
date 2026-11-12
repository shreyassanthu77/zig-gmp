




















































	.text
	.align	8
	.globl	__gmpn_mul_1 
	.type	__gmpn_mul_1,@function
__gmpn_mul_1:
	stmg	%r11, %r12, 88(%r15)
	lghi	%r12, 0			
	aghi	%r12, 0			
	lghi	%r11, 0			

.Ltop:	lg	%r1, 0(%r12,%r3)
	mlgr	%r0, %r5
	alcgr	%r1, %r11
	lgr	%r11, %r0		
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r4, .Ltop

	lghi	%r2, 0
	alcgr	%r2, %r11

	lmg	%r11, %r12, 88(%r15)
	br	%r14
	.size	__gmpn_mul_1,.-__gmpn_mul_1
	.section .note.GNU-stack,"",@progbits
