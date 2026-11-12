

















































































   
   
   
   







      
      







     

	.text
	.align	5
	.globl	___gmpn_submul_1_coreisbr
	
	
___gmpn_submul_1_coreisbr:






	mov	(%rsi), %rax
	push	%rbx
	lea	(%rsi,%rdx,8), %rsi
	lea	(%rdi,%rdx,8), %rdi

	test	$1, %dl
	jnz	Lb13

Lb02:	xor	%r11d, %r11d
	test	$2, %dl
	jnz	Lb2

Lb0:	mov	$1, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	mov	%rdx, %r9
	mov	-8(%rdi,%rbx,8), %r8
	jmp	Le0

	.align	4
Lb2:	mov	$-1, %rbx
	sub	%rdx, %rbx
	mul	%rcx
	mov	8(%rdi,%rbx,8), %r8
	mov	%rdx, %r9
	jmp	Le2

	.align	4
Lb13:	xor	%r9d, %r9d
	test	$2, %dl
	jnz	Lb3

Lb1:	mov	$2, %ebx
	sub	%rdx, %rbx
	jns	L1
	mul	%rcx
	mov	-16(%rdi,%rbx,8), %r10
	mov	%rdx, %r11
	jmp	Le1

	.align	4
Lb3:	xor	%ebx, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	mov	(%rdi,%rbx,8), %r10
	jmp	Le3

	.align	5
Ltop:	mul	%rcx
	mov	-16(%rdi,%rbx,8), %r10
	sub	%r11, %r8
	mov	%rdx, %r11
	adc	$0, %r9
	mov	%r8, -24(%rdi,%rbx,8)
Le1:	sub	%rax, %r10
	mov	-8(%rsi,%rbx,8), %rax
	adc	$0, %r11
	mul	%rcx
	sub	%r9, %r10
	mov	%rdx, %r9
	mov	-8(%rdi,%rbx,8), %r8
	adc	$0, %r11
	mov	%r10, -16(%rdi,%rbx,8)
Le0:	sub	%rax, %r8
	adc	$0, %r9
	mov	(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	(%rdi,%rbx,8), %r10
	sub	%r11, %r8
	mov	%r8, -8(%rdi,%rbx,8)
	adc	$0, %r9
Le3:	mov	%rdx, %r11
	sub	%rax, %r10
	mov	8(%rsi,%rbx,8), %rax
	adc	$0, %r11
	mul	%rcx
	mov	8(%rdi,%rbx,8), %r8
	sub	%r9, %r10
	mov	%rdx, %r9
	mov	%r10, (%rdi,%rbx,8)
	adc	$0, %r11
Le2:	sub	%rax, %r8
	adc	$0, %r9
	mov	16(%rsi,%rbx,8), %rax
	add	$4, %rbx
	jnc	Ltop

Lend:	mul	%rcx
	mov	-8(%rdi), %r10
	sub	%r11, %r8
	mov	%rdx, %r11
	adc	$0, %r9
	mov	%r8, -16(%rdi)
	sub	%rax, %r10
	adc	$0, %r11
	sub	%r9, %r10
	adc	$0, %r11
	mov	%r10, -8(%rdi)
	mov	%r11, %rax

	pop	%rbx


	ret

	.align	4
L1:	mul	%rcx
	sub	%rax, -8(%rdi)
	mov	%rdx, %rax
	adc	$0, %rax
	pop	%rbx


	ret
	



