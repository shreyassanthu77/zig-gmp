


























































  
  
  
  
  






	.text
	.align	8
	.globl	__gmpn_addlsh1_n 
	.type	__gmpn_addlsh1_n,@function
__gmpn_addlsh1_n:
	stmg	%r6, %r9, 48(%r15)

	aghi	%r5, 3
	lghi	%r7, 3
	srlg	%r0, %r5, 2
	ngr	%r7, %r5			
	je	.Lb1
	cghi	%r7, 2
	jl	.Lb2
	jne	.Lb0

.Lb3:	lmg	%r5, %r7, 0(%r4)
	la	%r4, 24(%r4)

	algr	%r5, %r5
	alcgr	%r6, %r6
	alcgr	%r7, %r7
	slbgr	%r1, %r1

	alg	%r5, 0(%r3)
	alcg	%r6, 8(%r3)
	alcg	%r7, 16(%r3)
	la	%r3, 24(%r3)
	slbgr	%r9, %r9

	stmg	%r5, %r7, 0(%r2)
	la	%r2, 24(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Lb0:	lghi	%r1, -1
	lghi	%r9, -1
	j	.Ltop

.Lb1:	lg	%r5, 0(%r4)
	la	%r4, 8(%r4)

	algr	%r5, %r5
	slbgr	%r1, %r1
	alg	%r5, 0(%r3)
	la	%r3, 8(%r3)
	slbgr	%r9, %r9

	stg	%r5, 0(%r2)
	la	%r2, 8(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Lb2:	lmg	%r5, %r6, 0(%r4)
	la	%r4, 16(%r4)

	algr	%r5, %r5
	alcgr	%r6, %r6
	slbgr	%r1, %r1

	alg	%r5, 0(%r3)
	alcg	%r6, 8(%r3)
	la	%r3, 16(%r3)
	slbgr	%r9, %r9

	stmg	%r5, %r6, 0(%r2)
	la	%r2, 16(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Ltop:	lmg	%r5, %r8, 0(%r4)
	la	%r4, 32(%r4)

	aghi	%r1, 1			

	alcgr	%r5, %r5
	alcgr	%r6, %r6
	alcgr	%r7, %r7
	alcgr	%r8, %r8

	slbgr	%r1, %r1		

	aghi	%r9, 1			

	alcg	%r5, 0(%r3)
	alcg	%r6, 8(%r3)
	alcg	%r7, 16(%r3)
	alcg	%r8, 24(%r3)
	la	%r3, 32(%r3)

	slbgr	%r9, %r9		

	stmg	%r5, %r8, 0(%r2)
	la	%r2, 32(%r2)
	brctg	%r0, .Ltop

.Lend:	la	%r2, 2(%r1,%r9)
	lmg	%r6, %r9, 48(%r15)
	br	%r14
	.size	__gmpn_addlsh1_n,.-__gmpn_addlsh1_n
	.section .note.GNU-stack,"",@progbits
