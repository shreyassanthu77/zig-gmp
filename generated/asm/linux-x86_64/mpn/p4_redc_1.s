


































































































   
   
   
   
    


















	.text
	.align	32, 0x90
	.globl	__gmpn_redc_1_pentium4
	.type	__gmpn_redc_1_pentium4,@function
	
__gmpn_redc_1_pentium4:

	

	push	%rbx
	push	%rbp
	push	%r12
	push	%r13
	push	%r14
	push	%r15

	mov	(%rsi), %r13
	mov	%rcx, %r15			
	lea	(%rdx,%rcx,8), %r12
	lea	(%rsi,%rcx,8), %rsi
	neg	%rcx
	imul	%r8, %r13		

	test	$1, %cl
	jz	.Lbx0

.Lbx1:	test	$2, %cl
	jz	.Lb3

.Lb1:	cmp	$-1, %ecx
	jz	.Ln1

.Lotp1:lea	1(%rcx), %r14
	mov	(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbx
	mov	%rdx, %r9
	add	(%rsi,%rcx,8), %r10
	adc	%r11, %rbx
	adc	$0, %r9
	mov	16(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	8(%rsi,%rcx,8), %rbx
	mov	%rbx, 8(%rsi,%rcx,8)
	adc	%r9, %r10
	adc	$0, %r11
	imul	%r8, %rbx		
	jmp	.Le1

	.align	16, 0x90
.Ltp1:	add	%rbp, -16(%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, -8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	8(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%rbp, (%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
.Le1:	mov	16(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, 8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	24(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %r14
	js	.Ltp1

.Led1:	add	%rbp, -16(%rsi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, -8(%rsi)
	adc	$0, %r11
	mov	%r11, (%rsi,%rcx,8)		
	mov	%rbx, %r13		
	lea	8(%rsi), %rsi		
	dec	%r15
	jnz	.Lotp1
	jmp	.Lcj

.Lb3:	cmp	$-3, %ecx
	jz	.Ln3

.Lotp3:lea	3(%rcx), %r14
	mov	(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbx
	mov	%rdx, %r9
	add	(%rsi,%rcx,8), %r10
	adc	%r11, %rbx
	adc	$0, %r9
	mov	16(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	8(%rsi,%rcx,8), %rbx
	mov	%rbx, 8(%rsi,%rcx,8)
	adc	%r9, %r10
	adc	$0, %r11
	imul	%r8, %rbx		
	jmp	.Le3

	.align	16, 0x90
.Ltp3:	add	%rbp, -16(%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
.Le3:	mov	(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, -8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	8(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%rbp, (%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, 8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	24(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %r14
	js	.Ltp3

.Led3:	add	%rbp, -16(%rsi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, -8(%rsi)
	adc	$0, %r11
	mov	%r11, (%rsi,%rcx,8)		
	mov	%rbx, %r13		
	lea	8(%rsi), %rsi		
	dec	%r15
	jnz	.Lotp3


.Lcj:
	lea	(%rsi,%rcx,8), %rsi		
	lea	(%rsi,%rcx,8), %rdx		
	neg	%ecx			

	

	sub	$8, %rsp	

	
	call	__gmpn_add_n@PLT

	add	$8, %rsp	


.Lret:	pop	%r15
	pop	%r14
	pop	%r13
	pop	%r12
	pop	%rbp
	pop	%rbx
	
	ret

.Lbx0:	test	$2, %cl
	jnz	.Lb2

.Lb0:
.Lotp0:lea	(%rcx), %r14
	mov	(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	mov	8(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbx
	mov	%rdx, %r11
	add	(%rsi,%rcx,8), %rbp
	adc	%r9, %rbx
	adc	$0, %r11
	mov	16(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	8(%rsi,%rcx,8), %rbx
	mov	%rbx, 8(%rsi,%rcx,8)
	adc	%r11, %rbp
	adc	$0, %r9
	imul	%r8, %rbx		
	jmp	.Le0

	.align	16, 0x90
.Ltp0:	add	%rbp, -16(%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, -8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	8(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%rbp, (%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, 8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
.Le0:	mov	24(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %r14
	js	.Ltp0

.Led0:	add	%rbp, -16(%rsi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, -8(%rsi)
	adc	$0, %r11
	mov	%r11, (%rsi,%rcx,8)		
	mov	%rbx, %r13		
	lea	8(%rsi), %rsi		
	dec	%r15
	jnz	.Lotp0
	jmp	.Lcj

.Lb2:	cmp	$-2, %ecx
	jz	.Ln2

.Lotp2:lea	2(%rcx), %r14
	mov	(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	mov	8(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbx
	mov	%rdx, %r11
	add	(%rsi,%rcx,8), %rbp
	adc	%r9, %rbx
	adc	$0, %r11
	mov	16(%r12,%rcx,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	8(%rsi,%rcx,8), %rbx
	mov	%rbx, 8(%rsi,%rcx,8)
	adc	%r11, %rbp
	adc	$0, %r9
	imul	%r8, %rbx		
	jmp	.Le2

	.align	16, 0x90
.Ltp2:	add	%rbp, -16(%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, -8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
.Le2:	mov	8(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	%rbp, (%rsi,%r14,8)
	adc	%r9, %r10
	adc	$0, %r11
	mov	16(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %rbp
	mov	%rdx, %r9
	add	%r10, 8(%rsi,%r14,8)
	adc	%r11, %rbp
	adc	$0, %r9
	mov	24(%r12,%r14,8), %rax
	mul	%r13
	mov	%rax, %r10
	mov	%rdx, %r11
	add	$4, %r14
	js	.Ltp2

.Led2:	add	%rbp, -16(%rsi)
	adc	%r9, %r10
	adc	$0, %r11
	add	%r10, -8(%rsi)
	adc	$0, %r11
	mov	%r11, (%rsi,%rcx,8)		
	mov	%rbx, %r13		
	lea	8(%rsi), %rsi		
	dec	%r15
	jnz	.Lotp2
	jmp	.Lcj

.Ln1:	mov	(%rdx), %rax
	mul	%r13
	add	-8(%rsi), %rax
	adc	(%rsi), %rdx
	mov	%rdx, (%rdi)
	mov	$0, %eax
	adc	%eax, %eax
	jmp	.Lret

.Ln2:	mov	(%rdx), %rax
	mov	-16(%rsi), %rbp
	mul	%r13
	add	%rax, %rbp
	mov	%rdx, %r9
	adc	$0, %r9
	mov	-8(%r12), %rax
	mov	-8(%rsi), %r10
	mul	%r13
	add	%rax, %r10
	mov	%rdx, %r11
	adc	$0, %r11
	add	%r9, %r10
	adc	$0, %r11
	mov	%r10, %r13
	imul	%r8, %r13		
	mov	-16(%r12), %rax
	mul	%r13
	add	%rax, %r10
	mov	%rdx, %r9
	adc	$0, %r9
	mov	-8(%r12), %rax
	mov	(%rsi), %r14
	mul	%r13
	add	%rax, %r14
	adc	$0, %rdx
	add	%r9, %r14
	adc	$0, %rdx
	xor	%eax, %eax
	add	%r11, %r14
	adc	8(%rsi), %rdx
	mov	%r14, (%rdi)
	mov	%rdx, 8(%rdi)
	adc	%eax, %eax
	jmp	.Lret

	.align	16, 0x90
.Ln3:	mov	-24(%r12), %rax
	mov	-24(%rsi), %r10
	mul	%r13
	add	%rax, %r10
	mov	-16(%r12), %rax
	mov	%rdx, %r11
	adc	$0, %r11
	mov	-16(%rsi), %rbp
	mul	%r13
	add	%rax, %rbp
	mov	%rdx, %r9
	adc	$0, %r9
	mov	-8(%r12), %rax
	add	%r11, %rbp
	mov	-8(%rsi), %r10
	adc	$0, %r9
	mul	%r13
	mov	%rbp, %r13
	imul	%r8, %r13		
	add	%rax, %r10
	mov	%rdx, %r11
	adc	$0, %r11
	mov	%rbp, -16(%rsi)
	add	%r9, %r10
	adc	$0, %r11
	mov	%r10, -8(%rsi)
	mov	%r11, -24(%rsi)		
	lea	8(%rsi), %rsi		
	dec	%r15
	jnz	.Ln3

	mov	-48(%rsi), %rdx
	mov	-40(%rsi), %rbx
	xor	%eax, %eax
	add	%rbp, %rdx
	adc	%r10, %rbx
	adc	-8(%rsi), %r11
	mov	%rdx, (%rdi)
	mov	%rbx, 8(%rdi)
	mov	%r11, 16(%rdi)
	adc	%eax, %eax
	jmp	.Lret
	.size	__gmpn_redc_1_pentium4,.-__gmpn_redc_1_pentium4




	.section .note.GNU-stack,"",@progbits
