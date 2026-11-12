



























































































		.section	.rdata,"dr"
	.align	64, 0x90
ctz_table:

	.byte	8
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	7
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	6
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0

	












	.text
	.align	64, 0x90
	.globl	__gmpn_gcd_11_bt1
	
	.def	__gmpn_gcd_11_bt1
	.scl	2
	.type	32
	.endef
__gmpn_gcd_11_bt1:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi

	
	lea	ctz_table(%rip), %r10

	mov	%rsi, %rdx
	sub	%rdi, %rdx
	jz	.Lend

	.align	16, 0x90
.Ltop:	mov	%rdi, %rax
	sub	%rsi, %rdi
	cmovc	%rdx, %rdi		
	cmovc	%rax, %rsi		
	and	$255, %edx
	movzbl	(%r10,%rdx), %ecx
	jz	.Lcount_better
.Lshr:	shr	%cl, %rdi
	mov	%rsi, %rdx
	sub	%rdi, %rdx
	jnz	.Ltop

.Lend:	mov	%rsi, %rax
	
	pop	%rsi
	pop	%rdi
	ret

.Lcount_better:
	bsf	%rdi, %rcx
	jmp	.Lshr
	


