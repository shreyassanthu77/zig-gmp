

























































	.text
	.align	8
	.globl	__gmpn_rshift 
	.type	__gmpn_rshift,@function
__gmpn_rshift:
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
	srlg	%r0, %r1, 0(%r5)
	stg	%r0, 0(%r2)
	sllg	%r2, %r1, 0(%r6)
	lg	%r6, 48(%r15)		
	br	%r14

.Ln2:	lg	%r1, 0(%r3)
	sllg	%r4, %r1, 0(%r6)
	srlg	%r0, %r1, 0(%r5)
	lg	%r1, 8(%r3)
	sllg	%r7, %r1, 0(%r6)
	ogr	%r7, %r0
	srlg	%r0, %r1, 0(%r5)
	stg	%r7, 0(%r2)
	stg	%r0, 8(%r2)
	lgr	%r2, %r4
	lmg	%r6, %r7, 48(%r15)
	br	%r14


.Ln3:	lg	%r1, 0(%r3)
	sllg	%r4, %r1, 0(%r6)
	srlg	%r0, %r1, 0(%r5)
	lg	%r1, 8(%r3)
	sllg	%r7, %r1, 0(%r6)
	ogr	%r7, %r0
	srlg	%r0, %r1, 0(%r5)
	stg	%r7, 0(%r2)
	lg	%r1, 16(%r3)
	sllg	%r7, %r1, 0(%r6)
	ogr	%r7, %r0
	srlg	%r0, %r1, 0(%r5)
	stg	%r7, 8(%r2)
	stg	%r0, 16(%r2)
	lgr	%r2, %r4
	lmg	%r6, %r7, 48(%r15)
	br	%r14

.Lgt1:	stmg	%r6, %r13, 48(%r15)
	lcgr	%r6, %r5		

	sllg	%r1, %r4, 3
	srlg	%r0, %r4, 2		

	lghi	%r7, 3
	ngr	%r7, %r4
	je	.Lb0
	cghi	%r7, 2
	jl	.Lb1
	je	.Lb2

.Lb3:	aghi	%r2, -8
	lg	%r7, 0(%r3)
	sllg	%r9, %r7, 0(%r6)
	srlg	%r11, %r7, 0(%r5)
	lg	%r8, 8(%r3)
	lg	%r7, 16(%r3)
	sllg	%r4, %r8, 0(%r6)
	srlg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	la	%r3, 24(%r3)
	j	.Llm3

.Lb2:	aghi	%r2, -16
	lg	%r8, 0(%r3)
	lg	%r7, 8(%r3)
	sllg	%r9, %r8, 0(%r6)
	srlg	%r13, %r8, 0(%r5)
	la	%r3, 16(%r3)
	j	.Llm2

.Lb1:	aghi	%r2, -24
	lg	%r7, 0(%r3)
	sllg	%r9, %r7, 0(%r6)
	srlg	%r11, %r7, 0(%r5)
	lg	%r8, 8(%r3)
	lg	%r7, 16(%r3)
	sllg	%r4, %r8, 0(%r6)
	srlg	%r10, %r8, 0(%r5)
	ogr	%r11, %r4
	la	%r3, 8(%r3)
	j	.Llm1

.Lb0:	aghi	%r2, -32
	lg	%r8, 0(%r3)
	lg	%r7, 8(%r3)
	sllg	%r9, %r8, 0(%r6)
	srlg	%r10, %r8, 0(%r5)
	j	.Llm0

	.align	8
.Ltop:	sllg	%r4, %r8, 0(%r6)
	srlg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r10, 0(%r2)
.Llm3:	stg	%r11, 8(%r2)
.Llm2:	sllg	%r12, %r7, 0(%r6)
	srlg	%r11, %r7, 0(%r5)
	lg	%r8, 0(%r3)
	lg	%r7, 8(%r3)
	ogr	%r13, %r12
	sllg	%r4, %r8, 0(%r6)
	srlg	%r10, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r13, 16(%r2)
.Llm1:	stg	%r11, 24(%r2)
.Llm0:	sllg	%r12, %r7, 0(%r6)
	aghi	%r2, 32
	srlg	%r11, %r7, 0(%r5)
	lg	%r8, 16(%r3)
	lg	%r7, 24(%r3)
	aghi	%r3, 32
	ogr	%r10, %r12
	brctg	%r0, .Ltop

.Lend:	sllg	%r4, %r8, 0(%r6)
	srlg	%r13, %r8, 0(%r5)
	ogr	%r11, %r4
	stg	%r10, 0(%r2)
	stg	%r11, 8(%r2)
	sllg	%r12, %r7, 0(%r6)
	srlg	%r11, %r7, 0(%r5)
	ogr	%r13, %r12
	stg	%r13, 16(%r2)
	stg	%r11, 24(%r2)
	lgr	%r2, %r9

	lmg	%r6, %r13, 48(%r15)
	br	%r14
	.size	__gmpn_rshift,.-__gmpn_rshift
	.section .note.GNU-stack,"",@progbits
