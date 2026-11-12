



































































































     
     
	.align	64, 0x90
	.globl	__gmpn_mul_1_bt1
	.type	__gmpn_mul_1_bt1,@function
	
__gmpn_mul_1_bt1:





	push	%rbx
	mov	(%rsi), %rax

	lea	(%rdi,%rdx,8), %rdi
	lea	(%rsi,%rdx,8), %rsi
	mov	%rdx, %rbx

	test	$1, %dl
	jne	.Lbx1

.Lbx0:	mul	%rcx
	neg	%rbx
	mov	%rax, %r8
	mov	%rdx, %r9
	test	$2, %bl
	jne	.LL2

.Lb00:	add	$2, %rbx
	jmp	.LL0

	.align	16, 0x90
.Lb11:	mov	%rax, %r10
	mov	%rdx, %r11
	neg	%rbx
	inc	%rbx
	jmp	.LL3

	.align	16, 0x90
.Lbx1:	mul	%rcx
	test	$2, %bl
	jne	.Lb11

.Lb01:	sub	$3, %rbx
	jc	.Ln1
	mov	%rax, %r10
	mov	%rdx, %r11
	neg	%rbx

	.align	16, 0x90
.Ltop:	mov	-16(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, -24(%rdi,%rbx,8)
	add	%r11, %r8
	adc	$0, %r9
.LL0:	mov	-8(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r8, -16(%rdi,%rbx,8)
	add	%r9, %r10
	adc	$0, %r11
.LL3:	mov	(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, -8(%rdi,%rbx,8)
	add	%r11, %r8
	adc	$0, %r9
.LL2:	mov	8(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r8, (%rdi,%rbx,8)
	add	%r9, %r10
	adc	$0, %r11
	add	$4, %rbx
	js	.Ltop

.Lend:	mov	%r10, -8(%rdi)
	mov	%r11, %rax
	pop	%rbx


	ret

	.align	32, 0x90
.Ln1:	mov	%rax, -8(%rdi)
	mov	%rdx, %rax
	pop	%rbx


	ret
	.size	__gmpn_mul_1_bt1,.-__gmpn_mul_1_bt1


	.text
	.align	64, 0x90
	.globl	__gmpn_mul_1c_bt1
	.type	__gmpn_mul_1c_bt1,@function
	
__gmpn_mul_1c_bt1:




	mov	%r8, %r10
	push	%rbx
	mov	(%rsi), %rax

	lea	(%rdi,%rdx,8), %rdi
	lea	(%rsi,%rdx,8), %rsi
	mov	%rdx, %rbx

	test	$1, %dl
	jne	.Lcx1

.Lcx0:	mul	%rcx
	neg	%rbx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, %r8
	adc	$0, %r9
	test	$2, %bl
	jne	.LL2

.Lc00:	add	$2, %rbx
	jmp	.LL0

	.align	16, 0x90
.Lcx1:	mul	%rcx
	test	$2, %bl
	je	.Lc01

.Lc11:	neg	%rbx
	inc	%rbx
	add	%rax, %r10
	mov	%rdx, %r11
	adc	$0, %r11
	jmp	.LL3

.Lc01:	cmp	$1, %rbx
	jz	.Lm1
	neg	%rbx
	add	$3, %rbx
	add	%rax, %r10
	mov	%rdx, %r11
	adc	$0, %r11
	jmp	.Ltop

	.align	32, 0x90
.Lm1:	add	%rax, %r10
	mov	%rdx, %rax
	mov	%r10, -8(%rdi)
	adc	$0, %rax
	pop	%rbx


	ret
	.size	__gmpn_mul_1c_bt1,.-__gmpn_mul_1c_bt1


	.section .note.GNU-stack,"",@progbits
