
























































































	
	
	
	
	



  
  
  







	.text
	.align	5
	.globl	___gmpn_sub_n_coreisbr
	
	
___gmpn_sub_n_coreisbr:

	
	xor	%r8, %r8

Lent:	mov	%ecx, %eax
	shr	$2, %rcx

	test	$1, %al
	jnz	Lbx1

Lbx0:	test	$2, %al
	jnz	Lb10

Lb00:	neg	%r8
	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	sbb	(%rdx), %r8
	sbb	8(%rdx), %r9
	mov	16(%rsi), %r10
	mov	24(%rsi), %r11
	lea	32(%rsi), %rsi
	sbb	16(%rdx), %r10
	sbb	24(%rdx), %r11
	lea	32(%rdx), %rdx
	lea	-16(%rdi), %rdi
	jmp	Llo0

Lb10:	neg	%r8
	mov	(%rsi), %r10
	mov	8(%rsi), %r11
	sbb	0(%rdx), %r10
	sbb	8(%rdx), %r11
	jrcxz	Le2
	mov	16(%rsi), %r8
	mov	24(%rsi), %r9
	lea	16(%rsi), %rsi
	sbb	16(%rdx), %r8
	sbb	24(%rdx), %r9
	lea	16(%rdx), %rdx

	jmp	Llo2

Le2:	mov	%r10, (%rdi)
	mov	%r11, 8(%rdi)
	setc	%al
	
	ret

Lbx1:	test	$2, %al
	jnz	Lb11

Lb01:	neg	%r8
	mov	(%rsi), %r11
	sbb	(%rdx), %r11
	jrcxz	Le1
	mov	8(%rsi), %r8
	mov	16(%rsi), %r9
	lea	8(%rsi), %rsi
	lea	-8(%rdi), %rdi
	sbb	8(%rdx), %r8
	sbb	16(%rdx), %r9
	lea	8(%rdx), %rdx
	jmp	Llo1

Le1:	mov	%r11, (%rdi)
	setc	%al
	
	ret

Lb11:	neg	%r8
	mov	(%rsi), %r9
	sbb	(%rdx), %r9
	mov	8(%rsi), %r10
	mov	16(%rsi), %r11
	lea	24(%rsi), %rsi
	sbb	8(%rdx), %r10
	sbb	16(%rdx), %r11
	lea	24(%rdx), %rdx
	mov	%r9, (%rdi)
	lea	8(%rdi), %rdi
	jrcxz	Lend

	.align	5
Ltop:	mov	(%rsi), %r8
	mov	8(%rsi), %r9
	sbb	(%rdx), %r8
	sbb	8(%rdx), %r9
Llo2:	mov	%r10, (%rdi)
Llo1:	mov	%r11, 8(%rdi)
	mov	16(%rsi), %r10
	mov	24(%rsi), %r11
	lea	32(%rsi), %rsi
	sbb	16(%rdx), %r10
	sbb	24(%rdx), %r11
	lea	32(%rdx), %rdx
Llo0:	mov	%r8, 16(%rdi)
Llo3:	mov	%r9, 24(%rdi)
	lea	32(%rdi), %rdi
	dec	%rcx
	jnz	Ltop

Lend:	mov	%ecx, %eax	
	mov	%r10, (%rdi)
	mov	%r11, 8(%rdi)
	setc	%al
	
	ret
	
	.align	4
	.globl	___gmpn_sub_nc_coreisbr
	
	
___gmpn_sub_nc_coreisbr:

	

	jmp	Lent
	


