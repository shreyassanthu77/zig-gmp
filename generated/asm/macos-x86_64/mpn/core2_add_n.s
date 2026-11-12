





















































































	
	
	








	.text
	.align	4
	.globl	___gmpn_add_n_core2
	
	
___gmpn_add_n_core2:

	
	xor	%r8, %r8
Lstart:
	mov	(%rsi), %r10
	mov	(%rdx), %r11

	lea	(%rsi,%rcx,8), %rsi
	lea	(%rdx,%rcx,8), %rdx
	lea	(%rdi,%rcx,8), %rdi
	mov	%ecx, %eax
	neg	%rcx
	and	$3, %eax
	je	Lb00
	add	%rax, %rcx			
	cmp	$2, %eax
	jl	Lb01
	je	Lb10

Lb11:	neg	%r8			
	jmp	Le11

Lb00:	neg	%r8			
	mov	%r10, %r8
	mov	%r11, %r9
	lea	4(%rcx), %rcx
	jmp	Le00

	nop
	nop
	nop
Lb01:	neg	%r8			
	jmp	Ltop

Lb10:	neg	%r8			
	mov	%r10, %r8
	mov	%r11, %r9
	jmp	Le10

Lend:	adc	%r11, %r10
	mov	%r10, -8(%rdi)
	mov	%ecx, %eax	
	adc	%eax, %eax
	
	ret

	.align	4
Ltop:	jrcxz	Lend
	mov	(%rsi,%rcx,8), %r8
	mov	(%rdx,%rcx,8), %r9
	lea	4(%rcx), %rcx
	adc	%r11, %r10
	mov	%r10, -40(%rdi,%rcx,8)
Le00:	mov	-24(%rsi,%rcx,8), %r10
	mov	-24(%rdx,%rcx,8), %r11
	adc	%r9, %r8
	mov	%r8, -32(%rdi,%rcx,8)
Le11:	mov	-16(%rsi,%rcx,8), %r8
	mov	-16(%rdx,%rcx,8), %r9
	adc	%r11, %r10
	mov	%r10, -24(%rdi,%rcx,8)
Le10:	mov	-8(%rsi,%rcx,8), %r10
	mov	-8(%rdx,%rcx,8), %r11
	adc	%r9, %r8
	mov	%r8, -16(%rdi,%rcx,8)
	jmp	Ltop
	

	.globl	___gmpn_add_nc_core2
	
	
___gmpn_add_nc_core2:

	

	jmp	Lstart
	


