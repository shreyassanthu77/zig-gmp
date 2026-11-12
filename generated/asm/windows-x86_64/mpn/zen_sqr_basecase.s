



























































































	.text
	.align	16, 0x90
	.globl	__gmpn_sqr_basecase_zen
	
	.def	__gmpn_sqr_basecase_zen
	.scl	2
	.type	32
	.endef
__gmpn_sqr_basecase_zen:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx


	cmp	$2, %edx
	jae	.Lgt1

	mov	(%rsi), %rdx
	.byte	0xc4,226,251,0xf6,210
	mov	%rax, (%rdi)
	mov	%rdx, 8(%rdi)
	pop	%rsi
	pop	%rdi
	ret

.Lgt1:	jne	.Lgt2

	mov	(%rsi), %rdx
	mov	8(%rsi), %rcx
	.byte	0xc4,98,179,0xf6,209	
	.byte	0xc4,98,251,0xf6,194	
	mov	%rcx, %rdx
	.byte	0xc4,226,163,0xf6,210	
	add	%r9, %r9		
	adc	%r10, %r10		
	adc	$0, %rdx		
	add	%r9, %r8		
	adc	%r11, %r10		
	adc	$0, %rdx		
	mov	%rax, (%rdi)
	mov	%r8, 8(%rdi)
	mov	%r10, 16(%rdi)
	mov	%rdx, 24(%rdi)
	pop	%rsi
	pop	%rdi
	ret

.Lgt2:	cmp	$4, %edx
	jae	.Lgt3

	push	%rbx
	mov	(%rsi), %rdx
	.byte	0xc4,98,171,0xf6,94,8
	.byte	0xc4,98,187,0xf6,78,16
	add	%r11, %r8
	mov	8(%rsi), %rdx
	.byte	0xc4,98,251,0xf6,94,16
	adc	%rax, %r9
	adc	$0, %r11
	test	%ebx, %ebx
	mov	(%rsi), %rdx
	.byte	0xc4,226,227,0xf6,202
	mov	%rbx, (%rdi)
	mov	8(%rsi), %rdx
	.byte	0xc4,226,251,0xf6,218
	mov	16(%rsi), %rdx
	.byte	0xc4,226,203,0xf6,210
	.byte	0x66,77,0x0f,0x38,0xf6,210
	.byte	0x66,77,0x0f,0x38,0xf6,192
	.byte	0x66,77,0x0f,0x38,0xf6,201
	.byte	0x66,77,0x0f,0x38,0xf6,219
	.byte	0xf3,73,0x0f,0x38,0xf6,202
	.byte	0xf3,73,0x0f,0x38,0xf6,192
	.byte	0xf3,73,0x0f,0x38,0xf6,217
	.byte	0xf3,73,0x0f,0x38,0xf6,243
	mov	$0, %r8d
	.byte	0xf3,73,0x0f,0x38,0xf6,208
	.byte	0x66,73,0x0f,0x38,0xf6,208
	mov	%rcx, 8(%rdi)
	mov	%rax, 16(%rdi)
	mov	%rbx, 24(%rdi)
	mov	%rsi, 32(%rdi)
	mov	%rdx, 40(%rdi)
	pop	%rbx
	pop	%rsi
	pop	%rdi
	ret

.Lgt3:	push	%r15

	push	%r13
	push	%r12
	push	%rbp
	push	%rbx
	mov	%edx, %ebp

	mov	(%rsi), %rdx		
	mov	8(%rsi), %r9		

	.byte	0xc4,98,251,0xf6,250	
	mov	%rax, (%rdi)
	shl	%rdx

	lea	(%rsi,%rbp,8), %rsi
	lea	-32(%rdi,%rbp,8), %rdi

	neg	%rbp
	lea	4(%rbp), %rcx
	and	$-4, %rcx

	test	$1, %bpl
	jnz	.Lmx0
.Lmx1:	test	$2, %bpl
	jz	.Lmb3

.Lmb1:	.byte	0xc4,194,227,0xf6,193
	.byte	0xc4,0x62,0xb3,0xf6,0x44,0xee,0x10	
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xee,0x18	
	add	%r15, %rbx
	jmp	.Lmlo1

.Lmb3:	.byte	0xc4,66,163,0xf6,209
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xee,0x10	
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xee,0x18	
	add	%r15, %r11
	jrcxz	.Ln4
	jmp	.Lmlo3
.Ln4:	mov	%r11, 8(%rdi)
	adc	%r10, %r13
	adc	%r12, %rbx
	jmp	.Lm

.Lmx0:	test	$2, %bpl
	jnz	.Lmb0

.Lmb2:	.byte	0xc4,66,147,0xf6,225
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xee,0x10	
	.byte	0xc4,0x62,0xb3,0xf6,0x44,0xee,0x18	
	add	%r15, %r13
	jmp	.Lmlo2

.Lmb0:	.byte	0xc4,66,179,0xf6,193
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xee,0x10	
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xee,0x18	
	add	%r15, %r9
	jmp	.Lmlo0

	.align	16, 0x90
.Lmtop:jrcxz	.Lmend
	adc	%r8, %r11
	mov	%r9, (%rdi,%rcx,8)
.Lmlo3:.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r10, %r13
	mov	%r11, 8(%rdi,%rcx,8)
.Lmlo2:.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r12, %rbx
	mov	%r13, 16(%rdi,%rcx,8)
.Lmlo1:.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rax, %r9
	mov	%rbx, 24(%rdi,%rcx,8)
.Lmlo0:.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	lea	4(%rcx), %rcx
	jmp	.Lmtop

.Lmend:mov	%r9, (%rdi)
	adc	%r8, %r11
	mov	%r11, 8(%rdi)
	adc	%r10, %r13
	mov	%r13, 16(%rdi)
	adc	%r12, %rbx
	adc	$0, %rax
	mov	%rbx, 24(%rdi)
	mov	%rax, 32(%rdi)

	lea	2(%rbp), %rbp

	mov	$63, %r15d			
	test	$1, %bpl
	jz	.Lx0
.Lx1:	test	$2, %bpl
	jz	.Lf3
	jmp	.Lf1
.Lx0:	test	$2, %bpl
	jz	.Lf0


.Lf2:	mov	-8(%rsi,%rbp,8), %rdx		
	lea	2(%rbp), %rcx
	lea	8(%rdi), %rdi
	.byte	0xc4,0x62,0x82,0xf7,0x5c,0xee,0xf0	
	.byte	0xc4,0x62,0x83,0xf7,0x6c,0xee,0xf0	
	and	%rdx, %r11			
	.byte	0xc4,98,251,0xf6,210		
	lea	(%r13,%rdx,2), %rdx		
	add	%rax, %r11

	.byte	0xc4,0x62,0x93,0xf6,0x24,0xee		
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xee,0x08	
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	jmp	.Lb2

	.align	16, 0x90
.Ltop2:add	%r9, (%rdi,%rcx,8)
.Lb2:	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r11, 8(%rdi,%rcx,8)
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r13, 16(%rdi,%rcx,8)
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rbx, 24(%rdi,%rcx,8)
	adc	%rax, %r9
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	add	$4, %rcx
	jnz	.Ltop2

	inc	%rbp
	add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	%r13, 16(%rdi)
	adc	%rbx, 24(%rdi)
	adc	$0, %rax
	mov	%rax, 32(%rdi)

.Lf1:	mov	-8(%rsi,%rbp,8), %rdx		
	lea	1(%rbp), %rcx
	lea	8(%rdi), %rdi
	.byte	0xc4,0x62,0x82,0xf7,0x6c,0xee,0xf0	
	.byte	0xc4,0xe2,0x83,0xf7,0x5c,0xee,0xf0	
	and	%rdx, %r13			
	.byte	0xc4,98,251,0xf6,226		
	lea	(%rbx,%rdx,2), %rdx		
	add	%rax, %r13

	.byte	0xc4,0xe2,0xe3,0xf6,0x04,0xee		
	adc	%r12, %rbx
	adc	$0, %rax
	.byte	0xc4,0x62,0xb3,0xf6,0x44,0xee,0x08	
	jmp	.Lb1

	.align	16, 0x90
.Ltop1:add	%r9, (%rdi,%rcx,8)
	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r11, 8(%rdi,%rcx,8)
.Lb1:	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r13, 16(%rdi,%rcx,8)
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rbx, 24(%rdi,%rcx,8)
	adc	%rax, %r9
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	add	$4, %rcx
	jnz	.Ltop1

	inc	%rbp
	add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	%r13, 16(%rdi)
	adc	%rbx, 24(%rdi)
	adc	$0, %rax
	mov	%rax, 32(%rdi)

.Lf0:	mov	-8(%rsi,%rbp,8), %rdx		
	lea	(%rbp), %rcx
	lea	8(%rdi), %rdi
	.byte	0xc4,0xe2,0x82,0xf7,0x5c,0xee,0xf0	
	.byte	0xc4,0x62,0x83,0xf7,0x4c,0xee,0xf0	
	and	%rdx, %rbx			
	.byte	0xc4,226,171,0xf6,194		
	lea	(%r9,%rdx,2), %rdx		
	add	%r10, %rbx
	adc	$0, %rax			

	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xee,0x08	
	jmp	.Lb0

	.align	16, 0x90
.Ltop0:add	%r9, (%rdi,%rcx,8)
	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r11, 8(%rdi,%rcx,8)
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r13, 16(%rdi,%rcx,8)
.Lb0:	.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rbx, 24(%rdi,%rcx,8)
	adc	%rax, %r9
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	add	$4, %rcx
	jnz	.Ltop0

	inc	%rbp
	add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	%r13, 16(%rdi)
	adc	%rbx, 24(%rdi)
	adc	$0, %rax
	mov	%rax, 32(%rdi)

.Lf3:	mov	-8(%rsi,%rbp,8), %rdx		
	lea	3(%rbp), %rcx
	lea	8(%rdi), %rdi
	.byte	0xc4,0x62,0x82,0xf7,0x4c,0xee,0xf0	
	.byte	0xc4,0x62,0x83,0xf7,0x5c,0xee,0xf0	
	and	%rdx, %r9			
	.byte	0xc4,98,251,0xf6,194		
	lea	(%r11,%rdx,2), %rdx		
	add	%rax, %r9

	.byte	0xc4,0x62,0xa3,0xf6,0x14,0xee		
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xee,0x08	
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xee,0x10	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	jrcxz	.Lxit3
	jmp	.Ltop3			

	.align	16, 0x90
.Ltop3:add	%r9, (%rdi,%rcx,8)
	.byte	0xc4,0x62,0xb3,0xf6,0x04,0xce		
	adc	%r11, 8(%rdi,%rcx,8)
	.byte	0xc4,0x62,0xa3,0xf6,0x54,0xce,0x08	
	adc	%r13, 16(%rdi,%rcx,8)
	.byte	0xc4,0x62,0x93,0xf6,0x64,0xce,0x10	
	adc	%rbx, 24(%rdi,%rcx,8)
	adc	%rax, %r9
	.byte	0xc4,0xe2,0xe3,0xf6,0x44,0xce,0x18	
	adc	%r8, %r11
	adc	%r10, %r13
	adc	%r12, %rbx
	adc	$0, %rax
	add	$4, %rcx
	jnz	.Ltop3

	inc	%rbp
	add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	%r13, 16(%rdi)
	adc	%rbx, 24(%rdi)
	adc	$0, %rax
	mov	%rax, 32(%rdi)
	jmp	.Lf2


.Lxit3:add	%r9, (%rdi)
	adc	%r11, 8(%rdi)
	adc	16(%rdi), %r13
	adc	24(%rdi), %rbx
.Lm:	adc	$0, %rax
	mov	%rax, 32(%rdi)
	mov	-24(%rsi), %rdx		
	mov	-32(%rsi), %r9		
	sar	$63, %r9
	and	%rdx, %r9
	add	%r13, %r9
	.byte	0xc4,98,251,0xf6,210
	mov	-16(%rsi), %r8		
	adc	$0, %r10
	add	%rax, %r9
	adc	$0, %r10
	mov	%r9, 16(%rdi)
	mov	-32(%rsi), %rax
	shl	%rax
	adc	%rdx, %rdx
	.byte	0xc4,66,147,0xf6,224
	.byte	0xc4,226,163,0xf6,70,248	
	add	%r10, %r13
	adc	%r12, %r11
	adc	$0, %rax
	add	%rbx, %r13
	mov	%r13, 24(%rdi)
	adc	32(%rdi), %r11
	adc	$0, %rax
	mov	-16(%rsi), %rdx		
	mov	-8(%rsi), %r8		
	mov	-24(%rsi), %r9
	sar	$63, %r9
	and	%rdx, %r9
	add	%r11, %r9
	.byte	0xc4,98,211,0xf6,210
	adc	$0, %r10
	add	%rbp, %r9
	adc	$0, %r10
	mov	%r9, 32(%rdi)
	mov	-24(%rsi), %rbp
	shl	%rbp
	adc	%rdx, %rdx
	.byte	0xc4,194,227,0xf6,232
	add	%r10, %rbx
	adc	$0, %rbp
	adc	%rbx, %rax
	mov	%rax, 40(%rdi)
	adc	$0, %rbp
	mov	-8(%rsi), %rdx		
	mov	-16(%rsi), %r9		
	sar	$63, %r9
	and	%rdx, %r9
	add	%rbp, %r9
	.byte	0xc4,98,211,0xf6,210
	adc	$0, %r10
	add	%rbp, %r9
	adc	$0, %r10
	mov	%r9, 48(%rdi)
	mov	%r10, 56(%rdi)

	pop	%rbx
	pop	%rbp
	pop	%r12
	pop	%r13

	pop	%r15

	pop	%rsi
	pop	%rdi
	ret
	


