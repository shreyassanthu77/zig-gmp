










































































































	.text
	.align	64, 0x90
	.globl	__gmpn_gcd_11_coreisbr
	.type	__gmpn_gcd_11_coreisbr,@function
	
__gmpn_gcd_11_coreisbr:

	
	jmp	.Lodd

	.align	16, 0x90
.Ltop:	cmovc	%rdx, %rdi		
	cmovc	%rax, %rsi		
	shr	%cl, %rdi
.Lodd:	mov	%rsi, %rdx
	sub	%rdi, %rdx		
	bsf	%rdx, %rcx
	mov	%rdi, %rax
	sub	%rsi, %rdi			
	jnz	.Ltop

.Lend:	
	
	
	ret
	.size	__gmpn_gcd_11_coreisbr,.-__gmpn_gcd_11_coreisbr



	.section .note.GNU-stack,"",@progbits
