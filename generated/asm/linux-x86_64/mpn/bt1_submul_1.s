






















































































      
      

















    
     

	.text
	.align	64, 0x90
	.globl	__gmpn_submul_1_bt1
	.type	__gmpn_submul_1_bt1,@function
	
__gmpn_submul_1_bt1:





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
.Lbx1:	mul	%rcx
	test	$2, %bl
	je	.Lb01

.Lb11:	mov	%rax, %r10
	mov	%rdx, %r11
	neg	%rbx
	inc	%rbx
	jmp	.LL3

	.align	16, 0x90
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
	sub	%r10, -24(%rdi,%rbx,8)
	adc	%r11, %r8
	adc	$0, %r9
.LL0:	mov	-8(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	sub	%r8, -16(%rdi,%rbx,8)
	adc	%r9, %r10
	adc	$0, %r11
.LL3:	mov	(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	sub	%r10, -8(%rdi,%rbx,8)
	adc	%r11, %r8
	adc	$0, %r9
.LL2:	mov	8(%rsi,%rbx,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	sub	%r8, (%rdi,%rbx,8)
	adc	%r9, %r10
	adc	$0, %r11
	add	$4, %rbx
	js	.Ltop

.Lend:	xor	%eax, %eax
	sub	%r10, -8(%rdi)
	adc	%r11, %rax
	pop	%rbx


	ret

	.align	32, 0x90
.Ln1:	sub	%rax, -8(%rdi)
	mov	$0, %eax
	adc	%rdx, %rax
	pop	%rbx


	ret
	.size	__gmpn_submul_1_bt1,.-__gmpn_submul_1_bt1


	.section .note.GNU-stack,"",@progbits
