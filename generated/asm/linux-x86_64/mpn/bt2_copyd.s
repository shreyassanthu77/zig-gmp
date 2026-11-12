
















































































































	.text
	.align	16, 0x90
	.globl	__gmpn_copyd_bt2
	.type	__gmpn_copyd_bt2,@function
	
__gmpn_copyd_bt2:

	

	test	%rdx, %rdx
	jz	.Ldon

	lea	-16(%rdi,%rdx,8), %rdi
	lea	-16(%rsi,%rdx,8), %rsi

	test	$8, %dil		
	jz	.Lali			
	mov	8(%rsi), %rax
	lea	-8(%rsi), %rsi
	mov	%rax, 8(%rdi)
	lea	-8(%rdi), %rdi
	dec	%rdx

.Lali:	sub	$16, %rdx
	jc	.Lsma





	.align	16, 0x90
.Ltop:	movdqu	(%rsi), %xmm0
	movdqu	-16(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	movdqu	-48(%rsi), %xmm3
	movdqu	-64(%rsi), %xmm4
	movdqu	-80(%rsi), %xmm5
	movdqu	-96(%rsi), %xmm6
	movdqu	-112(%rsi), %xmm7
	lea	-128(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, -16(%rdi)
	movdqa	%xmm2, -32(%rdi)
	movdqa	%xmm3, -48(%rdi)
	movdqa	%xmm4, -64(%rdi)
	movdqa	%xmm5, -80(%rdi)
	movdqa	%xmm6, -96(%rdi)
	movdqa	%xmm7, -112(%rdi)
	lea	-128(%rdi), %rdi
	sub	$16, %rdx
	jnc	.Ltop





.Lsma:	test	$8, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	movdqu	-16(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	movdqu	-48(%rsi), %xmm3
	lea	-64(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, -16(%rdi)
	movdqa	%xmm2, -32(%rdi)
	movdqa	%xmm3, -48(%rdi)
	lea	-64(%rdi), %rdi
1:
	test	$4, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	movdqu	-16(%rsi), %xmm1
	lea	-32(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	movdqa	%xmm1, -16(%rdi)
	lea	-32(%rdi), %rdi
1:
	test	$2, %dl
	jz	1f
	movdqu	(%rsi), %xmm0
	lea	-16(%rsi), %rsi
	movdqa	%xmm0, (%rdi)
	lea	-16(%rdi), %rdi
1:
	test	$1, %dl
	jz	1f
	mov	8(%rsi), %r8
	mov	%r8, 8(%rdi)
1:
.Ldon:	
	ret
	.size	__gmpn_copyd_bt2,.-__gmpn_copyd_bt2



	.section .note.GNU-stack,"",@progbits
