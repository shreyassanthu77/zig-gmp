

















































































	.text
	.align	4
	.globl	___gmpn_copyi_bt1
	
	
___gmpn_copyi_bt1:

	
	lea	-32(%rsi,%rdx,8), %rsi
	lea	-32(%rdi,%rdx,8), %rdi
	neg	%rdx
	add	$4, %rdx
	jg	Lend
	.align	4
Ltop:	mov	(%rsi,%rdx,8), %r8
	mov	%r8, (%rdi,%rdx,8)
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)
	mov	24(%rsi,%rdx,8), %r8
	mov	%r8, 24(%rdi,%rdx,8)
Lent:	add	$4, %rdx
	jle	Ltop

Lend:	cmp	$4, %edx
	jz	Lret
	mov	(%rsi,%rdx,8), %r8
	mov	%r8, (%rdi,%rdx,8)
	cmp	$3, %edx
	jz	Lret
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)
	cmp	$2, %edx
	jz	Lret
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)

Lret:	
	ret
	


