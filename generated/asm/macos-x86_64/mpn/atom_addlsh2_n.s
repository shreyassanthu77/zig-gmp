














































































  
  
  
  








	.text
	.align	4
	.globl	___gmpn_addlsh2_n_atom
	
	
___gmpn_addlsh2_n_atom:

	
	push	%rbx
	push	%rbp

	mov	%ecx, %eax
	and	$3, %eax
	jz	Lb0			
	cmp	$2, %eax
	mov	$0, %eax
	jz	Lb2
	jg	Lb3

Lb1:	mov	(%rdx), %r9
	lea	(%rax,%r9,4), %rbp
	shr	$62, %r9
	sub	$1, %rcx
	lea	-8(%rsi), %rsi
	lea	-8(%rdi), %rdi
	jz	Lcj1
	mov	8(%rdx), %r10
	lea	(%r9,%r10,4), %r9
	shr	$62, %r10
	mov	16(%rdx), %r11
	lea	24(%rdx), %rdx
	mov	(%rdx), %r8
	lea	(%r10,%r11,4), %r10
	shr	$62, %r11
	add	%eax, %eax
	jmp	LL1

Lb2:	lea	-32(%rdi), %rdi
	mov	(%rdx), %r8
	lea	-32(%rsi), %rsi
	lea	(%rax,%r8,4), %rbx
	shr	$62, %r8
	mov	8(%rdx), %r9
	sub	$2, %rcx
	jle	Lend
	jmp	Ltop

Lb3:	lea	-24(%rsi), %rsi
	mov	(%rdx), %r11
	lea	-24(%rdi), %rdi
	mov	8(%rdx), %r8
	lea	(%rax,%r11,4), %r10
	shr	$62, %r11
	lea	8(%rdx), %rdx
	lea	(%r11,%r8,4), %rbx
	add	$1, %rcx
	jmp	LL3

Lb0:	lea	-16(%rsi), %rsi
	mov	(%rdx), %r10
	lea	(%rax,%r10,4), %r9
	shr	$62, %r10
	mov	8(%rdx), %r11
	lea	-16(%rdi), %rdi
	mov	16(%rdx), %r8
	lea	(%r10,%r11,4), %r10
	shr	$62, %r11
	add	%eax, %eax
	lea	16(%rdx), %rdx
	jmp	LL0

	.align	4
Ltop:	lea	(%r8,%r9,4), %rbp
	shr	$62, %r9
	lea	32(%rsi), %rsi
	mov	16(%rdx), %r10
	lea	(%r9,%r10,4), %r9
	shr	$62, %r10
	mov	24(%rdx), %r11
	lea	32(%rdi), %rdi
	lea	32(%rdx), %rdx
	mov	(%rdx), %r8
	lea	(%r10,%r11,4), %r10
	shr	$62, %r11
	add	%eax, %eax
	adc	(%rsi), %rbx
	mov	%rbx, (%rdi)
LL1:	adc	8(%rsi), %rbp
	mov	%rbp, 8(%rdi)
LL0:	adc	16(%rsi), %r9
	lea	(%r11,%r8,4), %rbx
	mov	%r9, 16(%rdi)
LL3:	adc	24(%rsi), %r10
	sbb	%eax, %eax
LL2:	shr	$62, %r8
	mov	8(%rdx), %r9
	mov	%r10, 24(%rdi)
	sub	$4, %rcx
	jg	Ltop

Lend:	lea	(%r8,%r9,4), %rbp
	shr	$62, %r9
	lea	32(%rsi), %rsi
	lea	32(%rdi), %rdi
	add	%eax, %eax
	adc	(%rsi), %rbx
	mov	%rbx, (%rdi)
Lcj1:	adc	8(%rsi), %rbp
	mov	%rbp, 8(%rdi)


	mov	%ecx, %eax	
	adc	%r9, %rax


	pop	%rbp
	pop	%rbx
	
	ret
	


