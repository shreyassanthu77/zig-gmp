











































































































	.text
	.align	64, 0x90
	.globl	__gmpn_sqr_basecase_bt1
	.type	__gmpn_sqr_basecase_bt1,@function
	
__gmpn_sqr_basecase_bt1:

	

	mov	(%rsi), %rax

	cmp	$2, %edx
	jae	.Lge2

	mul	%rax
	mov	%rax, (%rdi)
	mov	%rdx, 8(%rdi)
	
	ret

.Lge2:	mov	(%rsi), %rcx
	jnz	.Lg2

	mul	%rax
	mov	%rax, (%rdi)
	mov	8(%rsi), %rax
	mov	%rdx, %r8
	mul	%rcx
	add	%rax, %r8
	mov	%rdx, %r9
	adc	$0, %r9
	mov	8(%rsi), %rcx
	mov	(%rsi), %rax
	mul	%rcx
	add	%rax, %r8
	mov	%r8, 8(%rdi)
	mov	%rdx, %r8		
	adc	$0, %r8
	mov	8(%rsi), %rax
	mul	%rcx
	add	%r9, %r8
	adc	$0, %rdx
	add	%r8, %rax
	adc	$0, %rdx
	mov	%rax, 16(%rdi)
	mov	%rdx, 24(%rdi)
	
	ret

.Lg2:	cmp	$3, %edx
	ja	.Lg3
	mul	%rax
	mov	%rax, (%rdi)
	mov	%rdx, 8(%rdi)
	mov	8(%rsi), %rax
	mul	%rax
	mov	%rax, 16(%rdi)
	mov	%rdx, 24(%rdi)
	mov	16(%rsi), %rax
	mul	%rax
	mov	%rax, 32(%rdi)
	mov	%rdx, 40(%rdi)

	mov	(%rsi), %rcx
	mov	8(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	16(%rsi), %rax
	mul	%rcx
	xor	%r10d, %r10d
	add	%rax, %r9
	adc	%rdx, %r10

	mov	8(%rsi), %rcx
	mov	16(%rsi), %rax
	mul	%rcx
	xor	%r11d, %r11d
	add	%rax, %r10
	adc	%rdx, %r11
	add	%r8, %r8
	adc	%r9, %r9
	adc	%r10, %r10
	adc	%r11, %r11
	mov	$0, %ecx
	adc	%rcx, %rcx
	add	%r8, 8(%rdi)
	adc	%r9, 16(%rdi)
	adc	%r10, 24(%rdi)
	adc	%r11, 32(%rdi)
	adc	%rcx, 40(%rdi)
	
	ret

.Lg3:	push	%rbx
	push	%rbp

	mov	8(%rsi), %rax
	lea	-24(%rdi,%rdx,8), %rdi
	lea	-24(%rsi,%rdx,8), %rsi
	neg	%rdx
	push	%rdx		
	lea	(%rdx), %rbx
	lea	3(%rdx), %rbp

	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	jmp	.LL3

	.align	16, 0x90
.Ltop:	mov	%r8, -16(%rdi,%rbp,8)
	add	%r9, %r10
	adc	$0, %r11
	mov	(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, -8(%rdi,%rbp,8)
	add	%r11, %r8
	adc	$0, %r9
	mov	8(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r8, (%rdi,%rbp,8)
	add	%r9, %r10
	adc	$0, %r11
.LL3:	mov	16(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, 8(%rdi,%rbp,8)
	add	%r11, %r8
	adc	$0, %r9
	mov	24(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %rbp
	js	.Ltop

	mov	%r8, -16(%rdi,%rbp,8)
	add	%r9, %r10
	adc	$0, %r11

	test	%rbp, %rbp
	jz	.Lr2
	cmp	$2, %ebp
	ja	.Lr3
	jz	.Lr0


.Lr1:	mov	8(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, (%rdi)
	add	%r11, %r8
	adc	$0, %r9
	mov	16(%rsi), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r8, 8(%rdi)
	add	%r9, %r10
	adc	$0, %r11
	mov	%r10, 16(%rdi)
	mov	%r11, 24(%rdi)
	add	$5, %rbx
	jmp	.Lto0

.Lr2:	mov	(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, -8(%rdi)
	add	%r11, %r8
	adc	$0, %r9
	mov	8(%rsi), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r8, (%rdi)
	add	%r9, %r10
	adc	$0, %r11
	mov	16(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, 8(%rdi)
	add	%r11, %r8
	adc	$0, %r9
	mov	%r8, 16(%rdi)
	adc	$0, %r11
	mov	%r9, 24(%rdi)
	add	$6, %rbx
	jmp	.Lto1

.Lr3:	mov	%r10, 16(%rdi)
	mov	%r11, 24(%rdi)
	add	$3, %rbx
	jmp	.Lto2

.Lr0:	mov	16(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	%r10, 8(%rdi)
	add	%r11, %r8
	adc	$0, %r9
	mov	%r8, 16(%rdi)
	mov	%r9, 24(%rdi)
	add	$4, %rbx




.Louter:
	mov	%rbx, %rbp
	mov	(%rsi,%rbx,8), %rcx
	mov	8(%rsi,%rbx,8), %rax
	lea	8(%rdi), %rdi
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	jmp	.Lal3

	.align	16, 0x90
.Lta3:	add	%r8, -16(%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, -8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	8(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r8, (%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
.Lal3:	mov	16(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, 8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	24(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %rbp
	js	.Lta3

	add	%r8, 8(%rdi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, 16(%rdi)
	adc	$0, %r11
	mov	%r11, 24(%rdi)


.Lto2:	mov	%rbx, %rbp
	cmp	$-4, %ebx
	jnc	.Lend
	add	$4, %rbx
	mov	8(%rsi,%rbp,8), %rcx
	mov	16(%rsi,%rbp,8), %rax
	lea	8(%rdi), %rdi
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	jmp	.Lal2

	.align	16, 0x90
.Lta2:	add	%r8, -16(%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, -8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	8(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r8, (%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, 8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
.Lal2:	mov	24(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %rbp
	js	.Lta2

	add	%r8, 8(%rdi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, 16(%rdi)
	adc	$0, %r11
	mov	%r11, 24(%rdi)


.Lto1:	mov	%rbx, %rbp
	mov	-16(%rsi,%rbx,8), %rcx
	mov	-8(%rsi,%rbx,8), %rax
	lea	8(%rdi), %rdi
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	jmp	.Lal1

	.align	16, 0x90
.Lta1:	add	%r8, -16(%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
.Lal1:	mov	(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, -8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	8(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r8, (%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, 8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	24(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %rbp
	js	.Lta1

	add	%r8, 8(%rdi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, 16(%rdi)
	adc	$0, %r11
	mov	%r11, 24(%rdi)


.Lto0:	mov	%rbx, %rbp
	mov	-8(%rsi,%rbx,8), %rcx
	mov	(%rsi,%rbx,8), %rax
	lea	8(%rdi), %rdi
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	jmp	.Lal0

	.align	16, 0x90
.Lta0:	add	%r8, -16(%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, -8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
.Lal0:	mov	8(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r8, (%rdi,%rbp,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	add	%r10, 8(%rdi,%rbp,8)
	adc	%r11, %r8
	adc	$0, %r9
	mov	24(%rsi,%rbp,8), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %rbp
	js	.Lta0

	add	%r8, 8(%rdi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, 16(%rdi)
	adc	$0, %r11
	mov	%r11, 24(%rdi)
	jmp	.Louter


.Lend:	mov	(%rsi), %rcx
	mov	8(%rsi), %rax
	mul	%rcx
	mov	%rax, %r8
	mov	%rdx, %r9
	mov	16(%rsi), %rax
	mul	%rcx
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r8, 16(%rdi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, 24(%rdi)
	adc	$0, %r11
	mov	8(%rsi), %rcx
	mov	16(%rsi), %rax
	mul	%rcx
	add	%rax, %r11
	mov	%r11, 32(%rdi)
	adc	$0, %rdx
	mov	%rdx, 40(%rdi)




	lea	16(%rsi), %rsi
	lea	40(%rdi), %rdi
	pop	%rbp
	lea	2(%rbp,%rbp), %rbp

	mov	(%rsi,%rbp,4), %rax
	mul	%rax
	xor	%r10d, %r10d

	mov	8(%rdi,%rbp,8), %r8
	mov	%rax, (%rdi,%rbp,8)
	jmp	.Llm

	.align	8, 0x90
.Ltsd:	add	%rbx, %r8
	adc	%rax, %r9
	mov	%r8, -8(%rdi,%rbp,8)
	mov	8(%rdi,%rbp,8), %r8
	mov	%r9, (%rdi,%rbp,8)
.Llm:	mov	16(%rdi,%rbp,8), %r9
	adc	%r8, %r8
	adc	%r9, %r9
	lea	(%rdx,%r10), %rbx
	mov	8(%rsi,%rbp,4), %rax
	setc	%r10b
	mul	%rax
	add	$2, %rbp
	js	.Ltsd

.Lesd:	add	%rbx, %r8
	adc	%rax, %r9
	mov	%r8, -8(%rdi)
	mov	%r9, (%rdi)
	adc	%r10, %rdx
	mov	%rdx, 8(%rdi)

	pop	%rbp
	pop	%rbx
	
	ret
	.size	__gmpn_sqr_basecase_bt1,.-__gmpn_sqr_basecase_bt1


	.section .note.GNU-stack,"",@progbits
