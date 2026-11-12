




























































































	.text
	.align	64, 0x90
	.globl	__gmpn_gcd_11_core2
	.type	__gmpn_gcd_11_core2,@function
	
__gmpn_gcd_11_core2:

	
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
	.size	__gmpn_gcd_11_core2,.-__gmpn_gcd_11_core2


	.section .note.GNU-stack,"",@progbits
