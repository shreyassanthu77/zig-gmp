












































































   
   
   
   













	.text
	.align	16, 0x90
	.globl	__gmpn_addmul_2_atom
	.type	__gmpn_addmul_2_atom,@function
	
__gmpn_addmul_2_atom:

	
	push	%rbx
	push	%rbp

	mov	(%rsi), %rax

	mov	(%rcx), %r8
	mov	8(%rcx), %r9

	mov	%rdx, %r11
	mul	%r8

	test	$1, %r11b
	jnz	.Lbx1

.Lbx0:	test	$2, %r11b
	jnz	.Lb10

.Lb00:	mov	%rax, %rbx
	mov	(%rsi), %rax
	mov	%rdx, %rcx
	xor	%ebp, %ebp
	lea	-8(%rdi), %rdi
	jmp	.Llo0

.Lb10:	mov	%rax, %rbp
	mov	(%rsi), %rax
	mov	%rdx, %r10
	xor	%ebx, %ebx
	lea	-16(%rsi), %rsi
	lea	-24(%rdi), %rdi
	jmp	.Llo2

.Lbx1:	test	$2, %r11b
	jnz	.Lb11

.Lb01:	mov	%rax, %r10
	mov	%rdx, %rbx
	mov	(%rsi), %rax
	xor	%ecx, %ecx
	lea	8(%rsi), %rsi
	dec	%r11
	jmp	.Llo1

.Lb11:	mov	%rax, %rcx
	mov	(%rsi), %rax
	mov	%rdx, %rbp
	xor	%r10d, %r10d
	lea	-8(%rsi), %rsi
	lea	-16(%rdi), %rdi
	jmp	.Llo3

	.align	16, 0x90
.Ltop:
.Llo1:	mul	%r9
	add	%r10, (%rdi)
	mov	$0, %ebp
	adc	%rax, %rbx
	mov	(%rsi), %rax
	adc	%rdx, %rcx
	mul	%r8
	add	%rax, %rbx
	mov	(%rsi), %rax
	adc	%rdx, %rcx
	adc	$0, %ebp
.Llo0:	mul	%r9
	add	%rbx, 8(%rdi)
	adc	%rax, %rcx
	mov	8(%rsi), %rax
	mov	$0, %r10d
	adc	%rdx, %rbp
	mul	%r8
	add	%rax, %rcx
	mov	8(%rsi), %rax
	adc	%rdx, %rbp
	adc	$0, %r10d
.Llo3:	mul	%r9
	add	%rcx, 16(%rdi)
	adc	%rax, %rbp
	mov	16(%rsi), %rax
	mov	$0, %ebx
	adc	%rdx, %r10
	mul	%r8
	add	%rax, %rbp
	mov	16(%rsi), %rax
	adc	%rdx, %r10
	adc	$0, %ebx
.Llo2:	mul	%r9
	add	%rbp, 24(%rdi)
	adc	%rax, %r10
	mov	24(%rsi), %rax
	adc	%rdx, %rbx
	mov	$0, %ecx
	lea	32(%rdi), %rdi
	mul	%r8
	lea	32(%rsi), %rsi
	add	%rax, %r10
	adc	%rdx, %rbx
	mov	-8(%rsi), %rax
	adc	$0, %ecx
	sub	$4, %r11
	ja	.Ltop

.Lend:	mul	%r9
	add	%r10, (%rdi)
	adc	%rax, %rbx
	adc	%rdx, %rcx
	mov	%rbx, 8(%rdi)
	mov	%rcx, %rax
	pop	%rbp
	pop	%rbx
	
	ret
	.size	__gmpn_addmul_2_atom,.-__gmpn_addmul_2_atom


	.section .note.GNU-stack,"",@progbits
