
















































































































	.text
	.align	64, 0x90
	.globl	__gmpn_copyi_zen
	.type	__gmpn_copyi_zen,@function
	
__gmpn_copyi_zen:

	

	cmp	$3, %rdx			
	jc	.Lbc

	test	$8, %dil		
	jz	.Lali			
	movsq				
	dec	%rdx

.Lali:	sub	$16, %rdx
	jc	.Lsma





	.align	16, 0x90
.Ltop:	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movdqu	48(%rsi), %xmm3
	movdqu	64(%rsi), %xmm4
	movdqu	80(%rsi), %xmm5
	movdqu	96(%rsi), %xmm6
	movdqu	112(%rsi), %xmm7
	lea	128(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, 16(%rdi)
	movdqa	%xmm2, 32(%rdi)
	movdqa	%xmm3, 48(%rdi)
	movdqa	%xmm4, 64(%rdi)
	movdqa	%xmm5, 80(%rdi)
	movdqa	%xmm6, 96(%rdi)
	movdqa	%xmm7, 112(%rdi)
	lea	128(%rdi), %rdi
	sub	$16, %rdx
	jnc	.Ltop





.Lsma:	test	$8, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movdqu	48(%rsi), %xmm3
	lea	64(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, 16(%rdi)
	movdqa	%xmm2, 32(%rdi)
	movdqa	%xmm3, 48(%rdi)
	lea	64(%rdi), %rdi
1:
	test	$4, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	lea	32(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, 16(%rdi)
	lea	32(%rdi), %rdi
1:
	test	$2, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	lea	16(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	lea	16(%rdi), %rdi
	.align	16, 0x90
1:
.Lend:	test	$1, %dl
	jz	1f
	mov	(%rsi), %r8
	mov	%r8, (%rdi)
1:
	
	ret






.Lbc:	sub	$2, %rdx
	jc	.Lend
	.align	16, 0x90
1:	mov	(%rsi), %rax
	mov	8(%rsi), %rcx
	mov	%rax, (%rdi)
	mov	%rcx, 8(%rdi)

	test	$1, %dl
	jz	.Lret
	mov	16(%rsi), %rax
	mov	%rax, 16(%rdi)
.Lret:	
	ret
	.size	__gmpn_copyi_zen,.-__gmpn_copyi_zen



	.section .note.GNU-stack,"",@progbits
