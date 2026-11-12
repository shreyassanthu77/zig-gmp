
































































































	
	
	
	
	


	
	
	








	.text
	.align	16, 0x90
	.globl	__gmpn_add_nc_goldmont
	.type	__gmpn_add_nc_goldmont,@function
	
__gmpn_add_nc_goldmont:

	


	mov	%ecx, %eax
	shr	$3, %rcx
	and	$7, %eax

	lea	.Ltab(%rip), %r9
	neg	%r8			

	jmp	*(%r9,%rax,8)

	.size	__gmpn_add_nc_goldmont,.-__gmpn_add_nc_goldmont

	.align	16, 0x90
	.globl	__gmpn_add_n_goldmont
	.type	__gmpn_add_n_goldmont,@function
	
__gmpn_add_n_goldmont:

	

	mov	%ecx, %eax
	shr	$3, %rcx
	and	$7, %eax		

	lea	.Ltab(%rip), %r9

	jmp	*(%r9,%rax,8)


.L0:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	adc	(%rdx), %r8
	jmp	.Le0

.L4:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	adc	(%rdx), %r8
	lea	-32(%rsi), %rsi
	lea	-32(%rdx), %rdx
	lea	-32(%rdi), %rdi
	inc	%rcx
	jmp	.Le4

.L5:	mov	(%rsi), %r11
	mov	8(%rsi), %r8
	mov	16(%rsi), %r9
	adc	(%rdx), %r11
	lea	-24(%rsi), %rsi
	lea	-24(%rdx), %rdx
	lea	-24(%rdi), %rdi
	inc	%rcx
	jmp	.Le5

.L6:	mov	(%rsi), %r10
	adc	(%rdx), %r10
	mov	8(%rsi), %r11
	lea	-16(%rsi), %rsi
	lea	-16(%rdx), %rdx
	lea	-16(%rdi), %rdi
	inc	%rcx
	jmp	.Le6

.L7:	mov	(%rsi), %r9
	mov	8(%rsi), %r10
	adc	(%rdx), %r9
	adc	8(%rdx), %r10
	lea	-8(%rsi), %rsi
	lea	-8(%rdx), %rdx
	lea	-8(%rdi), %rdi
	inc	%rcx
	jmp	.Le7

	.align	16, 0x90
.Ltop:
.Le3:	mov	%r9, 40(%rdi)
.Le2:	mov	%r10, 48(%rdi)
.Le1:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	adc	(%rdx), %r8
	mov	%r11, 56(%rdi)
	lea	64(%rdi), %rdi
.Le0:	mov	16(%rsi), %r10
	adc	8(%rdx), %r9
	adc	16(%rdx), %r10
	mov	%r8, (%rdi)
.Le7:	mov	24(%rsi), %r11
	mov	%r9, 8(%rdi)
.Le6:	mov	32(%rsi), %r8
	mov	40(%rsi), %r9
	adc	24(%rdx), %r11
	mov	%r10, 16(%rdi)
.Le5:	adc	32(%rdx), %r8
	mov	%r11, 24(%rdi)
.Le4:	mov	48(%rsi), %r10
	mov	56(%rsi), %r11
	mov	%r8, 32(%rdi)
	lea	64(%rsi), %rsi
	adc	40(%rdx), %r9
	adc	48(%rdx), %r10
	adc	56(%rdx), %r11
	lea	64(%rdx), %rdx
	dec	%rcx
	jnz	.Ltop

.Lend:	mov	%r9, 40(%rdi)
	mov	%r10, 48(%rdi)
	mov	%r11, 56(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	16, 0x90
.L3:	mov	(%rsi), %r9
	mov	8(%rsi), %r10
	mov	16(%rsi), %r11
	adc	(%rdx), %r9
	adc	8(%rdx), %r10
	adc	16(%rdx), %r11
	jrcxz	.Lx3
	lea	24(%rsi), %rsi
	lea	24(%rdx), %rdx
	lea	-40(%rdi), %rdi
	jmp	.Le3
.Lx3:	mov	%r9, (%rdi)
	mov	%r10, 8(%rdi)
	mov	%r11, 16(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	16, 0x90
.L1:	mov	(%rsi), %r11
	adc	(%rdx), %r11
	jrcxz	.Lx1
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	lea	-56(%rdi), %rdi
	jmp	.Le1
.Lx1:	mov	%r11, (%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret

	.align	16, 0x90
.L2:	mov	(%rsi), %r10
	mov	8(%rsi), %r11
	adc	(%rdx), %r10
	adc	8(%rdx), %r11
	jrcxz	.Lx2
	lea	16(%rsi), %rsi
	lea	16(%rdx), %rdx
	lea	-48(%rdi), %rdi
	jmp	.Le2
.Lx2:	mov	%r10, (%rdi)
	mov	%r11, 8(%rdi)
	mov	%ecx, %eax
	adc	%ecx, %eax
	
	ret
	.size	__gmpn_add_n_goldmont,.-__gmpn_add_n_goldmont
	.section	.data.rel.ro.local,"a",@progbits
	.align	8, 0x90
.Ltab:	.quad	.L0
	.quad	.L1
	.quad	.L2
	.quad	.L3
	.quad	.L4
	.quad	.L5
	.quad	.L6
	.quad	.L7



	.section .note.GNU-stack,"",@progbits
