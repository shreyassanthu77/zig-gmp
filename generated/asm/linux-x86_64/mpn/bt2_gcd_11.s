










































































































	.text
	.align	64, 0x90
	.globl	__gmpn_gcd_11_bt2
	.type	__gmpn_gcd_11_bt2,@function
	
__gmpn_gcd_11_bt2:

	
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
	
	
	
	ret
	.size	__gmpn_gcd_11_bt2,.-__gmpn_gcd_11_bt2



	.section .note.GNU-stack,"",@progbits
