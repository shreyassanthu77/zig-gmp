




























































































	.text
	.align	16, 0x90
	.globl	__gmpn_divexact_1_atom
	
	.def	__gmpn_divexact_1_atom
	.scl	2
	.type	32
	.endef
__gmpn_divexact_1_atom:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx
	mov	%r9, %rcx

	push	%rbx

	mov	%rcx, %rax
	xor	%ecx, %ecx	
	mov	%rdx, %r8

	bt	$0, %eax
	jc	.Lodd			
	bsf	%rax, %rcx
	shr	%cl, %rax
.Lodd:	mov	%rax, %rbx
	shr	%eax
	and	$127, %eax		

	
	lea	__gmp_binvert_limb_table(%rip), %rdx


	movzbl	(%rdx,%rax), %eax	

	mov	%rbx, %r11		

	lea	(%rax,%rax), %edx	
	imul	%eax, %eax	
	imul	%ebx, %eax	
	sub	%eax, %edx	

	lea	(%rdx,%rdx), %eax	
	imul	%edx, %edx	
	imul	%ebx, %edx	
	sub	%edx, %eax	

	lea	(%rax,%rax), %r10	
	imul	%rax, %rax		
	imul	%rbx, %rax		
	sub	%rax, %r10		

	lea	(%rsi,%r8,8), %rsi	
	lea	-8(%rdi,%r8,8), %rdi	
	neg	%r8			

	mov	(%rsi,%r8,8), %rax	

	inc	%r8
	jz	.Lone

	test	%ecx, %ecx
	jnz	.Lunorm		
	xor	%ebx, %ebx
	jmp	.Lnent

	.align	8, 0x90
.Lntop:mul	%r11			
	mov	-8(%rsi,%r8,8), %rax	
	sub	%rbx, %rax		
	setc	%bl			
	sub	%rdx, %rax		
	adc	$0, %rbx		
.Lnent:imul	%r10, %rax		
	mov	%rax, (%rdi,%r8,8)	
	inc	%r8			
	jnz	.Lntop

	mov	-8(%rsi), %r9		
	jmp	.Lcom

.Lunorm:
	mov	(%rsi,%r8,8), %r9	
	shr	%cl, %rax		
	neg	%ecx
	shl	%cl, %r9		
	neg	%ecx
	or	%r9, %rax
	xor	%ebx, %ebx
	jmp	.Luent

	.align	8, 0x90
.Lutop:mul	%r11			
	mov	(%rsi,%r8,8), %rax	
	shl	%cl, %rax		
	neg	%ecx
	or	%r9, %rax
	sub	%rbx, %rax		
	setc	%bl			
	sub	%rdx, %rax		
	adc	$0, %rbx		
.Luent:imul	%r10, %rax		
	mov	(%rsi,%r8,8), %r9	
	shr	%cl, %r9		
	neg	%ecx
	mov	%rax, (%rdi,%r8,8)	
	inc	%r8			
	jnz	.Lutop

.Lcom:	mul	%r11			
	sub	%rbx, %r9		
	sub	%rdx, %r9		
	imul	%r10, %r9
	mov	%r9, (%rdi)
	pop	%rbx
	pop	%rsi
	pop	%rdi
	ret

.Lone:	shr	%cl, %rax
	imul	%r10, %rax
	mov	%rax, (%rdi)
	pop	%rbx
	pop	%rsi
	pop	%rdi
	ret
	



