




































































  
  









	.text
	.align	4
	.globl	___gmpn_addlsh_n
	
	
___gmpn_addlsh_n:

	

	push	%r12
	push	%r13
	push	%r14
	push	%rbp
	push	%rbx

	mov	%rcx, %rax
	xor	%ebx, %ebx	
	mov	%r8d, %ecx	
	xor	%ebp, %ebp	

	mov	%eax, %r11d
	and	$3, %r11d
	je	L4
	sub	$1, %r11d

L012:	mov	(%rdx), %r8
	mov	%r8, %r12
	shl	%cl, %r8
	or	%rbp, %r8
	neg	%cl
	mov	%r12, %rbp
	shr	%cl, %rbp
	neg	%cl
	add	%ebx, %ebx
	adc	(%rsi), %r8
	mov	%r8, (%rdi)
	sbb	%ebx, %ebx
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	lea	8(%rdi), %rdi
	sub	$1, %r11d
	jnc	L012

L4:	sub	$4, %rax
	jc	Lend

	.align	4
Ltop:	mov	(%rdx), %r8
	mov	%r8, %r12
	mov	8(%rdx), %r9
	mov	%r9, %r13
	mov	16(%rdx), %r10
	mov	%r10, %r14
	mov	24(%rdx), %r11

	shl	%cl, %r8
	shl	%cl, %r9
	shl	%cl, %r10
	or	%rbp, %r8
	mov	%r11, %rbp
	shl	%cl, %r11

	neg	%cl

	shr	%cl, %r12
	shr	%cl, %r13
	shr	%cl, %r14
	shr	%cl, %rbp		

	or	%r12, %r9
	or	%r13, %r10
	or	%r14, %r11

	neg	%cl

	add	%ebx, %ebx	

	adc	(%rsi), %r8
	adc	8(%rsi), %r9
	adc	16(%rsi), %r10
	adc	24(%rsi), %r11

	mov	%r8, (%rdi)
	mov	%r9, 8(%rdi)
	mov	%r10, 16(%rdi)
	mov	%r11, 24(%rdi)

	sbb	%ebx, %ebx	

	lea	32(%rsi), %rsi
	lea	32(%rdx), %rdx
	lea	32(%rdi), %rdi

	sub	$4, %rax
	jnc	Ltop

Lend:	add	%ebx, %ebx
	adc	$0, %rbp
	mov	%rbp, %rax
	pop	%rbx
	pop	%rbp
	pop	%r14
	pop	%r13
	pop	%r12
	
	ret
	
