






















































































      
      

















                          
                               

	.text
	.align	64, 0x90
	.globl	__gmpn_submul_1_bt1
	
	.def	__gmpn_submul_1_bt1
	.scl	2
	.type	32
	.endef
__gmpn_submul_1_bt1:

	push	%rsi		
	push	%rdi		
	mov	%rdx, %rsi	

	push	%rbx
	mov	(%rsi), %rax

	lea	(%rcx,%r8,8), %rcx
	lea	(%rsi,%r8,8), %rsi
	mov	%r8, %rbx

	test	$1, %r8b
	jne	.Lbx1

.Lbx0:	mul	%r9
	neg	%rbx
	mov	%rax, %r8
	mov	%rdx, %rdi
	test	$2, %bl
	jne	.LL2

.Lb00:	add	$2, %rbx
	jmp	.LL0

	.align	16, 0x90
.Lbx1:	mul	%r9
	test	$2, %bl
	je	.Lb01

.Lb11:	mov	%rax, %r10
	mov	%rdx, %r11
	neg	%rbx
	inc	%rbx
	jmp	.LL3

	.align	16, 0x90
.Lb01:	sub	$3, %rbx
	jc	.Ln1
	mov	%rax, %r10
	mov	%rdx, %r11
	neg	%rbx

	.align	16, 0x90
.Ltop:	mov	-16(%rsi,%rbx,8), %rax
	mul	%r9
	mov	%rax, %r8
	mov	%rdx, %rdi
	sub	%r10, -24(%rcx,%rbx,8)
	adc	%r11, %r8
	adc	$0, %rdi
.LL0:	mov	-8(%rsi,%rbx,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	sub	%r8, -16(%rcx,%rbx,8)
	adc	%rdi, %r10
	adc	$0, %r11
.LL3:	mov	(%rsi,%rbx,8), %rax
	mul	%r9
	mov	%rax, %r8
	mov	%rdx, %rdi
	sub	%r10, -8(%rcx,%rbx,8)
	adc	%r11, %r8
	adc	$0, %rdi
.LL2:	mov	8(%rsi,%rbx,8), %rax
	mul	%r9
	mov	%rax, %r10
	mov	%rdx, %r11
	sub	%r8, (%rcx,%rbx,8)
	adc	%rdi, %r10
	adc	$0, %r11
	add	$4, %rbx
	js	.Ltop

.Lend:	xor	%eax, %eax
	sub	%r10, -8(%rcx)
	adc	%r11, %rax
	pop	%rbx
	pop	%rdi		
	pop	%rsi		
	ret

	.align	32, 0x90
.Ln1:	sub	%rax, -8(%rcx)
	mov	$0, %eax
	adc	%rdx, %rax
	pop	%rbx
	pop	%rdi		
	pop	%rsi		
	ret
	


