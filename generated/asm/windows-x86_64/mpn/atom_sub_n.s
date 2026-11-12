














































































	
	
	
	
	



  
  
  







	.text
	.align	16, 0x90
	.globl	__gmpn_sub_n_atom
	
	.def	__gmpn_sub_n_atom
	.scl	2
	.type	32
	.endef
__gmpn_sub_n_atom:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx
	mov	%r9, %rcx

	xor	%r8, %r8			

.Lcom:	shr	%rcx			
	jz	.L1			
	jc	.L1m2			

.L0m2:	shr	%r8
	mov	(%rsi), %r10
	lea	8(%rsi), %rsi
	lea	8(%rdx), %rdx
	lea	-8(%rdi), %rdi
	jmp	.Lmid

.L1:	shr	%r8
	mov	(%rsi), %r9
	jmp	.Lend

.L1m2:	shr	%r8
	mov	(%rsi), %r9

	.align	16, 0x90
.Ltop:	sbb	(%rdx), %r9
	lea	16(%rsi), %rsi
	mov	-8(%rsi), %r10
	lea	16(%rdx), %rdx
	mov	%r9, (%rdi)
.Lmid:	sbb	-8(%rdx), %r10
	lea	16(%rdi), %rdi
	dec	%rcx
	mov	(%rsi), %r9
	mov	%r10, -8(%rdi)
	jnz	.Ltop

.Lend:	sbb	(%rdx), %r9
	mov	$0, %eax
	mov	%r9, (%rdi)
	adc	%eax, %eax
	pop	%rsi
	pop	%rdi
	ret
	

	.globl	__gmpn_sub_nc_atom
	
	.def	__gmpn_sub_nc_atom
	.scl	2
	.type	32
	.endef
__gmpn_sub_nc_atom:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi
	mov	%r8, %rdx
	mov	%r9, %rcx

	mov	56(%rsp), %r8	
	jmp	.Lcom
	



