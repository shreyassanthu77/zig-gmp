




























































	.text
	.align	8
	.globl	__gmpn_mul_basecase 
	.type	__gmpn_mul_basecase,@function
__gmpn_mul_basecase:
	cghi	%r4, 2
	jhe	.Lge2


	lg	%r1, 0(%r5)
	mlg	%r0, 0(%r3)
	stg	%r1, 0(%r2)
	stg	%r0, 8(%r2)
	br	%r14

.Lge2:	


.Lgen:


	stmg	%r6, %r12, 48(%r15)
	lghi	%r8, 0
	aghi	%r4, -1

	lg	%r7, 0(%r5)
	lg	%r11, 0(%r3)
	lghi	%r12, 8			
	mlgr	%r10, %r7
	lgr	%r9, %r4
	stg	%r11, 0(%r2)
	cr	%r15, %r15		

.Ltm:	lg	%r1, 0(%r12,%r3)
	mlgr	%r0, %r7
	alcgr	%r1, %r10
	lgr	%r10, %r0		
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r9, .Ltm

	alcgr	%r0, %r8
	stg	%r0, 0(%r12,%r2)



	aghi	%r6, -1
	je	.Louter_end
.Louter_loop:

	la	%r2, 8(%r2)		
	la	%r5, 8(%r5)		
	lg	%r7, 0(%r5)
	lg	%r11, 0(%r3)
	lghi	%r12, 8			
	mlgr	%r10, %r7
	lgr	%r9, %r4
	alg	%r11, 0(%r2)
	stg	%r11, 0(%r2)

.Ltam:	lg	%r1, 0(%r12,%r3)
	lg	%r11, 0(%r12,%r2)
	mlgr	%r0, %r7
	alcgr	%r1, %r11
	alcgr	%r0, %r8
	algr	%r1, %r10
	lgr	%r10, %r0
	stg	%r1, 0(%r12,%r2)
	la	%r12, 8(%r12)
	brctg	%r9, .Ltam

	alcgr	%r0, %r8
	stg	%r0, 0(%r12,%r2)

	brctg	%r6, .Louter_loop
.Louter_end:

	lmg	%r6, %r12, 48(%r15)
	br	%r14
	.size	__gmpn_mul_basecase,.-__gmpn_mul_basecase
	.section .note.GNU-stack,"",@progbits
