










































































































	.text
	.align	64, 0x90
	.globl	__gmpn_gcd_11_zen
	
	.def	__gmpn_gcd_11_zen
	.scl	2
	.type	32
	.endef
__gmpn_gcd_11_zen:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi

	mov	%rsi, %rdx
	sub	%rdi, %rdx
	jz	.Lend

	.align	16, 0x90
.Ltop:	rep;bsf	%rdx, %rcx		
	mov	%rdi, %rax
	sub	%rsi, %rdi			
	cmovc	%rdx, %rdi		
	cmovc	%rax, %rsi		
	shr	%cl, %rdi
	mov	%rsi, %rdx
	sub	%rdi, %rdx		
	jnz	.Ltop

.Lend:	mov	%rsi, %rax
	
	
	pop	%rsi
	pop	%rdi
	ret
	



