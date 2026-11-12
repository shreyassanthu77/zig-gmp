

































































































   
   
   
   




      
      








      

	.text
	.align	16, 0x90
	.globl	__gmpn_addmul_1_goldmont
	.type	__gmpn_addmul_1_goldmont,@function
	
__gmpn_addmul_1_goldmont:





	mov	(%rsi), %rax		
	push	%rbx
	mov	%rdx, %rbx		

	mul	%rcx

	mov	%rbx, %r11		

	and	$3, %ebx
	lea	-16(%rdi,%r11,8), %rdi
	jz	.Lb0
	cmp	$2, %ebx
	jb	.Lb1
	jz	.Lb2

.Lb3:	mov	$0, %r8d
	mov	%rax, %rbx
	mov	$0, %r9d
	mov	8(%rsi), %rax
	mov	%rdx, %r10
	lea	(%rsi,%r11,8), %rsi
	not	%r11
	jmp	.LL3

.Lb0:	mov	$0, %r10d
	mov	%rax, %r8
	mov	%rdx, %rbx
	mov	8(%rsi), %rax
	lea	(%rsi,%r11,8), %rsi
	neg	%r11
	jmp	.LL0

.Lb1:	cmp	$1, %r11
	jz	.Ln1
	mov	%rax, %r9
	mov	8(%rsi), %rax
	mov	%rdx, %r8
	mov	$0, %ebx
	lea	(%rsi,%r11,8), %rsi
	neg	%r11
	inc	%r11
	jmp	.LL1

.Lb2:	mov	$0, %ebx
	mov	%rax, %r10
	mov	%rdx, %r9
	mov	8(%rsi), %rax
	mov	$0, %r8d
	lea	(%rsi,%r11,8), %rsi
	neg	%r11
	add	$2, %r11
	jns	.Lend

	.align	32, 0x90
.Ltop:	mul	%rcx
	add	%r10, (%rdi,%r11,8)
	adc	%rax, %r9
	mov	(%rsi,%r11,8), %rax
	adc	%rdx, %r8
.LL1:	mul	%rcx
	mov	$0, %r10d
	add	%r9, 8(%rdi,%r11,8)
	adc	%rax, %r8
	adc	%rdx, %rbx
	mov	8(%rsi,%r11,8), %rax
.LL0:	mul	%rcx
	add	%r8, 16(%rdi,%r11,8)
	mov	$0, %r8d
	adc	%rax, %rbx
	mov	$0, %r9d
	mov	16(%rsi,%r11,8), %rax
	adc	%rdx, %r10
.LL3:	mul	%rcx
	add	%rbx, 24(%rdi,%r11,8)
	mov	$0, %ebx
	adc	%rax, %r10
	adc	%rdx, %r9
	mov	24(%rsi,%r11,8), %rax
	add	$4, %r11
	js	.Ltop

.Lend:	mul	%rcx
	add	%r10, (%rdi)
	adc	%r9, %rax
	adc	%r8, %rdx
.Ln1:	add	%rax, 8(%rdi)
	adc	$0, %rdx
	mov	%rdx, %rax

	pop	%rbx


	ret
	.size	__gmpn_addmul_1_goldmont,.-__gmpn_addmul_1_goldmont




	.section .note.GNU-stack,"",@progbits
