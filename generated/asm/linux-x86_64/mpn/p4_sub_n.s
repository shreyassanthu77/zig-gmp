













































































	
	
	






	.text
	.globl	__gmpn_sub_n_pentium4
	.type	__gmpn_sub_n_pentium4,@function
	
__gmpn_sub_n_pentium4:

	
	xor	%r8, %r8

	.size	__gmpn_sub_n_pentium4,.-__gmpn_sub_n_pentium4
	.globl	__gmpn_sub_nc_pentium4
	.type	__gmpn_sub_nc_pentium4,@function
	
__gmpn_sub_nc_pentium4:

	

.Lent:	push	%rbx
	push	%r12

	mov	(%rdx), %r9

	mov	%ecx, %eax
	and	$3, %eax
	jne	.Ln00		
	mov	%r8d, %ebx
	mov	(%rsi), %r8
	mov	8(%rsi), %r10
	sub	%r9, %r8
	mov	8(%rdx), %r9
	setc	%al
	lea	-16(%rdi), %rdi
	jmp	.LL00

.Ln00:	cmp	$2, %eax
	jnc	.Ln01		
	mov	(%rsi), %r11
	mov	%r8d, %eax
	xor	%ebx, %ebx
	dec	%rcx
	jnz	.Lgt1
	sub	%r9, %r11
	setc	%bl
	sub	%rax, %r11
	adc	$0, %ebx
	mov	%r11, (%rdi)
	jmp	.Lret
.Lgt1:	mov	8(%rsi), %r8
	sub	%r9, %r11
	mov	8(%rdx), %r9
	setc	%bl
	lea	-8(%rdi), %rdi
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	jmp	.LL01

.Ln01:	jne	.Ln10		
	mov	(%rsi), %r12
	mov	%r8d, %ebx
	mov	8(%rsi), %r11
	sub	%r9, %r12
	mov	8(%rdx), %r9
	setc	%al
	lea	-32(%rdi), %rdi
	lea	16(%rsi), %rsi
	lea	16(%rdx), %rdx
	jmp	.LL10

.Ln10:	mov	(%rsi), %r10	
	mov	%r8d, %eax
	xor	%ebx, %ebx
	mov	8(%rsi), %r12
	sub	%r9, %r10
	mov	8(%rdx), %r9
	setc	%bl
	lea	-24(%rdi), %rdi
	lea	-8(%rsi), %rsi
	lea	-8(%rdx), %rdx
	jmp	.LL11

.Lc0:	mov	$1, %bl
	jmp	.Lrc0
.Lc1:	mov	$1, %al
	jmp	.Lrc1
.Lc2:	mov	$1, %bl
	jmp	.Lrc2
.Lc3:	mov	$1, %al
	jmp	.Lrc3

	.align	16, 0x90
.Ltop:	mov	(%rsi), %r8	
	sub	%r9, %r11	
	mov	(%rdx), %r9	
	setc	%bl	
	mov	%r12, (%rdi)
.LL01:	sub	%rax, %r11	
	jc	.Lc0		
.Lrc0:	mov	8(%rsi), %r10
	sub	%r9, %r8
	mov	8(%rdx), %r9
	setc	%al
	mov	%r11, 8(%rdi)
.LL00:	sub	%rbx, %r8
	jc	.Lc1
.Lrc1:	mov	16(%rsi), %r12
	sub	%r9, %r10
	mov	16(%rdx), %r9
	setc	%bl
	mov	%r8, 16(%rdi)
.LL11:	sub	%rax, %r10
	jc	.Lc2
.Lrc2:	mov	24(%rsi), %r11
	sub	%r9, %r12
	lea	32(%rsi), %rsi
	mov	24(%rdx), %r9
	lea	32(%rdx), %rdx
	setc	%al
	mov	%r10, 24(%rdi)
.LL10:	sub	%rbx, %r12
	jc	.Lc3
.Lrc3:	lea	32(%rdi), %rdi
	sub	$4, %rcx
	ja	.Ltop

.Lend:	sub	%r9, %r11
	setc	%bl
	mov	%r12, (%rdi)
	sub	%rax, %r11
	jnc	.L1
	mov	$1, %bl
.L1:	mov	%r11, 8(%rdi)

.Lret:	mov	%ebx, %eax
	pop	%r12
	pop	%rbx
	
	ret
	.size	__gmpn_sub_nc_pentium4,.-__gmpn_sub_nc_pentium4


	.section .note.GNU-stack,"",@progbits
