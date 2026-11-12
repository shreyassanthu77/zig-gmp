





















































	.text
	.align	16
	.text
	.align	8
	.globl	__gmpn_bdiv_dbm1c 
	.type	__gmpn_bdiv_dbm1c,@function
__gmpn_bdiv_dbm1c:
	stmg	%r6, %r7, 48(%r15)
	lghi	%r7, 0			

.Ltop:	lg	%r1, 0(%r7,%r3)
	mlgr	%r0, %r5
	slgr	%r6, %r1
	stg	%r6, 0(%r7,%r2)
	la	%r7, 8(%r7)
	slbgr	%r6, %r0
	brctg	%r4, .Ltop

	lgr	%r2, %r6
	lmg	%r6, %r7, 48(%r15)
	br	%r14
	.size	__gmpn_bdiv_dbm1c,.-__gmpn_bdiv_dbm1c
	.section .note.GNU-stack,"",@progbits
