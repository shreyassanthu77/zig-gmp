

































































































   
   
   
   





      
      







		 		 		 		 		 		 

	.text
	.align	16, 0x90
	.globl	__gmpn_submul_1_pentium4
	
	.def	__gmpn_submul_1_pentium4
	.scl	2
	.type	32
	.endef
__gmpn_submul_1_pentium4:

push	%rsi		
push	%rdi		
mov	%rdx, %rsi	

	mov	(%rsi), %rax		
	push	%rbx
	
	mov	%r8, %rbx		
	mul	%r9



	and	$3, %ebx
	lea	-16(%rcx,%r8,8), %rcx
	jz	.Lb0
	cmp	$2, %ebx
	jb	.Lb1
	jz	.Lb2

.Lb3:	mov	$0, %r11d
	mov	%rax, %rbx
	mov	$0, %edi
	mov	8(%rsi), %rax
	mov	%rdx, %r10
	lea	(%rsi,%r8,8), %rsi
	not	%r8
	jmp	.LL3

.Lb0:	mov	$0, %r10d
	mov	%rax, %r11
	mov	%rdx, %rbx
	mov	8(%rsi), %rax
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	jmp	.LL0

.Lb1:	cmp	$1, %r8
	jz	.Ln1
	mov	%rax, %rdi
	mov	8(%rsi), %rax
	mov	%rdx, %r11
	mov	$0, %ebx
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	inc	%r8
	jmp	.LL1

.Lb2:	mov	$0, %ebx
	mov	%rax, %r10
	mov	%rdx, %rdi
	mov	8(%rsi), %rax
	mov	$0, %r11d
	lea	(%rsi,%r8,8), %rsi
	neg	%r8
	add	$2, %r8
	jns	.Lend

	.align	32, 0x90
.Ltop:	mul	%r9
	sub	%r10, (%rcx,%r8,8)
	adc	%rax, %rdi
	mov	(%rsi,%r8,8), %rax
	adc	%rdx, %r11
.LL1:	mul	%r9
	mov	$0, %r10d
	sub	%rdi, 8(%rcx,%r8,8)
	adc	%rax, %r11
	adc	%rdx, %rbx
	mov	8(%rsi,%r8,8), %rax
.LL0:	mul	%r9
	sub	%r11, 16(%rcx,%r8,8)
	mov	$0, %r11d
	adc	%rax, %rbx
	mov	$0, %edi
	mov	16(%rsi,%r8,8), %rax
	adc	%rdx, %r10
.LL3:	mul	%r9
	sub	%rbx, 24(%rcx,%r8,8)
	mov	$0, %ebx
	adc	%rax, %r10
	adc	%rdx, %rdi
	mov	24(%rsi,%r8,8), %rax
	add	$4, %r8
	js	.Ltop

.Lend:	mul	%r9
	sub	%r10, (%rcx)
	adc	%rdi, %rax
	adc	%r11, %rdx
.Ln1:	sub	%rax, 8(%rcx)
	adc	$0, %rdx
	mov	%rdx, %rax

	pop	%rbx
pop	%rdi		
pop	%rsi		
	ret
	




