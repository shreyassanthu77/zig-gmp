










































































































	.text
	.align	6
	.globl	___gmpn_gcd_11_bt2
	
	
___gmpn_gcd_11_bt2:

	
	mov	%rsi, %rdx
	sub	%rdi, %rdx
	jz	Lend

	.align	4
Ltop:	rep;bsf	%rdx, %rcx		
	mov	%rdi, %rax
	sub	%rsi, %rdi			
	cmovc	%rdx, %rdi		
	cmovc	%rax, %rsi		
	shr	%cl, %rdi
	mov	%rsi, %rdx
	sub	%rdi, %rdx		
	jnz	Ltop

Lend:	mov	%rsi, %rax
	
	
	
	ret
	



