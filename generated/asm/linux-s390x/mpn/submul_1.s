




















































	.text
	.align	8
	.globl	__gmpn_submul_1 
	.type	__gmpn_submul_1,@function
__gmpn_submul_1:
	stmg	%r9, %r12, 72(%r15)
	lghi	%r12, 0
	slgr	%r11, %r11

.Ltop:	lg	%r1, 0(%r12,%r3)
	lg	%r10, 0(%r12,%r2)
	mlgr	%r0, %r5
	slbgr	%r10, %r1
	slbgr	%r9, %r9
	slgr	%r0, %r9		
	slgr	%r10, %r11
	lgr	%r11, %r0
	stg	%r10, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r4,  .Ltop

	lgr	%r2, %r11
	slbgr	%r9, %r9
	slgr	%r2, %r9

	lmg	%r9, %r12, 72(%r15)
	br	%r14
	.size	__gmpn_submul_1,.-__gmpn_submul_1
	.section .note.GNU-stack,"",@progbits
