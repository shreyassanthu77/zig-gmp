


















































































	
	
	
	
	


	
	
	








	.text
	.align	16, 0x90
	.globl	__gmpn_add_n_bt1
	.type	__gmpn_add_n_bt1,@function
	
__gmpn_add_n_bt1:

	
	xor	%r8, %r8
.Lent:	test	$1, %cl
	jnz	.Lbx1

.Lbx0:	test	$2, %cl
	jnz	.Lb10

.Lb00:	shr	$2, %rcx
	neg	%r8
	mov	$3, %eax
	mov	(%rsi), %r10
	mov	8(%rsi), %r11
	jmp	.Llo0

.Lb10:	shr	$2, %rcx
	neg	%r8
	mov	$1, %eax
	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	jrcxz	.Lcj2
	jmp	.Ltop

.Lbx1:	test	$2, %cl
	jnz	.Lb11

.Lb01:	shr	$2, %rcx
	neg	%r8
	mov	$0, %eax
	mov	(%rsi), %r9
	jrcxz	.Lcj1
	mov	8(%rsi), %r10
	jmp	.Llo1

	.align	8, 0x90
.Lb11:	inc	%rcx
	shr	$2, %rcx
	neg	%r8
	mov	$2, %eax
	mov	(%rsi), %r11
	jmp	.Llo3

	.align	4, 0x90
.Ltop:	mov	8(%rsi,%rax,8), %r10
	adc	-8(%rdx,%rax,8), %r8
	mov	%r8, -8(%rdi,%rax,8)
.Llo1:	mov	16(%rsi,%rax,8), %r11
	adc	(%rdx,%rax,8), %r9
	lea	4(%rax), %rax
	mov	%r9, -32(%rdi,%rax,8)
.Llo0:	adc	-24(%rdx,%rax,8), %r10
	mov	%r10, -24(%rdi,%rax,8)
.Llo3:	adc	-16(%rdx,%rax,8), %r11
	dec	%rcx
	mov	-8(%rsi,%rax,8), %r8
	mov	%r11, -16(%rdi,%rax,8)
.Llo2:	mov	(%rsi,%rax,8), %r9
	jnz	.Ltop

.Lcj2:	adc	-8(%rdx,%rax,8), %r8
	mov	%r8, -8(%rdi,%rax,8)
.Lcj1:	adc	(%rdx,%rax,8), %r9
	mov	%r9, (%rdi,%rax,8)

	mov	$0, %eax
	adc	$0, %eax

	
	ret
	.size	__gmpn_add_n_bt1,.-__gmpn_add_n_bt1

	.align	16, 0x90
	.globl	__gmpn_add_nc_bt1
	.type	__gmpn_add_nc_bt1,@function
	
__gmpn_add_nc_bt1:

	

	jmp	.Lent
	.size	__gmpn_add_nc_bt1,.-__gmpn_add_nc_bt1


	.section .note.GNU-stack,"",@progbits
