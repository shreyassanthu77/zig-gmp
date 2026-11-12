
















































































   
   
   
   




  
  









	.text
	.align	4
	.globl	___gmpn_addmul_1_atom
	
	
___gmpn_addmul_1_atom:

	
	push	%rbx

	mov	(%rsi), %rax
	lea	-8(%rsi,%rdx,8), %rsi
	lea	-16(%rdi,%rdx,8), %rdi

	test	$1, %dl
	jnz	Lbx1

Lbx0:	test	$2, %dl
	jnz	Lb10

Lb00:	mov	$1, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	mov	%rax, %r11
	mov	8(%rsi,%rbx,8), %rax
	mov	%rdx, %r10
	mul	%rcx
	mov	%rax, %r8
	mov	16(%rsi,%rbx,8), %rax
	jmp	Llo0

Lb10:	mov	$3, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	mov	%rax, %r11
	mov	-8(%rsi,%rbx,8), %rax
	mov	%rdx, %r10
	mul	%rcx
	test	%rbx, %rbx
	jns	Lcj2
	mov	%rax, %r8
	mov	(%rsi,%rbx,8), %rax
	mov	%rdx, %r9
	jmp	Llo2

Lbx1:	test	$2, %dl
	jnz	Lb11

Lb01:	mov	$2, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	test	%rbx, %rbx
	jns	Lcj1
	mov	%rax, %r8
	mov	(%rsi,%rbx,8), %rax
	mov	%rdx, %r9
	mul	%rcx
	mov	%rax, %r11
	mov	8(%rsi,%rbx,8), %rax
	mov	%rdx, %r10
	jmp	Llo1

Lb11:	xor	%ebx, %ebx
	sub	%rdx, %rbx
	mul	%rcx
	mov	%rax, %r8
	mov	16(%rsi,%rbx,8), %rax
	mov	%rdx, %r9
	mul	%rcx
	mov	%rax, %r11
	mov	24(%rsi,%rbx,8), %rax
	jmp	Llo3

	.align	4
Ltop:	mul	%rcx
	add	%r8, -16(%rdi,%rbx,8)
	mov	%rax, %r8
	mov	(%rsi,%rbx,8), %rax
	adc	%r9, %r11
	mov	%rdx, %r9
	adc	$0, %r10
Llo2:	mul	%rcx
	add	%r11, -8(%rdi,%rbx,8)
	mov	%rax, %r11
	mov	8(%rsi,%rbx,8), %rax
	adc	%r10, %r8
	mov	%rdx, %r10
	adc	$0, %r9
Llo1:	mul	%rcx
	add	%r8, (%rdi,%rbx,8)
	mov	%rax, %r8
	adc	%r9, %r11
	mov	16(%rsi,%rbx,8), %rax
	adc	$0, %r10
Llo0:	mov	%rdx, %r9
	mul	%rcx
	add	%r11, 8(%rdi,%rbx,8)
	mov	%rax, %r11
	adc	%r10, %r8
	mov	24(%rsi,%rbx,8), %rax
	adc	$0, %r9
Llo3:	add	$4, %rbx
	mov	%rdx, %r10
	js	Ltop

Lend:	mul	%rcx
	add	%r8, -16(%rdi,%rbx,8)
	adc	%r9, %r11
	adc	$0, %r10
Lcj2:	add	%r11, -8(%rdi,%rbx,8)
	adc	%r10, %rax
	adc	$0, %rdx
Lcj1:	add	%rax, (%rdi,%rbx,8)
	mov	$0, %eax
	adc	%rdx, %rax
	pop	%rbx
	
	ret
	



