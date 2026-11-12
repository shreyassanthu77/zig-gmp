

























































  
  
  
  
  



	.text
	.align	8
	.globl	__gmpn_sublsh1_n 
	.type	__gmpn_sublsh1_n,@function
__gmpn_sublsh1_n:
	stmg	%r6, %r13, 48(%r15)

	aghi	%r5, 3
	lghi	%r7, 3
	srlg	%r0, %r5, 2
	ngr	%r7, %r5			
	je	.Lb1
	cghi	%r7, 2
	jl	.Lb2
	jne	.Lb0

.Lb3:	lmg	%r5, %r7, 0(%r3)
	la	%r3, 24(%r3)
	lmg	%r9, %r11, 0(%r4)
	la	%r4, 24(%r4)

	algr	%r9, %r9
	alcgr	%r10, %r10
	alcgr	%r11, %r11
	slbgr	%r1, %r1

	slgr	%r5, %r9
	slbgr	%r6, %r10
	slbgr	%r7, %r11
	slbgr	%r13, %r13

	stmg	%r5, %r7, 0(%r2)
	la	%r2, 24(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Lb0:	lghi	%r1, -1
	lghi	%r13, 0
	j	.Ltop

.Lb1:	lg	%r5, 0(%r3)
	la	%r3, 8(%r3)
	lg	%r9, 0(%r4)
	la	%r4, 8(%r4)

	algr	%r9, %r9
	slbgr	%r1, %r1
	slgr	%r5, %r9
	slbgr	%r13, %r13

	stg	%r5, 0(%r2)
	la	%r2, 8(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Lb2:	lmg	%r5, %r6, 0(%r3)
	la	%r3, 16(%r3)
	lmg	%r9, %r10, 0(%r4)
	la	%r4, 16(%r4)

	algr	%r9, %r9
	alcgr	%r10, %r10
	slbgr	%r1, %r1

	slgr	%r5, %r9
	slbgr	%r6, %r10
	slbgr	%r13, %r13

	stmg	%r5, %r6, 0(%r2)
	la	%r2, 16(%r2)
	brctg	%r0, .Ltop
	j	.Lend

.Ltop:	lmg	%r9, %r12, 0(%r4)
	la	%r4, 32(%r4)

	aghi	%r1, 1			

	alcgr	%r9, %r9
	alcgr	%r10, %r10
	alcgr	%r11, %r11
	alcgr	%r12, %r12

	slbgr	%r1, %r1		

	lmg	%r5, %r8, 0(%r3)
	la	%r3, 32(%r3)

	aghi	%r13, 1			

	slbgr	%r5, %r9
	slbgr	%r6, %r10
	slbgr	%r7, %r11
	slbgr	%r8, %r12

	slbgr	%r13, %r13		

	stmg	%r5, %r8, 0(%r2)
	la	%r2, 32(%r2)
	brctg	%r0, .Ltop

.Lend:		slgr	%r1, %r13
	lghi	%r2, 1
	algr	%r2, %r1
	lmg	%r6, %r13, 48(%r15)
	br	%r14
	.size	__gmpn_sublsh1_n,.-__gmpn_sublsh1_n
	.section .note.GNU-stack,"",@progbits
