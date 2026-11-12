

















































































   
   
   
   
    

   





	
	
	
	
	

	
	


	.text
	.align	16, 0x90
	.globl	__gmpn_mul_1_coreisbr
	
	.def	__gmpn_mul_1_coreisbr
	.scl	2
	.type	32
	.endef
__gmpn_mul_1_coreisbr:

	push	%rsi		
	mov	(%rdx), %rax

	lea	(%rdx,%r8,8), %rsi
	lea	-8(%rcx,%r8,8), %rcx
	neg	%r8
	mul	%r9

	test	$1, %r8b
	jz	.Lx0
.Lx1:	mov	%rax, %r11
	mov	%rdx, %r10
	test	$2, %r8b
	jnz	.L01

.L11:	mov	8(%rsi,%r8,8), %rax
	dec	%r8
	jmp	.LL3

.L01:	inc	%r8
	jnz	.LL1
	mov	%rax, (%rcx)
	mov	%rdx, %rax
	pop	%rsi		
	ret

.Lx0:	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%rsi,%r8,8), %rax
	test	$2, %r8b
	jz	.LL0

.L10:	add	$-2, %r8
	jmp	.LL2

	.align	8, 0x90
.Ltop:	mov	%rdx, %r10
	add	%rax, %r11
.LL1:	mov	0(%rsi,%r8,8), %rax
	adc	$0, %r10
	mul	%r9
	add	%rax, %r10
	mov	%r11, 0(%rcx,%r8,8)
	mov	8(%rsi,%r8,8), %rax
	mov	%rdx, %r11
.LL0c:	adc	$0, %r11
.LL0:	mul	%r9
	mov	%r10, 8(%rcx,%r8,8)
	add	%rax, %r11
	mov	%rdx, %r10
.LL3c:	mov	16(%rsi,%r8,8), %rax
	adc	$0, %r10
.LL3:	mul	%r9
	mov	%r11, 16(%rcx,%r8,8)
	mov	%rdx, %r11
	add	%rax, %r10
.LL2c:	mov	24(%rsi,%r8,8), %rax
	adc	$0, %r11
.LL2:	mul	%r9
	mov	%r10, 24(%rcx,%r8,8)
	add	$4, %r8
	jnc	.Ltop

.Lend:	add	%rax, %r11
	mov	%rdx, %rax
	adc	$0, %rax
	mov	%r11, (%rcx)

	pop	%rsi		
	ret
	

	.align	16, 0x90
	.globl	__gmpn_mul_1c_coreisbr
	
	.def	__gmpn_mul_1c_coreisbr
	.scl	2
	.type	32
	.endef
__gmpn_mul_1c_coreisbr:

	push	%rsi		
	mov	(%rdx), %rax

	lea	(%rdx,%r8,8), %rsi
	lea	-8(%rcx,%r8,8), %rcx
	neg	%r8
	mul	%r9

	test	$1, %r8b
	jz	.Lx0c
.Lx1c:	mov	%rax, %r11
	mov	%rdx, %r10
	test	$2, %r8b
	jnz	.L01c

.L11c:	add	48(%rsp), %r11
	dec	%r8
	jmp	.LL3c

.L01c:	add	48(%rsp), %r11
	inc	%r8
	jnz	.LL1
	mov	%r11, (%rcx)
	mov	%rdx, %rax
	adc	$0, %rax
	pop	%rsi		
	ret

.Lx0c:	mov	%rax, %r10
	mov	%rdx, %r11
	test	$2, %r8b
	jz	.L00c

.L10c:	add	$-2, %r8
	add	48(%rsp), %r10
	jmp	.LL2c

.L00c:	add	48(%rsp), %r10
	mov	8(%rsi,%r8,8), %rax
	jmp	.LL0c
	


