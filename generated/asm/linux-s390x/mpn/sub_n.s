



























































  
  
  
  
  
  




	.text
	.align	8
	.globl	__gmpn_sub_n 
	.type	__gmpn_sub_n,@function
__gmpn_sub_n:
	stmg	%r6, %r8, 48(%r15)

	aghi	%r5, 3
	lghi	%r7, 3
	srlg	%r1, %r5, 2
	ngr	%r7, %r5			
	je	.Lb1
	cghi	%r7, 2
	jl	.Lb2
	jne	.Lb0

.Lb3:	lmg	%r5, %r7, 0(%r3)
	la	%r3, 24(%r3)
	slg	%r5, 0(%r4)
	slbg	%r6, 8(%r4)
	slbg	%r7, 16(%r4)
	la	%r4, 24(%r4)
	stmg	%r5, %r7, 0(%r2)
	la	%r2, 24(%r2)
	brctg	%r1, .Ltop
	j	.Lend

.Lb0:	lmg	%r5, %r8, 0(%r3)		
	la	%r3, 32(%r3)		
	slg	%r5, 0(%r4)		
	slbg	%r6, 8(%r4)
	j	.Lm0

.Lb1:	lg	%r5, 0(%r3)
	la	%r3, 8(%r3)
	slg	%r5, 0(%r4)
	la	%r4, 8(%r4)
	stg	%r5, 0(%r2)
	la	%r2, 8(%r2)
	brctg	%r1, .Ltop
	j	.Lend

.Lb2:	lmg	%r5, %r6, 0(%r3)
	la	%r3, 16(%r3)
	slg	%r5, 0(%r4)
	slbg	%r6, 8(%r4)
	la	%r4, 16(%r4)
	stmg	%r5, %r6, 0(%r2)
	la	%r2, 16(%r2)
	brctg	%r1, .Ltop
	j	.Lend

.Ltop:	lmg	%r5, %r8, 0(%r3)
	la	%r3, 32(%r3)
	slbg	%r5, 0(%r4)
	slbg	%r6, 8(%r4)
.Lm0:	slbg	%r7, 16(%r4)
	slbg	%r8, 24(%r4)
	la	%r4, 32(%r4)
	stmg	%r5, %r8, 0(%r2)
	la	%r2, 32(%r2)
	brctg	%r1, .Ltop

.Lend:		slbgr	%r2, %r2
	lcgr	%r2, %r2
	lmg	%r6, %r8, 48(%r15)
	br	%r14
	.size	__gmpn_sub_n,.-__gmpn_sub_n
	.section .note.GNU-stack,"",@progbits
