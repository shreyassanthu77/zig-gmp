






























































	.text
	.align	8
	.globl	__gmpn_lshift 
	.type	__gmpn_lshift,@function
__gmpn_lshift:
	cghi	%r4, 3
	jh	.Lgt1

	stmg	%r6, %r7, 48(%r15)
	larl	%r1, .Ltab-4
	lcgr	%r6, %r5
	sllg	%r4, %r4, 2
	b	0(%r4,%r1)
.Ltab:	j	.Ln1
	j	.Ln2
	j	.Ln3

.Ln1:	lg	%r1, 0(%r3)
	sllg	%r0, %r1, 0(%r5)
	stg	%r0, 0(%r2)
	srlg	%r2, %r1, 0(%r6)
	lg	%r6, 48(%r15)		
	br	%r14

.Ln2:	lg	%r1, 8(%r3)
	srlg	%r4, %r1, 0(%r6)
	sllg	%r0, %r1, 0(%r5)
	j	.Lcj

.Ln3:	lg	%r1, 16(%r3)
	srlg	%r4, %r1, 0(%r6)
	sllg	%r0, %r1, 0(%r5)
	lg	%r1, 8(%r3)
	srlg	%r7, %r1, 0(%r6)
	ogr	%r7, %r0
	sllg	%r0, %r1, 0(%r5)
	stg	%r7, 16(%r2)
.Lcj:	lg	%r1, 0(%r3)
	srlg	%r7, %r1, 0(%r6)
	ogr	%r7, %r0
	sllg	%r0, %r1, 0(%r5)
	stg	%r7, 8(%r2)
	stg	%r0, 0(%r2)
	lgr	%r2, %r4
	lmg	%r6, %r7, 48(%r15)
	br	%r14

.Lgt1:	stmg	%r6, %r13, 48(%r15)
	lcgr	%r6, %r5		

	sllg	%r1, %r4, 3
	srlg	%r0, %r4, 2		

	agr	%r3, %r1			
	agr	%r2, %r1			
	aghi	%r3, -56
	aghi	%r2, -40

	lghi	%r7, 3
	ngr	%r7, %r4
	je	.Lb0
	cghi	%r7, 2
	jl	.Lb1
	je	.Lb2

.Lb3:	lg	%r7, 48(%r3)
	srlg	%r9, %r7, 0(%r6)
	sllg	%r11, %r7, 0(%r5)
	lg	%r8, 40(%r3)
	lg	%r7, 32(%r3)
	srlg	%r4, %r8, 0(%r6)
	sllg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	la	%r2, 16(%r2)
	j	.Llm3

.Lb2:	lg	%r8, 48(%r3)
	lg	%r7, 40(%r3)
	srlg	%r9, %r8, 0(%r6)
	sllg	%r13, %r8, 0(%r5)
	la	%r2, 24(%r2)
	la	%r3, 8(%r3)
	j	.Llm2

.Lb1:	lg	%r7, 48(%r3)
	srlg	%r9, %r7, 0(%r6)
	sllg	%r11, %r7, 0(%r5)
	lg	%r8, 40(%r3)
	lg	%r7, 32(%r3)
	srlg	%r4, %r8, 0(%r6)
	sllg	%r10, %r8, 0(%r5)
	ogr	%r11, %r4
	la	%r2, 32(%r2)
	la	%r3, 16(%r3)
	j	.Llm1

.Lb0:	lg	%r8, 48(%r3)
	lg	%r7, 40(%r3)
	srlg	%r9, %r8, 0(%r6)
	sllg	%r10, %r8, 0(%r5)
	la	%r2, 40(%r2)
	la	%r3, 24(%r3)
	j	.Llm0

	.align	8
.Ltop:	srlg	%r4, %r8, 0(%r6)
	sllg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r10, 24(%r2)
.Llm3:	stg	%r11, 16(%r2)
.Llm2:	srlg	%r12, %r7, 0(%r6)
	sllg	%r11, %r7, 0(%r5)
	lg	%r8, 24(%r3)
	lg	%r7, 16(%r3)
	ogr	%r13, %r12
	srlg	%r4, %r8, 0(%r6)
	sllg	%r10, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r13, 8(%r2)
.Llm1:	stg	%r11, 0(%r2)
.Llm0:	srlg	%r12, %r7, 0(%r6)
	aghi	%r2, -32
	sllg	%r11, %r7, 0(%r5)
	lg	%r8, 8(%r3)
	lg	%r7, 0(%r3)
	aghi	%r3, -32
	ogr	%r10, %r12
	brctg	%r0, .Ltop

.Lend:	srlg	%r4, %r8, 0(%r6)
	sllg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r10, 24(%r2)
	stg	%r11, 16(%r2)
	srlg	%r12, %r7, 0(%r6)
	sllg	%r11, %r7, 0(%r5)
	ogr	%r13, %r12
	stg	%r13, 8(%r2)
	stg	%r11, 0(%r2)
	lgr	%r2, %r9

	lmg	%r6, %r13, 48(%r15)
	br	%r14
	.size	__gmpn_lshift,.-__gmpn_lshift
	.section .note.GNU-stack,"",@progbits
