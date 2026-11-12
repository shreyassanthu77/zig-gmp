

















































































	.text
	.align	16, 0x90
	.globl	__gmpn_copyi_bt1
	
	.def	__gmpn_copyi_bt1
	.scl	2
	.type	32
	.endef
__gmpn_copyi_bt1:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx

	lea	-32(%rsi,%rdx,8), %rsi
	lea	-32(%rdi,%rdx,8), %rdi
	neg	%rdx
	add	$4, %rdx
	jg	.Lend
	.align	16, 0x90
.Ltop:	mov	(%rsi,%rdx,8), %r8
	mov	%r8, (%rdi,%rdx,8)
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)
	mov	24(%rsi,%rdx,8), %r8
	mov	%r8, 24(%rdi,%rdx,8)
.Lent:	add	$4, %rdx
	jle	.Ltop

.Lend:	cmp	$4, %edx
	jz	.Lret
	mov	(%rsi,%rdx,8), %r8
	mov	%r8, (%rdi,%rdx,8)
	cmp	$3, %edx
	jz	.Lret
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)
	cmp	$2, %edx
	jz	.Lret
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)

.Lret:	pop	%rsi
	pop	%rdi
	ret
	


