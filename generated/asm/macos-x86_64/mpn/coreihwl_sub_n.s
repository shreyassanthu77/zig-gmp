


















































































	
	
	
	
	



	
	
	







	.text
	.align	4
	.globl	___gmpn_sub_nc_coreihwl
	
	
___gmpn_sub_nc_coreihwl:

	


	mov	%ecx, %eax
	shr	$3, %rcx
	and	$7, %eax

	lea	Ltab(%rip), %r9
	neg	%r8			

	jmp	*(%r9,%rax,8)

	

	.align	4
	.globl	___gmpn_sub_n_coreihwl
	
	
___gmpn_sub_n_coreihwl:

	

	mov	%ecx, %eax
	shr	$3, %rcx
	and	$7, %eax		

	lea	Ltab(%rip), %r9

	jmp	*(%r9,%rax,8)


L0:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	sbb	(%rdx), %r8
	jmp	Le0

L4:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	sbb	(%rdx), %r8
	lea	-32(%rsi), %rsi
	lea	-32(%rdx), %rdx
	lea	-32(%rdi), %rdi
	inc	%rcx
	jmp	Le4

L5:	mov	(%rsi), %r11
	mov	8(%rsi), %r8
	mov	16(%rsi), %r9
	sbb	(%rdx), %r11
	lea	-24(%rsi), %rsi
	lea	-24(%rdx), %rdx
	lea	-24(%rdi), %rdi
	inc	%rcx
	jmp	Le5

L6:	mov	(%rsi), %r10
	sbb	(%rdx), %r10
	mov	8(%rsi), %r11
	lea	-16(%rsi), %rsi
	lea	-16(%rdx), %rdx
	lea	-16(%rdi), %rdi
	inc	%rcx
	jmp	Le6

L7:	mov	(%rsi), %r9
	mov	8(%rsi), %r10
	sbb	(%rdx), %r9
	sbb	8(%rdx), %r10
	lea	-8(%rsi), %rsi
	lea	-8(%rdx), %rdx
	lea	-8(%rdi), %rdi
	inc	%rcx
	jmp	Le7

	.align	4
Ltop:
Le3:	mov	%r9, 40(%rdi)
Le2:	mov	%r10, 48(%rdi)
Le1:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	sbb	(%rdx), %r8
	mov	%r11, 56(%rdi)
	lea	64(%rdi), %rdi
Le0:	mov	16(%rsi), %r10
	sbb	8(%rdx), %r9
	sbb	16(%rdx), %r10
	mov	%r8, (%rdi)
Le7:	mov	24(%rsi), %r11
	mov	%r9, 8(%rdi)
Le6:	mov	32(%rsi), %r8
	mov	40(%rsi), %r9
	sbb	24(%rdx), %r11
	mov	%r10, 16(%rdi)
Le5:	sbb	32(%rdx), %r8
	mov	%r11, 24(%rdi)
Le4:	mov	48(%rsi), %r10
	mov	56(%rsi), %r11
	mov	%r8, 32(%rdi)
	lea	64(%rsi), %rsi
	sbb	40(%rdx), %r9
	sbb	48(%rdx), %r10
	sbb	56(%rdx), %r11
	lea	64(%rdx), %rdx
	dec	%rcx
	jnz	Ltop

Lend:	mov	%r9, 40(%rdi)
	mov	%r10, 48(%rdi)
	mov	%r11, 56(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	4
L3:	mov	(%rsi), %r9
	mov	8(%rsi), %r10
	mov	16(%rsi), %r11
	sbb	(%rdx), %r9
	sbb	8(%rdx), %r10
	sbb	16(%rdx), %r11
	jrcxz	Lx3
	lea	24(%rsi), %rsi
	lea	24(%rdx), %rdx
	lea	-40(%rdi), %rdi
	jmp	Le3
Lx3:	mov	%r9, (%rdi)
	mov	%r10, 8(%rdi)
	mov	%r11, 16(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	4
L1:	mov	(%rsi), %r11
	sbb	(%rdx), %r11
	jrcxz	Lx1
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	lea	-56(%rdi), %rdi
	jmp	Le1
Lx1:	mov	%r11, (%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	4
L2:	mov	(%rsi), %r10
	mov	8(%rsi), %r11
	sbb	(%rdx), %r10
	sbb	8(%rdx), %r11
	jrcxz	Lx2
	lea	16(%rsi), %rsi
	lea	16(%rdx), %rdx
	lea	-48(%rdi), %rdi
	jmp	Le2
Lx2:	mov	%r10, (%rdi)
	mov	%r11, 8(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret
	
	.text
	.align	3
Ltab:	.quad	L0

	.quad	L1

	.quad	L2

	.quad	L3

	.quad	L4

	.quad	L5

	.quad	L6

	.quad	L7



