





















































  
  
  
  











	.text
	.align	8
	.globl	__gmpn_and_n 
	.type	__gmpn_and_n,@function
__gmpn_and_n:

	cgr	%r2, %r3
	jne	.Lnormal

	sllg	%r5, %r5, 3
	aghi	%r5, -1
	srlg	%r1, %r5, 8
	ltgr	%r1, %r1		
	je	.L1

.Ltp:	nc	0(256, %r2), 0(%r4)
	la	%r2, 256(%r2)
	la	%r4, 256(%r4)
	brctg	%r1, .Ltp

.L1:	bras	%r1, .L2		
	nc	0(1, %r2), 0(%r4)
.L2:	ex	%r5, 0(%r1)		
.Lrtn:	br	%r14


.Lnormal:
	stmg	%r6, %r8, 48(%r15)
	aghi	%r5, 3
	lghi	%r7, 3
	srlg	%r0, %r5, 2
	ngr	%r7, %r5			
	je	.Lb1
	cghi	%r7, 2
	jl	.Lb2
	jne	.Ltop

.Lb3:	lmg	%r5, %r7, 0(%r3)
	la	%r3, 24(%r3)
	ng	%r5, 0(%r4)
	ng	%r6, 8(%r4)
	ng	%r7, 16(%r4)
	stmg	%r5, %r7, 0(%r2)
	la	%r2, 24(%r2)
	la	%r4, 24(%r4)
	j	.Lmid

.Lb1:	lg	%r5, 0(%r3)
	la	%r3, 8(%r3)
	ng	%r5, 0(%r4)
	stg	%r5, 0(%r2)
	la	%r2, 8(%r2)
	la	%r4, 8(%r4)
	j	.Lmid

.Lb2:	lmg	%r5, %r6, 0(%r3)
	la	%r3, 16(%r3)
	ng	%r5, 0(%r4)
	ng	%r6, 8(%r4)
	stmg	%r5, %r6, 0(%r2)
	la	%r2, 16(%r2)
	la	%r4, 16(%r4)
	j	.Lmid

.Ltop:	lmg	%r5, %r8, 0(%r3)
	la	%r3, 32(%r3)
	ng	%r5, 0(%r4)
	ng	%r6, 8(%r4)
	ng	%r7, 16(%r4)
	ng	%r8, 24(%r4)
	stmg	%r5, %r8, 0(%r2)
	la	%r2, 32(%r2)
	la	%r4, 32(%r4)
.Lmid:	brctg	%r0, .Ltop

	lmg	%r6, %r8, 48(%r15)
	br	%r14






	.size	__gmpn_and_n,.-__gmpn_and_n
	.section .note.GNU-stack,"",@progbits
