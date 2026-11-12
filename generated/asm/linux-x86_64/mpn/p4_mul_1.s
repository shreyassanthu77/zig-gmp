

































































































   
   
   
   






      

	.text
	.align	16, 0x90
	.globl	__gmpn_mul_1c_pentium4
	.type	__gmpn_mul_1c_pentium4,@function
	
__gmpn_mul_1c_pentium4:





	mov	(%rsi), %rax		
	push	%rbx
	mov	%rdx, %r11		

	mul	%rcx

 add	%r8, %rax	
	
	adc	$0, %rdx
	jmp	.Lcommon

	.size	__gmpn_mul_1c_pentium4,.-__gmpn_mul_1c_pentium4

	.align	16, 0x90
	.globl	__gmpn_mul_1_pentium4
	.type	__gmpn_mul_1_pentium4,@function
	
__gmpn_mul_1_pentium4:





	mov	(%rsi), %rax		
	push	%rbx
	mov	%rdx, %r11		

	mul	%rcx

.Lcommon:
	mov	%r11, %rbx		

	and	$3, %r11d
	lea	-16(%rdi,%rbx,8), %rdi
	jz	.Lb0
	cmp	$2, %r11d
	jb	.Lb1
	jz	.Lb2

.Lb3:	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%rsi), %rax
	mul	%rcx
	lea	(%rsi,%rbx,8), %rsi
	not	%rbx
	jmp	.LL3

.Lb0:	mov	%rax, %r9
	mov	%rdx, %r10
	mov	8(%rsi), %rax
	lea	(%rsi,%rbx,8), %rsi
	neg	%rbx
	jmp	.LL0

.Lb1:	mov	%rax, %r8
	cmp	$1, %rbx
	jz	.Ln1
	mov	%rdx, %r9
	lea	(%rsi,%rbx,8), %rsi
	neg	%rbx
	mov	%r8, 16(%rdi,%rbx,8)
	inc	%rbx
	jmp	.LL1

.Lb2:	mov	%rax, %r11
	mov	%rdx, %r8
	mov	8(%rsi), %rax
	lea	(%rsi,%rbx,8), %rsi
	neg	%rbx
	add	$2, %rbx
	jns	.Lend

	.align	16, 0x90
.Ltop:	mul	%rcx
	mov	%rdx, %r9
	add	%rax, %r8
	adc	$0, %r9
	mov	%r8, 8(%rdi,%rbx,8)
	mov	%r11, (%rdi,%rbx,8)
.LL1:	mov	(%rsi,%rbx,8), %rax
	mul	%rcx
	add	%rax, %r9
	mov	%rdx, %r10
	mov	8(%rsi,%rbx,8), %rax
	adc	$0, %r10
.LL0:	mul	%rcx
	add	%rax, %r10
	mov	%rdx, %r11
	mov	16(%rsi,%rbx,8), %rax
	adc	$0, %r11
	mul	%rcx
	mov	%r9, 16(%rdi,%rbx,8)
.LL3:	add	%rax, %r11
	mov	%r10, 24(%rdi,%rbx,8)
	mov	%rdx, %r8
	adc	$0, %r8
	add	$4, %rbx
	mov	-8(%rsi,%rbx,8), %rax
	js	.Ltop

.Lend:	mul	%rcx
	add	%rax, %r8
	adc	$0, %rdx
	mov	%r11, (%rdi)
.Ln1:	mov	%r8, 8(%rdi)
	mov	%rdx, %rax

	pop	%rbx


	ret
	.size	__gmpn_mul_1_pentium4,.-__gmpn_mul_1_pentium4




	.section .note.GNU-stack,"",@progbits
