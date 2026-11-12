































































































   
   
   
   
    

   















	.text
	.align	16, 0x90
	.globl	__gmpn_mul_1_goldmont
	.type	__gmpn_mul_1_goldmont,@function
	
__gmpn_mul_1_goldmont:


	mov	(%rsi), %rax
	mov	%rdx, %r9	
	lea	(%rsi,%rdx,8), %rsi
	lea	-8(%rdi,%rdx,8), %rdi
	neg	%r9
	mul	%rcx

	test	$1, %r9b
	jz	.Lx0
.Lx1:	mov	%rax, %r11
	mov	%rdx, %r10
	test	$2, %r9b
	jnz	.L01

.L11:	mov	8(%rsi,%r9,8), %rax
	dec	%r9
	jmp	.LL3

.L01:	inc	%r9
	jnz	.LL1
	mov	%rax, (%rdi)
	mov	%rdx, %rax

	ret

.Lx0:	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%rsi,%r9,8), %rax
	test	$2, %r9b
	jz	.LL0

.L10:	add	$-2, %r9
	jmp	.LL2

	.align	8, 0x90
.Ltop:	mov	%rdx, %r10
	add	%rax, %r11
.LL1:	mov	0(%rsi,%r9,8), %rax
	adc	$0, %r10
	mul	%rcx
	add	%rax, %r10
	mov	%r11, 0(%rdi,%r9,8)
	mov	8(%rsi,%r9,8), %rax
	mov	%rdx, %r11
.LL0c:	adc	$0, %r11
.LL0:	mul	%rcx
	mov	%r10, 8(%rdi,%r9,8)
	add	%rax, %r11
	mov	%rdx, %r10
.LL3c:	mov	16(%rsi,%r9,8), %rax
	adc	$0, %r10
.LL3:	mul	%rcx
	mov	%r11, 16(%rdi,%r9,8)
	mov	%rdx, %r11
	add	%rax, %r10
.LL2c:	mov	24(%rsi,%r9,8), %rax
	adc	$0, %r11
.LL2:	mul	%rcx
	mov	%r10, 24(%rdi,%r9,8)
	add	$4, %r9
	jnc	.Ltop

.Lend:	add	%rax, %r11
	mov	%rdx, %rax
	adc	$0, %rax
	mov	%r11, (%rdi)


	ret
	.size	__gmpn_mul_1_goldmont,.-__gmpn_mul_1_goldmont

	.align	16, 0x90
	.globl	__gmpn_mul_1c_goldmont
	.type	__gmpn_mul_1c_goldmont,@function
	
__gmpn_mul_1c_goldmont:


	mov	(%rsi), %rax
	mov	%rdx, %r9	
	lea	(%rsi,%rdx,8), %rsi
	lea	-8(%rdi,%rdx,8), %rdi
	neg	%r9
	mul	%rcx

	test	$1, %r9b
	jz	.Lx0c
.Lx1c:	mov	%rax, %r11
	mov	%rdx, %r10
	test	$2, %r9b
	jnz	.L01c

.L11c:	add	%r8, %r11
	dec	%r9
	jmp	.LL3c

.L01c:	add	%r8, %r11
	inc	%r9
	jnz	.LL1
	mov	%r11, (%rdi)
	mov	%rdx, %rax
	adc	$0, %rax

	ret

.Lx0c:	mov	%rax, %r10
	mov	%rdx, %r11
	test	$2, %r9b
	jz	.L00c

.L10c:	add	$-2, %r9
	add	%r8, %r10
	jmp	.LL2c

.L00c:	add	%r8, %r10
	mov	8(%rsi,%r9,8), %rax
	jmp	.LL0c
	.size	__gmpn_mul_1c_goldmont,.-__gmpn_mul_1c_goldmont



	.section .note.GNU-stack,"",@progbits
