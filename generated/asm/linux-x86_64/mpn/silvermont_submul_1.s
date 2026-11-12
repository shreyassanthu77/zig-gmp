


































































































      
      
      







	
	

   

	.text
	.align	16, 0x90
	.globl	__gmpn_submul_1c_silvermont
	.type	__gmpn_submul_1c_silvermont,@function
	
__gmpn_submul_1c_silvermont:

	
	push	%rbx
	push	%rbp
	lea	(%rdx), %rbx
	neg	%rbx

	mov	(%rsi), %rax
	mov	(%rdi), %r10

	lea	-16(%rdi,%rdx,8), %rdi
	lea	(%rsi,%rdx,8), %rsi
	mul	%rcx
	add	%r8, %rax
	adc	$0, %rdx
	jmp	.Lstart_nc
	.size	__gmpn_submul_1c_silvermont,.-__gmpn_submul_1c_silvermont

	.align	16, 0x90
	.globl	__gmpn_submul_1_silvermont
	.type	__gmpn_submul_1_silvermont,@function
	
__gmpn_submul_1_silvermont:

	
	push	%rbx
	push	%rbp
	lea	(%rdx), %rbx
	neg	%rbx

	mov	(%rsi), %rax
	mov	(%rdi), %r10

	lea	-16(%rdi,%rdx,8), %rdi
	lea	(%rsi,%rdx,8), %rsi
	mul	%rcx

.Lstart_nc:
	test	$1, %bl
	jnz	.Lodd

	lea	(%rax), %r11
	mov	8(%rsi,%rbx,8), %rax
	lea	(%rdx), %rbp
	mul	%rcx
	add	$2, %rbx
	jz	.Ln2

	lea	(%rax), %r8
	mov	(%rsi,%rbx,8), %rax
	lea	(%rdx), %r9
	jmp	.Lmid

	.align	8, 0x90
.Lodd:	inc	%rbx
	jz	.Ln1

	lea	(%rax), %r8
	mov	(%rsi,%rbx,8), %rax
	lea	(%rdx), %r9
	mul	%rcx
	lea	(%rax), %r11
	mov	8(%rsi,%rbx,8), %rax
	lea	(%rdx), %rbp
	jmp	.Le

	.align	16, 0x90
.Ltop:	mul	%rcx
	sub	%r8, %r10
	lea	(%rax), %r8
	mov	(%rsi,%rbx,8), %rax
	adc	%r9, %r11
	mov	%r10, -8(%rdi,%rbx,8)
	mov	(%rdi,%rbx,8), %r10
	lea	(%rdx), %r9
	adc	$0, %rbp
.Lmid:	mul	%rcx
	sub	%r11, %r10
	lea	(%rax), %r11
	mov	8(%rsi,%rbx,8), %rax
	adc	%rbp, %r8
	mov	%r10, (%rdi,%rbx,8)
	mov	8(%rdi,%rbx,8), %r10
	lea	(%rdx), %rbp
	adc	$0, %r9
.Le:	add	$2, %rbx
	js	.Ltop

	mul	%rcx
	sub	%r8, %r10
	adc	%r9, %r11
	mov	%r10, -8(%rdi)
	adc	%rbx, %rbp		
.Ln2:	mov	(%rdi), %r10
	sub	%r11, %r10
	adc	%rbp, %rax
	mov	%r10, (%rdi)
	adc	%rbx, %rdx		
.Ln1:	mov	8(%rdi), %r10
	sub	%rax, %r10
	mov	%r10, 8(%rdi)
	mov	%ebx, %eax	
	adc	%rdx, %rax
	pop	%rbp
	pop	%rbx
	
	ret
	.size	__gmpn_submul_1_silvermont,.-__gmpn_submul_1_silvermont



	.section .note.GNU-stack,"",@progbits
