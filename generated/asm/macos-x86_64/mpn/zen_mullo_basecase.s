
















































































	.text
	.align	5
	.globl	___gmpn_mullo_basecase_zen
	
	
___gmpn_mullo_basecase_zen:

	
	cmp	$4, %ecx
	jae	Lbig

	mov	%rdx, %r11
	mov	(%rsi), %rdx

	cmp	$2, %ecx
	jae	Lgt1
Ln1:	imul	(%r11), %rdx
	mov	%rdx, (%rdi)
	
	ret
Lgt1:	ja	Lgt2
Ln2:	mov	(%r11), %r9
	.byte	0xc4,194,251,0xf6,209
	mov	%rax, (%rdi)
	mov	8(%rsi), %rax
	imul	%r9, %rax
	add	%rax, %rdx
	mov	8(%r11), %r9
	mov	(%rsi), %rcx
	imul	%r9, %rcx
	add	%rcx, %rdx
	mov	%rdx, 8(%rdi)
	
	ret
Lgt2:
Ln3:	mov	(%r11), %r9
	.byte	0xc4,66,251,0xf6,209	
	mov	%rax, (%rdi)
	mov	8(%rsi), %rdx
	.byte	0xc4,194,251,0xf6,209	
	imul	16(%rsi), %r9		
	add	%rax, %r10
	adc	%rdx, %r9
	mov	8(%r11), %r8
	mov	(%rsi), %rdx
	.byte	0xc4,194,251,0xf6,208	
	add	%rax, %r10
	adc	%rdx, %r9
	imul	8(%rsi), %r8		
	add	%r8, %r9
	mov	%r10, 8(%rdi)
	mov	16(%r11), %r10
	mov	(%rsi), %rax
	imul	%rax, %r10		
	add	%r10, %r9
	mov	%r9, 16(%rdi)
	
	ret

	.align	4
Lbig:	push	%r15
	push	%r14
	push	%r13
	push	%r12
	push	%rbp
	push	%rbx

	mov	(%rsi), %r9
	lea	-8(%rsi,%rcx,8), %rsi
	lea	-40(%rdi,%rcx,8), %rdi

	mov	$4, %r14d
	sub	%rcx, %r14
	mov	-8(%rdx,%rcx,8), %rbp
	imul	%r9, %rbp
	lea	8(%rdx), %r15
	mov	(%rdx), %rdx

	test	$1, %r14b
	jnz	Lmx0
Lmx1:	test	$2, %r14b
	jz	Lmb3

Lmb1:	.byte	0xc4,194,227,0xf6,193
	lea	-2(%r14), %rcx
	.byte	0xc4,0x22,0xb3,0xf6,0x44,0xf6,0xf0	
	.byte	0xc4,0x22,0xa3,0xf6,0x54,0xf6,0xf8	
	jmp	Lmlo1

Lmb3:	.byte	0xc4,66,163,0xf6,209
	.byte	0xc4,0x22,0x93,0xf6,0x64,0xf6,0xf0	
	.byte	0xc4,0xa2,0xe3,0xf6,0x44,0xf6,0xf8	
	lea	(%r14), %rcx
	jrcxz	Lx
	jmp	Lmlo3
Lx:	jmp	Lmcor

Lmb2:	.byte	0xc4,66,147,0xf6,225
	.byte	0xc4,0xa2,0xe3,0xf6,0x44,0xf6,0xf0	
	lea	-1(%r14), %rcx
	.byte	0xc4,0x22,0xb3,0xf6,0x44,0xf6,0xf8	
	jmp	Lmlo2

Lmx0:	test	$2, %r14b
	jz	Lmb2

Lmb0:	.byte	0xc4,66,179,0xf6,193
	.byte	0xc4,0x22,0xa3,0xf6,0x54,0xf6,0xf0	
	.byte	0xc4,0x22,0x93,0xf6,0x64,0xf6,0xf8	
	lea	-3(%r14), %rcx
	jmp	Lmlo0

	.align	4
Lmtop:jrcxz	Lmend
	adc	%r8, %r11
	mov	%r9, (%rdi,%rcx,8)
Lmlo3:.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r10, %r13
	mov	%r11, 8(%rdi,%rcx,8)
Lmlo2:.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r12, %rbx
	mov	%r13, 16(%rdi,%rcx,8)
Lmlo1:.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rax, %r9
	mov	%rbx, 24(%rdi,%rcx,8)
Lmlo0:.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	lea	4(%rcx), %rcx
	jmp	Lmtop

Lmend:mov	%r9, (%rdi)
	adc	%r8, %r11
	mov	%r11, 8(%rdi)
	adc	%r10, %r13
	mov	%r13, 16(%rdi)
	adc	%r12, %rbx
	mov	%rbx, 24(%rdi)

Louter:
	.byte	0xc4,98,171,0xf6,6	
	adc	%rax, %rbp
	add	%r10, %rbp
	mov	(%r15), %rdx
	add	$8, %r15
	mov	-24(%rsi,%r14,8), %r8
	lea	-8(%rsi), %rsi

	test	$1, %r14b
	jz	Lx0
Lx1:	test	$2, %r14b
	jnz	Lb3

Lb1:	.byte	0xc4,194,227,0xf6,192
	lea	-1(%r14), %rcx
	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	jmp	Llo1

Lx0:	test	$2, %r14b
	jz	Lb2

Lb0:	.byte	0xc4,66,179,0xf6,192
	lea	-2(%r14), %rcx
	.byte	0xc4,0x22,0xa3,0xf6,0x54,0xf6,0xf8	
	.byte	0xc4,0x22,0x93,0xf6,0x24,0xf6		
	jmp	Llo0

Lb3:	.byte	0xc4,66,163,0xf6,208
	lea	1(%r14), %rcx
	.byte	0xc4,0x22,0x93,0xf6,0x64,0xf6,0xf8	
	.byte	0xc4,0xa2,0xe3,0xf6,0x04,0xf6		
	add	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	jrcxz	Lcor
	jmp	Llo3

Lcor:	add	8(%rdi), %r11
	mov	16(%rdi), %r10
	mov	24(%rdi), %r12
Lmcor:mov	%r11, 8(%rdi)
	adc	%r10, %r13
	adc	%r12, %rbx
	.byte	0xc4,98,171,0xf6,6	
	adc	%rax, %rbp
	add	%r10, %rbp
	mov	(%r15), %rdx
	mov	-24(%rsi), %r8
	.byte	0xc4,66,179,0xf6,224
	.byte	0xc4,226,139,0xf6,70,240
	add	%r12, %r14
	adc	$0, %rax
	adc	%r9, %r13
	mov	%r13, 16(%rdi)
	adc	%r14, %rbx
	.byte	0xc4,98,171,0xf6,70,248	
	adc	%rax, %rbp
	add	%r10, %rbp
	mov	8(%r15), %rdx
	.byte	0xc4,226,139,0xf6,70,232
	add	%r14, %rbx
	mov	%rbx, 24(%rdi)
	.byte	0xc4,98,171,0xf6,70,240	
	adc	%rax, %rbp
	add	%r10, %rbp
	mov	%rbp, 32(%rdi)
	pop	%rbx
	pop	%rbp
	pop	%r12
	pop	%r13
	pop	%r14
	pop	%r15
	
	ret

Lb2:	.byte	0xc4,66,147,0xf6,224
	lea	(%r14), %rcx
	.byte	0xc4,0xa2,0xe3,0xf6,0x44,0xf6,0xf8	
	add	%r12, %rbx
	adc	$0, %rax
	.byte	0xc4,0x22,0xb3,0xf6,0x04,0xf6		
	jmp	Llo2

	.align	4
Ltop:	add	%r9, (%rdi,%rcx,8)
Llo3:	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r11, 8(%rdi,%rcx,8)
Llo2:	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r13, 16(%rdi,%rcx,8)
Llo1:	.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rbx, 24(%rdi,%rcx,8)
	adc	%rax, %r9
Llo0:	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	add	$4, %rcx
	js	Ltop

	add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	%r13, 16(%rdi)
	adc	%rbx, 24(%rdi)
	inc	%r14
	jmp	Louter
	


