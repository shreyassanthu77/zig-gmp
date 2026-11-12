

















































































	.text
	.align	16, 0x90
	.globl	__gmpn_rshift_atom
	.type	__gmpn_rshift_atom,@function
	
__gmpn_rshift_atom:

	
	shr	%edx
	mov	(%rsi), %rax
	jnc	.Levn

	mov	%rax, %r11
	shr	%cl, %r11
	neg	%cl
	shl	%cl, %rax
	test	%rdx, %rdx
	jnz	.Lgt1
	mov	%r11, (%rdi)
	
	ret

.Lgt1:	mov	8(%rsi), %r8
	mov	%r8, %r10
	shl	%cl, %r8
	jmp	.Llo1

.Levn:	mov	%rax, %r10
	neg	%cl
	shl	%cl, %rax
	mov	8(%rsi), %r9
	mov	%r9, %r11
	shl	%cl, %r9
	neg	%cl
	dec	%rdx
	lea	-8(%rdi), %rdi
	lea	8(%rsi), %rsi
	jz	.Lend

	.align	8, 0x90
.Ltop:	shr	%cl, %r10
	or	%r10, %r9
	shr	%cl, %r11
	neg	%cl
	mov	8(%rsi), %r8
	mov	%r8, %r10
	mov	%r9, 8(%rdi)
	shl	%cl, %r8
	lea	16(%rdi), %rdi
.Llo1:	mov	16(%rsi), %r9
	or	%r11, %r8
	mov	%r9, %r11
	shl	%cl, %r9
	lea	16(%rsi), %rsi
	neg	%cl
	mov	%r8, (%rdi)
	dec	%rdx
	jg	.Ltop

.Lend:	shr	%cl, %r10
	or	%r10, %r9
	shr	%cl, %r11
	mov	%r9, 8(%rdi)
	mov	%r11, 16(%rdi)
	
	ret
	.size	__gmpn_rshift_atom,.-__gmpn_rshift_atom


	.section .note.GNU-stack,"",@progbits
