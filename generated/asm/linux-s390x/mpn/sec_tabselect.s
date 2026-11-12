





















































	









	.text
	.align	8
	.globl	__gmpn_sec_tabselect 
	.type	__gmpn_sec_tabselect,@function
__gmpn_sec_tabselect:
	stmg	%r5, %r15, 40(%r15)
	aghi	%r15, -64

	sllg	%r4, %r4, 3
	msgr	%r5, %r4
	stg	%r5, 16(%r15)			

	srlg	%r5, %r4, 2+3
	ngr	%r5, %r5
	je	.Lend4
.Louter:
	lg	%r0, 112(%r15)
	lg	%r1, 104(%r15)		
	lghi	%r6, 0
	lghi	%r7, 0
	lghi	%r8, 0
	lghi	%r9, 0
.Ltp4:	lghi	%r14, 1
	slgr	%r0, %r14
	slbgr	%r14, %r14
	lmg	%r10, %r13, 0(%r3)
	ngr	%r10, %r14
	ngr	%r11, %r14
	ngr	%r12, %r14
	ngr	%r13, %r14
	agr	%r6, %r10
	agr	%r7, %r11
	agr	%r8, %r12
	agr	%r9, %r13
	agr	%r3, %r4
	brctg	%r1, .Ltp4
	stmg	%r6, %r9, 0(%r2)
	aghi	%r2, 32
	slg	%r3, 16(%r15)
	aghi	%r3, 32
	brctg	%r5, .Louter
.Lend4:
	tmll	%r4, 16
	je	.Lend2
	lg	%r0, 112(%r15)
	lg	%r1, 104(%r15)		
	lghi	%r6, 0
	lghi	%r7, 0
.Ltp2:	lghi	%r14, 1
	slgr	%r0, %r14
	slbgr	%r14, %r14
	lmg	%r10, %r11, 0(%r3)
	ngr	%r10, %r14
	ngr	%r11, %r14
	agr	%r6, %r10
	agr	%r7, %r11
	agr	%r3, %r4
	brctg	%r1, .Ltp2
	stmg	%r6, %r7, 0(%r2)
	aghi	%r2, 16
	slg	%r3, 16(%r15)
	aghi	%r3, 16
.Lend2:
	tmll	%r4, 8
	je	.Lend1
	lg	%r0, 112(%r15)
	lg	%r1, 104(%r15)		
	lghi	%r6, 0
.Ltp1:	lghi	%r14, 1
	slgr	%r0, %r14
	slbgr	%r14, %r14
	lg	%r10, 0(%r3)
	ngr	%r10, %r14
	agr	%r6, %r10
	agr	%r3, %r4
	brctg	%r1, .Ltp1
	stg	%r6, 0(%r2)
.Lend1:
	lmg	%r5, %r15, 104(%r15)
	br	%r14
	.size	__gmpn_sec_tabselect,.-__gmpn_sec_tabselect
	.section .note.GNU-stack,"",@progbits
