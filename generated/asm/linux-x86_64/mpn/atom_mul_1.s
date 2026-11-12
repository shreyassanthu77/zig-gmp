
















































































   
   
   
   







	.text
	.align	16, 0x90
	.globl	__gmpn_mul_1_atom
	.type	__gmpn_mul_1_atom,@function
	
__gmpn_mul_1_atom:

	
	xor	%r8, %r8
.Lcom:	mov	(%rsi), %rax
	lea	-16(%rsi,%rdx,8), %rsi
	lea	-8(%rdi,%rdx,8), %rdi
	test	$1, %dl
	jnz	.Lbx1

.Lbx0:	mov	%r8, %r9
	test	$2, %dl
	jnz	.Lb10

.Lb00:	mov	$2, %r11d
	sub	%rdx, %r11
	jmp	.Llo0

.Lbx1:	test	$2, %dl
	jnz	.Lb11

.Lb01:	mov	$3, %r11d
	sub	%rdx, %r11
	mul	%rcx
	cmp	$2, %r11
	jnz	.Llo1
	jmp	.Lcj1

.Lb11:	mov	$1, %r11d
	sub	%rdx, %r11
	jmp	.Llo3

.Lb10:	xor	%r11d, %r11d
	sub	%rdx, %r11
	jmp	.Llo2

.Ltop:	mul	%rcx
	mov	%r9, -24(%rdi,%r11,8)
.Llo1:	xor	%r9d, %r9d
	add	%rax, %r8
	mov	(%rsi,%r11,8), %rax
	adc	%rdx, %r9
	mov	%r8, -16(%rdi,%r11,8)
.Llo0:	xor	%r8d, %r8d
	mul	%rcx
	add	%rax, %r9
	mov	8(%rsi,%r11,8), %rax
	adc	%rdx, %r8
	mov	%r9, -8(%rdi,%r11,8)
.Llo3:	xor	%r9d, %r9d
	mul	%rcx
	add	%rax, %r8
	mov	16(%rsi,%r11,8), %rax
	adc	%rdx, %r9
	mov	%r8, (%rdi,%r11,8)
.Llo2:	xor	%r8d, %r8d
	mul	%rcx
	add	%rax, %r9
	mov	24(%rsi,%r11,8), %rax
	adc	%rdx, %r8
	add	$4, %r11
	js	.Ltop

.Lend:	mul	%rcx
	mov	%r9, -8(%rdi)
.Lcj1:	add	%rax, %r8
	mov	$0, %eax
	adc	%rdx, %rax
	mov	%r8, (%rdi)
	
	ret
	.size	__gmpn_mul_1_atom,.-__gmpn_mul_1_atom

	.globl	__gmpn_mul_1c_atom
	.type	__gmpn_mul_1c_atom,@function
	
__gmpn_mul_1c_atom:

	

	jmp	.Lcom
	.size	__gmpn_mul_1c_atom,.-__gmpn_mul_1c_atom



	.section .note.GNU-stack,"",@progbits
