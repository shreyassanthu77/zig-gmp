

















































































	.text
	.align	16, 0x90
	.globl	__gmpn_copyd_bt1
	.type	__gmpn_copyd_bt1,@function
	
__gmpn_copyd_bt1:

	
	sub	$4, %rdx
	jl	.Lend
	.align	16, 0x90
.Ltop:	mov	24(%rsi,%rdx,8), %r8
	mov	%r8, 24(%rdi,%rdx,8)
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)
	mov	(%rsi,%rdx,8), %r8
	mov	%r8, (%rdi,%rdx,8)
.Lent:	sub	$4, %rdx
	jge	.Ltop

.Lend:	cmp	$-4, %edx
	jz	.Lret
	mov	24(%rsi,%rdx,8), %r8
	mov	%r8, 24(%rdi,%rdx,8)
	cmp	$-3, %edx
	jz	.Lret
	mov	16(%rsi,%rdx,8), %r8
	mov	%r8, 16(%rdi,%rdx,8)
	cmp	$-2, %edx
	jz	.Lret
	mov	8(%rsi,%rdx,8), %r8
	mov	%r8, 8(%rdi,%rdx,8)

.Lret:	
	ret
	.size	__gmpn_copyd_bt1,.-__gmpn_copyd_bt1


	.section .note.GNU-stack,"",@progbits
