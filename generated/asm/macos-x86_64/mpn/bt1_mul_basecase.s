















































































































	.text
	.align	4
	.globl	___gmpn_mul_basecase_bt1
	
	
___gmpn_mul_basecase_bt1:

	


	mov	(%rsi), %rax
	mov	(%rcx), %r9

	cmp	$2, %rdx
	ja	Lge3
	jz	Lu2

	mul	%r9			
	mov	%rax, (%rdi)
	mov	%rdx, 8(%rdi)
	
	ret

Lu2:	mul	%r9			
	mov	%rax, (%rdi)
	mov	8(%rsi), %rax
	mov	%rdx, %r10
	mul	%r9
	add	%rax, %r10
	mov	%rdx, %r11
	adc	$0, %r11
	cmp	$1, %r8d
	jnz	Lu2v2
	mov	%r10, 8(%rdi)
	mov	%r11, 16(%rdi)
	
	ret

Lu2v2:mov	8(%rcx), %r9
	mov	(%rsi), %rax
	mul	%r9
	add	%rax, %r10
	mov	%r10, 8(%rdi)
	mov	%rdx, %r8		
	adc	$0, %r8
	mov	8(%rsi), %rax
	mul	%r9
	add	%r11, %r8
	adc	$0, %rdx
	add	%r8, %rax
	adc	$0, %rdx
	mov	%rax, 16(%rdi)
	mov	%rdx, 24(%rdi)
	
	ret


Lge3:	push	%rbx
	push	%rbp
	push	%r12
	push	%r13

	lea	8(%rcx), %rcx

	lea	-24(%rdi,%rdx,8), %rdi
	lea	-24(%rsi,%rdx,8), %rsi
	xor	%ebx, %ebx
	mov	$2, %ebp
	sub	%rdx, %rbx
	sub	%rdx, %rbp

	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	jmp	LL3

	.align	4
Ltop:	mov	%r10, -16(%rdi,%rbp,8)
	add	%r11, %r12
	adc	$0, %r13
	mov	(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, -8(%rdi,%rbp,8)
	add	%r13, %r10
	adc	$0, %r11
	mov	8(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	mov	%r10, (%rdi,%rbp,8)
	add	%r11, %r12
	adc	$0, %r13
LL3:	mov	16(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, 8(%rdi,%rbp,8)
	add	%r13, %r10
	adc	$0, %r11
	mov	24(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	$4, %rbp
	js	Ltop

	mov	%r10, -16(%rdi,%rbp,8)
	add	%r11, %r12
	adc	$0, %r13


	test	%rbp, %rbp
	jz	Lr2
	cmp	$2, %ebp
	ja	Lr3
	jz	Lr0
	jmp	Lr1


Lr3:	mov	%r12, 16(%rdi)
	mov	%r13, 24(%rdi)
	add	$2, %rbx


Lto3:	dec	%r8
	jz	Lret
	mov	(%rcx), %r9
	mov	8(%rsi,%rbx,8), %rax
	lea	8(%rcx), %rcx
	lea	8(%rdi), %rdi
	mov	%rbx, %rbp
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	jmp	Lal3

	.align	4
Lta3:	add	%r10, -16(%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, -8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	8(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	%r10, (%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
Lal3:	mov	16(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, 8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	24(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	$4, %rbp
	js	Lta3

	add	%r10, 8(%rdi)
	adc	%r11, %r12
	adc	$0, %r13
	add	%r12, 16(%rdi)
	adc	$0, %r13
	mov	%r13, 24(%rdi)
	jmp	Lto3


Lr2:	mov	(%rsi), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, -8(%rdi)
	add	%r13, %r10
	adc	$0, %r11
	mov	8(%rsi), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	mov	%r10, (%rdi)
	add	%r11, %r12
	adc	$0, %r13
	mov	16(%rsi), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, 8(%rdi)
	add	%r13, %r10
	adc	$0, %r11
	mov	%r10, 16(%rdi)
	adc	$0, %r13
	mov	%r11, 24(%rdi)
	inc	%rbx


Lto2:	dec	%r8
	jz	Lret
	mov	(%rcx), %r9
	mov	16(%rsi,%rbx,8), %rax
	lea	8(%rcx), %rcx
	lea	8(%rdi), %rdi
	mov	%rbx, %rbp
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	jmp	Lal2

	.align	4
Lta2:	add	%r10, -16(%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, -8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	8(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	%r10, (%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	16(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, 8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
Lal2:	mov	24(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	$4, %rbp
	js	Lta2

	add	%r10, 8(%rdi)
	adc	%r11, %r12
	adc	$0, %r13
	add	%r12, 16(%rdi)
	adc	$0, %r13
	mov	%r13, 24(%rdi)
	jmp	Lto2


Lr1:	mov	8(%rsi), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, (%rdi)
	add	%r13, %r10
	adc	$0, %r11
	mov	16(%rsi), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	mov	%r10, 8(%rdi)
	add	%r11, %r12
	adc	$0, %r13
	mov	%r12, 16(%rdi)
	mov	%r13, 24(%rdi)
	add	$4, %rbx


Lto1:	dec	%r8
	jz	Lret
	mov	(%rcx), %r9
	mov	-8(%rsi,%rbx,8), %rax
	lea	8(%rcx), %rcx
	lea	8(%rdi), %rdi
	mov	%rbx, %rbp
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	jmp	Lal1

	.align	4
Lta1:	add	%r10, -16(%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
Lal1:	mov	(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, -8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	8(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	%r10, (%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	16(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, 8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	24(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	$4, %rbp
	js	Lta1

	add	%r10, 8(%rdi)
	adc	%r11, %r12
	adc	$0, %r13
	add	%r12, 16(%rdi)
	adc	$0, %r13
	mov	%r13, 24(%rdi)
	jmp	Lto1


Lr0:	mov	16(%rsi), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	%r12, 8(%rdi)
	add	%r13, %r10
	adc	$0, %r11
	mov	%r10, 16(%rdi)
	mov	%r11, 24(%rdi)
	add	$3, %rbx


Lto0:	dec	%r8
	jz	Lret
	mov	(%rcx), %r9
	mov	(%rsi,%rbx,8), %rax
	lea	8(%rcx), %rcx
	lea	8(%rdi), %rdi
	mov	%rbx, %rbp
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	jmp	Lal0

	.align	4
Lta0:	add	%r10, -16(%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, -8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
Lal0:	mov	8(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	%r10, (%rdi,%rbp,8)
	adc	%r11, %r12
	adc	$0, %r13
	mov	16(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%r12, 8(%rdi,%rbp,8)
	adc	%r13, %r10
	adc	$0, %r11
	mov	24(%rsi,%rbp,8), %rax
	mul	%r9
	mov	%rax, %r12
	mov	%rdx, %r13
	add	$4, %rbp
	js	Lta0

	add	%r10, 8(%rdi)
	adc	%r11, %r12
	adc	$0, %r13
	add	%r12, 16(%rdi)
	adc	$0, %r13
	mov	%r13, 24(%rdi)
	jmp	Lto0


Lret:	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
	
	ret
	


