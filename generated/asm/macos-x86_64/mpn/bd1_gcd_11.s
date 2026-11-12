










































































































	.text
	.align	6
	.globl	___gmpn_gcd_11_bd1
	
	
___gmpn_gcd_11_bd1:

	
	jmp	Lodd

	.align	4
Ltop:	cmovc	%rdx, %rdi		
	cmovc	%rax, %rsi		
	shr	%cl, %rdi
Lodd:	mov	%rsi, %rdx
	sub	%rdi, %rdx		
	bsf	%rdx, %rcx
	mov	%rdi, %rax
	sub	%rsi, %rdi			
	jnz	Ltop

Lend:	
	
	
	ret
	



