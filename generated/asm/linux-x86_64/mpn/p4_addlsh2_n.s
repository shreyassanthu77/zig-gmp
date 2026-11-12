


























































			


  
  
































	.text
	.align	16, 0x90
	.globl	__gmpn_addlsh2_n_pentium4
	.type	__gmpn_addlsh2_n_pentium4,@function
	
__gmpn_addlsh2_n_pentium4:

	
	push	%rbx
	push	%r12
	push	%rbp

	mov	(%rdx), %r9
	shl	$2, %r9
	mov	4(%rdx), %ebp

	xor	%ebx, %ebx

	mov	%ecx, %eax
	and	$3, %eax
	jne	.Ln00		

	mov	(%rsi), %r8
	mov	8(%rsi), %r10
	shr	$30, %ebp
	add	%r9, %r8
	mov	8(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%al
	mov	12(%rdx), %ebp
	lea	-16(%rdi), %rdi
	jmp	.LL00

.Ln00:	cmp	$2, %eax
	jnc	.Ln01		
	mov	(%rsi), %r11
	lea	-8(%rdi), %rdi
	shr	$30, %ebp
	add	%r9, %r11
	setc	%bl
	dec	%rcx
	jz	.L1		
	mov	8(%rsi), %r8
	mov	8(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	mov	12(%rdx), %ebp
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	jmp	.LL01

.Ln01:	jne	.Ln10		
	mov	(%rsi), %r12
	mov	8(%rsi), %r11
	shr	$30, %ebp
	add	%r9, %r12
	mov	8(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%al
	mov	12(%rdx), %ebp
	lea	16(%rsi), %rsi
	lea	16(%rdx), %rdx
	jmp	.LL10

.Ln10:	mov	(%rsi), %r10
	mov	8(%rsi), %r12
	shr	$30, %ebp
	add	%r9, %r10
	mov	8(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%bl
	mov	12(%rdx), %ebp
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

	.align	16, 0x90
.Ltop:	mov	(%rsi), %r8	
	shr	$30, %ebp
	add	%r9, %r11	
	mov	(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%bl	
	mov	4(%rdx), %ebp
	mov	%r12, (%rdi)
	add	%rax, %r11	
	jc	.Lc0		
.Lrc0:
.LL01:	mov	8(%rsi), %r10
	shr	$30, %ebp
	add	%r9, %r8
	mov	8(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%al
	mov	12(%rdx), %ebp
	mov	%r11, 8(%rdi)
	add	%rbx, %r8
	jc	.Lc1
.Lrc1:
.LL00:	mov	16(%rsi), %r12
	shr	$30, %ebp
	add	%r9, %r10
	mov	16(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	setc	%bl
	mov	20(%rdx), %ebp
	mov	%r8, 16(%rdi)
	add	%rax, %r10
	jc	.Lc2
.Lrc2:
.LL11:	mov	24(%rsi), %r11
	shr	$30, %ebp
	add	%r9, %r12
	mov	24(%rdx), %r9
	lea	(%rbp,%r9,4), %r9
	lea	32(%rsi), %rsi
	lea	32(%rdx), %rdx
	setc	%al
	mov	-4(%rdx), %ebp
	mov	%r10, 24(%rdi)
	add	%rbx, %r12
	jc	.Lc3
.Lrc3:	lea	32(%rdi), %rdi
.LL10:	sub	$4, %rcx
	ja	.Ltop

.Lend:
	shr	$30, %ebp
	add	%r9, %r11
	setc	%bl
	mov	%r12, (%rdi)
	add	%rax, %r11
	jnc	.L1
	mov	$1, %bl
.L1:	mov	%r11, 8(%rdi)
	lea	(%rbx,%rbp), %eax
	pop	%rbp
	pop	%r12
	pop	%rbx
	
	ret
.Lc3:	mov	$1, %al
	jmp	.Lrc3
	.size	__gmpn_addlsh2_n_pentium4,.-__gmpn_addlsh2_n_pentium4




	.section .note.GNU-stack,"",@progbits
