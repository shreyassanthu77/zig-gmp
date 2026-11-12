

















































































	.text
	.align	4
	.globl	___gmpn_lshiftc_atom
	
	
___gmpn_lshiftc_atom:

	
	lea	-8(%rsi,%rdx,8), %rsi
	lea	-8(%rdi,%rdx,8), %rdi
	shr	%edx
	mov	(%rsi), %rax
	jnc	Levn

	mov	%rax, %r11
	shl	%cl, %r11
	neg	%cl
	shr	%cl, %rax
	test	%rdx, %rdx
	jnz	Lgt1
	not	%r11
	mov	%r11, (%rdi)
	
	ret

Lgt1:	mov	-8(%rsi), %r8
	mov	%r8, %r10
	shr	%cl, %r8
	jmp	Llo1

Levn:	mov	%rax, %r10
	neg	%cl
	shr	%cl, %rax
	mov	-8(%rsi), %r9
	mov	%r9, %r11
	shr	%cl, %r9
	neg	%cl
	lea	8(%rdi), %rdi
	lea	-8(%rsi), %rsi
	jmp	Llo0


Ltop:	shl	%cl, %r10
	or	%r10, %r9
	shl	%cl, %r11
	not	%r9
	neg	%cl
	mov	-8(%rsi), %r8
	lea	-16(%rdi), %rdi
	mov	%r8, %r10
	shr	%cl, %r8
	mov	%r9, 8(%rdi)
Llo1:	or	%r11, %r8
	mov	-16(%rsi), %r9
	mov	%r9, %r11
	shr	%cl, %r9
	lea	-16(%rsi), %rsi
	neg	%cl
	not	%r8
	mov	%r8, (%rdi)
Llo0:	dec	%rdx
	jg	Ltop

Lend:	shl	%cl, %r10
	or	%r10, %r9
	not	%r9
	shl	%cl, %r11
	not	%r11
	mov	%r9, -8(%rdi)
	mov	%r11, -16(%rdi)
	
	ret
	


