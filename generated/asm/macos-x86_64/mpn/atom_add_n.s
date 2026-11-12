














































































	
	
	
	
	


  
  
  








	.text
	.align	4
	.globl	___gmpn_add_n_atom
	
	
___gmpn_add_n_atom:

	
	xor	%r8, %r8			

Lcom:	shr	%rcx			
	jz	L1			
	jc	L1m2			

L0m2:	shr	%r8
	mov	(%rsi), %r10
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	lea	-8(%rdi), %rdi
	jmp	Lmid

L1:	shr	%r8
	mov	(%rsi), %r9
	jmp	Lend

L1m2:	shr	%r8
	mov	(%rsi), %r9

	.align	4
Ltop:	adc	(%rdx), %r9
	lea	16(%rsi), %rsi
	mov	-8(%rsi), %r10
	lea	16(%rdx), %rdx
	mov	%r9, (%rdi)
Lmid:	adc	-8(%rdx), %r10
	lea	16(%rdi), %rdi
	dec	%rcx
	mov	(%rsi), %r9
	mov	%r10, -8(%rdi)
	jnz	Ltop

Lend:	adc	(%rdx), %r9
	mov	$0, %eax
	mov	%r9, (%rdi)
	adc	%eax, %eax
	
	ret
	

	.globl	___gmpn_add_nc_atom
	
	
___gmpn_add_nc_atom:

	

	jmp	Lcom
	



