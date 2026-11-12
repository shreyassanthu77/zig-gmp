






















































































   
   
   
   







	.text
	.align	5
	.globl	___gmpn_mul_1_coreibwl
	
	
___gmpn_mul_1_coreibwl:


	mov	%rcx, %r10
	mov	%rdx, %rcx
	mov	%edx, %r8d
	shr	$3, %rcx
	and	$7, %r8d		
	mov	%r10, %rdx
	lea	Ltab(%rip), %r10

	jmp	*(%r10,%r8,8)

	.text
	.align	3
Ltab:	.quad	Lf0

	.quad	Lf1

	.quad	Lf2

	.quad	Lf3

	.quad	Lf4

	.quad	Lf5

	.quad	Lf6

	.quad	Lf7

	.text

Lf0:	.byte	0xc4,98,171,0xf6,6
	lea	56(%rsi), %rsi
	lea	-8(%rdi), %rdi
	jmp	Lb0

Lf3:	.byte	0xc4,226,179,0xf6,6
	lea	16(%rsi), %rsi
	lea	16(%rdi), %rdi
	inc	%rcx
	jmp	Lb3

Lf4:	.byte	0xc4,98,171,0xf6,6
	lea	24(%rsi), %rsi
	lea	24(%rdi), %rdi
	inc	%rcx
	jmp	Lb4

Lf5:	.byte	0xc4,226,179,0xf6,6
	lea	32(%rsi), %rsi
	lea	32(%rdi), %rdi
	inc	%rcx
	jmp	Lb5

Lf6:	.byte	0xc4,98,171,0xf6,6
	lea	40(%rsi), %rsi
	lea	40(%rdi), %rdi
	inc	%rcx
	jmp	Lb6

Lf7:	.byte	0xc4,226,179,0xf6,6
	lea	48(%rsi), %rsi
	lea	48(%rdi), %rdi
	inc	%rcx
	jmp	Lb7

Lf1:	.byte	0xc4,226,179,0xf6,6
	test	%rcx, %rcx
	jnz	Lb1
L1:	mov	%r9, (%rdi)
	ret

Lf2:	.byte	0xc4,98,171,0xf6,6
	lea	8(%rsi), %rsi
	lea	8(%rdi), %rdi
	.byte	0xc4,226,179,0xf6,6
	test	%rcx, %rcx
	jz	Lend

	.align	5
Ltop:	mov	%r10, -8(%rdi)
	adc	%r8, %r9
Lb1:	.byte	0xc4,98,171,0xf6,70,8
	adc	%rax, %r10
	lea	64(%rsi), %rsi
	mov	%r9, (%rdi)
Lb0:	mov	%r10, 8(%rdi)
	.byte	0xc4,226,179,0xf6,70,208
	lea	64(%rdi), %rdi
	adc	%r8, %r9
Lb7:	.byte	0xc4,98,171,0xf6,70,216
	mov	%r9, -48(%rdi)
	adc	%rax, %r10
Lb6:	mov	%r10, -40(%rdi)
	.byte	0xc4,226,179,0xf6,70,224
	adc	%r8, %r9
Lb5:	.byte	0xc4,98,171,0xf6,70,232
	mov	%r9, -32(%rdi)
	adc	%rax, %r10
Lb4:	.byte	0xc4,226,179,0xf6,70,240
	mov	%r10, -24(%rdi)
	adc	%r8, %r9
Lb3:	.byte	0xc4,98,171,0xf6,70,248
	adc	%rax, %r10
	mov	%r9, -16(%rdi)
	dec	%rcx
	.byte	0xc4,226,179,0xf6,6
	jnz	Ltop

Lend:	mov	%r10, -8(%rdi)
	adc	%r8, %r9
	mov	%r9, (%rdi)
	adc	%rcx, %rax
	ret
	



