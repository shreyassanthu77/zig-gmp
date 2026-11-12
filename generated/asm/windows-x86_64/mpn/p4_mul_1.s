

































































































   
   
   
   






		 		 		 		 		 		 

	.text
	.align	16, 0x90
	.globl	__gmpn_mul_1c_pentium4
	
	.def	__gmpn_mul_1c_pentium4
	.scl	2
	.type	32
	.endef
__gmpn_mul_1c_pentium4:

push	%rsi		
push	%rdi		
mov	%rdx, %rsi	

	mov	(%rsi), %rax		
	push	%rbx
	
	mov	%r8, %r11		
	mul	%r9


 add	64(%rsp), %rax		
	adc	$0, %rdx
	jmp	.Lcommon

	

	.align	16, 0x90
	.globl	__gmpn_mul_1_pentium4
	
	.def	__gmpn_mul_1_pentium4
	.scl	2
	.type	32
	.endef
__gmpn_mul_1_pentium4:

push	%rsi		
push	%rdi		
mov	%rdx, %rsi	

	mov	(%rsi), %rax		
	push	%rbx
	
	mov	%r8, %r11		
	mul	%r9

.Lcommon:


	and	$3, %r11d
	lea	-16(%rcx,%r8,8), %rcx
	jz	.Lb0
	cmp	$2, %r11d
	jb	.Lb1
	jz	.Lb2

.Lb3:	mov	%rax, %r10
	mov	%rdx, %r11
	mov	8(%rsi), %rax
	mul	%r9
	lea	(%rsi,%r8,8), %rsi
	not	%r8
	jmp	.LL3

.Lb0:	mov	%rax, %rdi
	mov	%rdx, %r10
	mov	8(%rsi), %rax
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	jmp	.LL0

.Lb1:	mov	%rax, %rbx
	cmp	$1, %r8
	jz	.Ln1
	mov	%rdx, %rdi
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	mov	%rbx, 16(%rcx,%r8,8)
	inc	%r8
	jmp	.LL1

.Lb2:	mov	%rax, %r11
	mov	%rdx, %rbx
	mov	8(%rsi), %rax
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	add	$2, %r8
	jns	.Lend

	.align	16, 0x90
.Ltop:	mul	%r9
	mov	%rdx, %rdi
	add	%rax, %rbx
	adc	$0, %rdi
	mov	%rbx, 8(%rcx,%r8,8)
	mov	%r11, (%rcx,%r8,8)
.LL1:	mov	(%rsi,%r8,8), %rax
	mul	%r9
	add	%rax, %rdi
	mov	%rdx, %r10
	mov	8(%rsi,%r8,8), %rax
	adc	$0, %r10
.LL0:	mul	%r9
	add	%rax, %r10
	mov	%rdx, %r11
	mov	16(%rsi,%r8,8), %rax
	adc	$0, %r11
	mul	%r9
	mov	%rdi, 16(%rcx,%r8,8)
.LL3:	add	%rax, %r11
	mov	%r10, 24(%rcx,%r8,8)
	mov	%rdx, %rbx
	adc	$0, %rbx
	add	$4, %r8
	mov	-8(%rsi,%r8,8), %rax
	js	.Ltop

.Lend:	mul	%r9
	add	%rax, %rbx
	adc	$0, %rdx
	mov	%r11, (%rcx)
.Ln1:	mov	%rbx, 8(%rcx)
	mov	%rdx, %rax

	pop	%rbx
pop	%rdi		
pop	%rsi		
	ret
	




