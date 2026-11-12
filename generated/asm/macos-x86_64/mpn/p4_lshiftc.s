










































































































	.text
	.align	4
	.globl	___gmpn_lshiftc_pentium4
	
	
___gmpn_lshiftc_pentium4:

	
	movd	%ecx, %xmm4
	mov	$64, %eax
	sub	%ecx, %eax
	movd	%eax, %xmm5

	neg	%ecx
	mov	-8(%rsi,%rdx,8), %rax
	shr	%cl, %rax

	pcmpeqb	%xmm2, %xmm2		

	cmp	$2, %rdx
	jle	Lle2

	lea	(%rdi,%rdx,8), %ecx
	test	$8, %cl
	je	Lrp_aligned


	movq	-8(%rsi,%rdx,8), %xmm0
	movq	-16(%rsi,%rdx,8), %xmm1
	psllq	%xmm4, %xmm0
	psrlq	%xmm5, %xmm1
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movq	%xmm0, -8(%rdi,%rdx,8)
	dec	%rdx

Lrp_aligned:
	lea	(%rsi,%rdx,8), %ecx
	test	$8, %cl
	je	Laent
	jmp	Luent




	.align	4
Lutop:movq	(%rsi,%rdx,8), %xmm1
	punpcklqdq  8(%rsi,%rdx,8), %xmm1
	movdqa	-8(%rsi,%rdx,8), %xmm0
	psllq	%xmm4, %xmm1
	psrlq	%xmm5, %xmm0
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movdqa	%xmm0, (%rdi,%rdx,8)
Luent:sub	$2, %rdx
	ja	Lutop

	jne	Lend8

	movq	(%rsi), %xmm1
	pxor	%xmm0, %xmm0
	punpcklqdq  %xmm1, %xmm0
	punpcklqdq  8(%rsi), %xmm1
	psllq	%xmm4, %xmm1
	psrlq	%xmm5, %xmm0
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movdqa	%xmm0, (%rdi)
	
	ret




	.align	4
Latop:movdqa	(%rsi,%rdx,8), %xmm0		
	movq	-8(%rsi,%rdx,8), %xmm1	
	punpcklqdq  %xmm0, %xmm1	
	psllq	%xmm4, %xmm0
	psrlq	%xmm5, %xmm1
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movdqa	%xmm0, (%rdi,%rdx,8)
Laent:sub	$2, %rdx
	ja	Latop

	jne	Lend8

	movdqa	(%rsi), %xmm0
	pxor	%xmm1, %xmm1
	punpcklqdq  %xmm0, %xmm1
	psllq	%xmm4, %xmm0
	psrlq	%xmm5, %xmm1
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movdqa	%xmm0, (%rdi)
	
	ret


	.align	4
Lle2:	jne	Lend8

	movq	8(%rsi), %xmm0
	movq	(%rsi), %xmm1
	psllq	%xmm4, %xmm0
	psrlq	%xmm5, %xmm1
	por	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	movq	%xmm0, 8(%rdi)

Lend8:movq	(%rsi), %xmm0
	psllq	%xmm4, %xmm0
	pxor	%xmm2, %xmm0
	movq	%xmm0, (%rdi)
	
	ret
	



