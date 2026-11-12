





























































	.text
	.align	8
	.globl	__gmpn_copyd 
	.type	__gmpn_copyd,@function
__gmpn_copyd:
	stmg	%r6, %r11, 48(%r15)

	sllg	%r1, %r4, 3
	la	%r10, 8(%r4)
	aghi	%r1, -64
	srlg	%r10, %r10, 3
	lghi	%r11, -64

	la	%r8, 0(%r1,%r2)	
	la	%r9, 0(%r1,%r3)	

	lghi	%r7, 7
	ngr	%r7, %r4			
	cghi	%r7, 2
	jh	.Lb34567
	cghi	%r7, 1
	je	.Lb1
	jh	.Lb2

.Lb0:	brctg	%r10, .Ltop
	j	.Lend

.Lb1:	lg	%r0, 56(%r9)
	aghi	%r9, -8
	stg	%r0, 56(%r8)
	aghi	%r8, -8
	brctg	%r10, .Ltop
	j	.Lend

.Lb2:	lmg	%r0, %r1, 48(%r9)
	aghi	%r9, -16
	stmg	%r0, %r1, 48(%r8)
	aghi	%r8, -16
	brctg	%r10, .Ltop
	j	.Lend

.Lb34567:
	cghi	%r7, 4
	jl	.Lb3
	je	.Lb4
	cghi	%r7, 6
	je	.Lb6
	jh	.Lb7

.Lb5:	lmg	%r0, %r4, 24(%r9)
	aghi	%r9, -40
	stmg	%r0, %r4, 24(%r8)
	aghi	%r8, -40
	brctg	%r10, .Ltop
	j	.Lend

.Lb3:	lmg	%r0, %r2, 40(%r9)
	aghi	%r9, -24
	stmg	%r0, %r2, 40(%r8)
	aghi	%r8, -24
	brctg	%r10, .Ltop
	j	.Lend

.Lb4:	lmg	%r0, %r3, 32(%r9)
	aghi	%r9, -32
	stmg	%r0, %r3, 32(%r8)
	aghi	%r8, -32
	brctg	%r10, .Ltop
	j	.Lend

.Lb6:	lmg	%r0, %r5, 16(%r9)
	aghi	%r9, -48
	stmg	%r0, %r5, 16(%r8)
	aghi	%r8, -48
	brctg	%r10, .Ltop
	j	.Lend

.Lb7:	lmg	%r0, %r6, 8(%r9)
	aghi	%r9, -56
	stmg	%r0, %r6, 8(%r8)
	aghi	%r8, -56
	brctg	%r10, .Ltop
	j	.Lend

.Ltop:	lmg	%r0, %r7, 0(%r9)
	la	%r9, 0(%r11,%r9)
	stmg	%r0, %r7, 0(%r8)
	la	%r8, 0(%r11,%r8)
	brctg	%r10, .Ltop

.Lend:	lmg	%r6, %r11, 48(%r15)
	br	%r14
	.size	__gmpn_copyd,.-__gmpn_copyd
	.section .note.GNU-stack,"",@progbits
