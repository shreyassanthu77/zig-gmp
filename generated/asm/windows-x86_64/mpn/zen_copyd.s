
















































































































	.text
	.align	16, 0x90
	.globl	__gmpn_copyd_zen
	
	.def	__gmpn_copyd_zen
	.scl	2
	.type	32
	.endef
__gmpn_copyd_zen:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx


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

	add	$-56, %rsp	
	movdqa	%xmm6, (%rsp)	
	movdqa	%xmm7, 16(%rsp)	

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

	movdqa	(%rsp), %xmm6	
	movdqa	16(%rsp), %xmm7	
	add	$56, %rsp	

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
.Ldon:	pop	%rsi
	pop	%rdi
	ret
	



