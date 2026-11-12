























































	.text
	.align	8
	.globl	__gmpn_copyi 
	.type	__gmpn_copyi,@function
__gmpn_copyi:
	ltgr	%r4, %r4
	sllg	%r4, %r4, 3
	je	.Lrtn
	aghi	%r4, -1
	srlg	%r5, %r4, 8
	ltgr	%r5, %r5		
	je	.L1

.Ltop:	mvc	0(256, %r2), 0(%r3)
	la	%r2, 256(%r2)
	la	%r3, 256(%r3)
	brctg	%r5, .Ltop

.L1:	bras	%r5, .L2		
	mvc	0(1, %r2), 0(%r3)
.L2:	ex	%r4, 0(%r5)		
.Lrtn:	br	%r14
	.size	__gmpn_copyi,.-__gmpn_copyi
	.section .note.GNU-stack,"",@progbits
