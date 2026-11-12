

















































































	.text
	.align	6
	.byte	0,0,0,0,0,0
	.globl	___gmpn_copyi_x86_64
	
	
___gmpn_copyi_x86_64:

	lea	-8(%rdi), %rdi
	sub	$4, %rdx
	jc	Lend

Ltop:	mov	(%rsi), %rax
	mov	8(%rsi), %r9
	lea	32(%rdi), %rdi
	mov	16(%rsi), %r10
	mov	24(%rsi), %r11
	lea	32(%rsi), %rsi
	mov	%rax, -24(%rdi)
	mov	%r9, -16(%rdi)
	sub	$4, %rdx
	mov	%r10, -8(%rdi)
	mov	%r11, (%rdi)
	jnc	Ltop

Lend:	shr	%edx
	jnc	1f
	mov	(%rsi), %rax
	mov	%rax, 8(%rdi)
	lea	8(%rdi), %rdi
	lea	8(%rsi), %rsi
1:	shr	%edx
	jnc	1f
	mov	(%rsi), %rax
	mov	8(%rsi), %r9
	mov	%rax, 8(%rdi)
	mov	%r9, 16(%rdi)
1:	ret
	


