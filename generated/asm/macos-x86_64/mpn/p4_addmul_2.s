































































































   
   
   
   
















	.text
	.align	5
	.globl	___gmpn_addmul_2_pentium4
	
	
___gmpn_addmul_2_pentium4:

	
	push	%rbx
	push	%rbp
	push	%r12
	push	%r13

	mov	(%rcx), %rbx
	mov	8(%rcx), %rbp

	mov	(%rsi), %rax
	mov	$0, %r10d		

	lea	(%rsi,%rdx,8), %rsi
	lea	(%rdi,%rdx,8), %rdi
	sub	%rdx, %r10
	mul	%rbx

	test	$1, %r10b
	jnz	Lbx1

Lbx0:	mov	%rdx, %r12
	mov	%rax, %r13
	test	$2, %r10b
	jnz	Lb10

Lb00:	lea	(%r10), %rcx			
	mov	(%rsi,%r10,8), %rax
	mov	(%rdi,%r10,8), %r11
	mul	%rbp
	mov	%rax, %r8
	mov	8(%rsi,%r10,8), %rax
	mov	%rdx, %r9
	jmp	Llo0

Lb10:	lea	2(%r10), %rcx		
	mov	(%rsi,%r10,8), %rax
	mov	(%rdi,%r10,8), %r9
	mul	%rbp
	mov	%rdx, %r11
	mov	%rax, %r10
	mov	-8(%rsi,%rcx,8), %rax
	test	%rcx, %rcx
	jz	Lend
	jmp	Ltop

Lbx1:	mov	%rax, %r12
	mov	%rdx, %r13
	test	$2, %r10b
	jz	Lb11

Lb01:	lea	1(%r10), %rcx		
	mov	(%rsi,%r10,8), %rax
	mul	%rbp
	mov	(%rdi,%r10,8), %r10
	mov	%rdx, %r8
	mov	%rax, %r11
	jmp	Llo1

Lb11:	lea	-1(%r10), %rcx		
	mov	(%rsi,%r10,8), %rax
	mul	%rbp
	mov	(%rdi,%r10,8), %r8
	mov	%rax, %r9
	mov	8(%rsi,%r10,8), %rax
	mov	%rdx, %r10
	jmp	Llo3

	.align	5
Ltop:
Llo2:	mul	%rbx
	add	%r9, %r13
	mov	%r13, -16(%rdi,%rcx,8)
	mov	%rdx, %r13
	adc	%rax, %r12
	adc	$0, %r13
	mov	-8(%rsi,%rcx,8), %rax
	mul	%rbp
	mov	-8(%rdi,%rcx,8), %r9
	mov	%rdx, %r8
	add	%r9, %r10
	adc	%rax, %r11
	adc	$0, %r8
Llo1:	mov	(%rsi,%rcx,8), %rax
	mul	%rbx
	add	%r10, %r12
	mov	%r12, -8(%rdi,%rcx,8)
	mov	%rdx, %r12
	adc	%rax, %r13
	mov	(%rsi,%rcx,8), %rax
	adc	$0, %r12
	mov	(%rdi,%rcx,8), %r10
	mul	%rbp
	add	%r10, %r11
	adc	%rax, %r8
	mov	8(%rsi,%rcx,8), %rax
	mov	%rdx, %r9
	adc	$0, %r9
Llo0:	mul	%rbx
	add	%r11, %r13
	mov	%r13, (%rdi,%rcx,8)
	adc	%rax, %r12
	mov	8(%rsi,%rcx,8), %rax
	mov	%rdx, %r13
	adc	$0, %r13
	mov	8(%rdi,%rcx,8), %r11
	mul	%rbp
	add	%r11, %r8
	adc	%rax, %r9
	mov	16(%rsi,%rcx,8), %rax
	mov	%rdx, %r10
	adc	$0, %r10
Llo3:	mul	%rbx
	add	%r8, %r12
	mov	%r12, 8(%rdi,%rcx,8)
	mov	%rdx, %r12
	adc	%rax, %r13
	adc	$0, %r12
	mov	16(%rsi,%rcx,8), %rax
	mov	16(%rdi,%rcx,8), %r8
	mul	%rbp
	mov	%rdx, %r11
	add	%r8, %r9
	adc	%rax, %r10
	adc	$0, %r11
	mov	24(%rsi,%rcx,8), %rax
	add	$4, %rcx
	jnc	Ltop

Lend:	mul	%rbx
	add	%r9, %r13
	mov	%r13, -16(%rdi)
	mov	%rdx, %r13
	adc	%rax, %r12
	adc	$0, %r13
	mov	-8(%rsi), %rax
	mul	%rbp
	mov	-8(%rdi), %r9
	add	%r9, %r10
	adc	%rax, %r11
	adc	$0, %rdx
	add	%r10, %r12
	adc	$0, %r13
	mov	%r12, -8(%rdi)
	add	%r11, %r13
	mov	%r13, (%rdi)
	adc	$0, %rdx
	mov	%rdx, %rax

	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
	
	ret
	



