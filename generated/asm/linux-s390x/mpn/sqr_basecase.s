




































































	.text
	.align	8
	.globl	__gmpn_sqr_basecase 
	.type	__gmpn_sqr_basecase,@function
__gmpn_sqr_basecase:
	aghi	%r4, -2
	jhe	.Lge2


	lg	%r5, 0(%r3)
	mlgr	%r4, %r5
	stg	%r5, 0(%r2)
	stg	%r4, 8(%r2)
	br	%r14

.Lge2:	jne	.Lgen


	stmg	%r6, %r8, 48(%r15)
	lghi	%r8, 0

	lg	%r5, 0(%r3)
	mlgr	%r4, %r5		
	lg	%r1, 8(%r3)
	mlgr	%r0, %r1		
	stg	%r5, 0(%r2)

	lg	%r7, 0(%r3)
	mlg	%r6, 8(%r3)		
	algr	%r7, %r7
	alcgr	%r6, %r6
	alcgr	%r0, %r8

	algr	%r4, %r7
	alcgr	%r1, %r6
	alcgr	%r0, %r8
	stg	%r4, 8(%r2)
	stg	%r1, 16(%r2)
	stg	%r0, 24(%r2)

	lmg	%r6, %r8, 48(%r15)
	br	%r14

.Lgen:


	stmg	%r6, %r14, 48(%r15)
	lghi	%r8, 0
	lgr	%r13, %r3
	lgr	%r9, %r2
	lgr	%r14, %r4

	lg	%r6, 0(%r3)
	lg	%r11, 8(%r3)
	lghi	%r12, 16		
	mlgr	%r10, %r6
	lgr	%r5, %r4
	stg	%r11, 8(%r2)
	cr	%r15, %r15		

.Ltm:	lg	%r1, 0(%r12,%r3)
	mlgr	%r0, %r6
	alcgr	%r1, %r10
	lgr	%r10, %r0		
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r5, .Ltm

	alcgr	%r0, %r8
	stg	%r0, 0(%r12,%r2)



	aghi	%r4, -1
	je	.Louter_end
.Louter_loop:

	la	%r2, 16(%r2)		
	la	%r3, 8(%r3)		
	lg	%r6, 0(%r3)
	lg	%r11, 8(%r3)
	lghi	%r12, 16		
	mlgr	%r10, %r6
	lgr	%r5, %r4
	alg	%r11, 8(%r2)
	stg	%r11, 8(%r2)

.Ltam:	lg	%r1, 0(%r12,%r3)
	lg	%r7, 0(%r12,%r2)
	mlgr	%r0, %r6
	alcgr	%r1, %r7
	alcgr	%r0, %r8
	algr	%r1, %r10
	lgr	%r10, %r0
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r5, .Ltam

	alcgr	%r0, %r8
	stg	%r0, 0(%r12,%r2)

	brctg	%r4, .Louter_loop
.Louter_end:

	lg	%r6, 8(%r3)
	lg	%r1, 16(%r3)
	lgr	%r7, %r0		
	mlgr	%r0, %r6
	algr	%r1, %r7
	alcgr	%r0, %r8
	stg	%r1, 24(%r2)
	stg	%r0, 32(%r2)





	la	%r4, 1(%r14)

	lg	%r1, 0(%r13)
	mlgr	%r0, %r1
	stg	%r1, 0(%r9)


.Ltop:	lg	%r11, 8(%r13)
	la	%r13, 8(%r13)
	lg	%r6, 8(%r9)
	lg	%r7, 16(%r9)
	mlgr	%r10, %r11
	alcgr	%r6, %r6
	alcgr	%r7, %r7
	alcgr	%r10, %r8		
	algr	%r6, %r0
	alcgr	%r7, %r11
	stmg	%r6, %r7, 8(%r9)
	la	%r9, 16(%r9)
	lgr	%r0, %r10		
	brctg	%r4, .Ltop

	alcgr	%r0, %r8
	stg	%r0, 8(%r9)

	lmg	%r6, %r14, 48(%r15)
	br	%r14
	.size	__gmpn_sqr_basecase,.-__gmpn_sqr_basecase
	.section .note.GNU-stack,"",@progbits
