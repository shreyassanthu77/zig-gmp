






















































  
  
  










	.text
	.align	8
	.globl	__gmpn_andn_n 
	.type	__gmpn_andn_n,@function
__gmpn_andn_n:



	stmg	%r6, %r8, 48(%r15)
	lghi	%r1, -1

	aghi	%r5, 3
	lghi	%r7, 3
	srlg	%r0, %r5, 2
	ngr	%r7, %r5			
	je	.Lb1
	cghi	%r7, 2
	jl	.Lb2
	jne	.Ltop

.Lb3:	lmg	%r5, %r7, 0(%r4)
	la	%r4, 24(%r4)
	xgr	%r5, %r1
	xgr	%r6, %r1
	xgr	%r7, %r1
	ng	%r5, 0(%r3)
	ng	%r6, 8(%r3)
	ng	%r7, 16(%r3)
	stmg	%r5, %r7, 0(%r2)
	la	%r2, 24(%r2)
	la	%r3, 24(%r3)
	j	.Lmid

.Lb1:	lg	%r5, 0(%r4)
	la	%r4, 8(%r4)
	xgr	%r5, %r1
	ng	%r5, 0(%r3)
	stg	%r5, 0(%r2)
	la	%r2, 8(%r2)
	la	%r3, 8(%r3)
	j	.Lmid

.Lb2:	lmg	%r5, %r6, 0(%r4)
	la	%r4, 16(%r4)
	xgr	%r5, %r1
	xgr	%r6, %r1
	ng	%r5, 0(%r3)
	ng	%r6, 8(%r3)
	stmg	%r5, %r6, 0(%r2)
	la	%r2, 16(%r2)
	la	%r3, 16(%r3)
	j	.Lmid

.Ltop:	lmg	%r5, %r8, 0(%r4)
	la	%r4, 32(%r4)
	xgr	%r5, %r1
	xgr	%r6, %r1
	xgr	%r7, %r1
	xgr	%r8, %r1
	ng	%r5, 0(%r3)
	ng	%r6, 8(%r3)
	ng	%r7, 16(%r3)
	ng	%r8, 24(%r3)
	la	%r3, 32(%r3)
	stmg	%r5, %r8, 0(%r2)
	la	%r2, 32(%r2)
.Lmid:	brctg	%r0, .Ltop

	lmg	%r6, %r8, 48(%r15)
	br	%r14




	.size	__gmpn_andn_n,.-__gmpn_andn_n
	.section .note.GNU-stack,"",@progbits
