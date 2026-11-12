












































































	.text
	.align	32, 0x90
	.globl	__gmpn_rshift_pentium4
	.type	__gmpn_rshift_pentium4,@function
	
__gmpn_rshift_pentium4:

	
	mov	(%rsi), %rax
	movd	%ecx, %mm4
	neg	%ecx			
	and	$63, %ecx
	movd	%ecx, %mm5

	lea	-8(%rsi,%rdx,8), %rsi
	lea	-8(%rdi,%rdx,8), %rdi
	lea	1(%rdx), %r8d
	neg	%rdx

	shl	%cl, %rax		

	and	$3, %r8d
	je	.Lrol			

	dec	%r8d
	jne	.L1

	movq	8(%rsi,%rdx,8), %mm2
	psrlq	%mm4, %mm2
	movq	16(%rsi,%rdx,8), %mm0
	psllq	%mm5, %mm0
	por	%mm0, %mm2
	movq	%mm2, 8(%rdi,%rdx,8)
	inc	%rdx
	jmp	.Lrol

.L1:	dec	%r8d
	je	.L1x			

	movq	8(%rsi,%rdx,8), %mm2
	psrlq	%mm4, %mm2
	movq	16(%rsi,%rdx,8), %mm0
	psllq	%mm5, %mm0
	por	%mm0, %mm2
	movq	%mm2, 8(%rdi,%rdx,8)
	inc	%rdx
.L1x:
	cmp	$-1, %rdx
	je	.Last
	movq	8(%rsi,%rdx,8), %mm2
	psrlq	%mm4, %mm2
	movq	16(%rsi,%rdx,8), %mm3
	psrlq	%mm4, %mm3
	movq	16(%rsi,%rdx,8), %mm0
	movq	24(%rsi,%rdx,8), %mm1
	psllq	%mm5, %mm0
	por	%mm0, %mm2
	psllq	%mm5, %mm1
	por	%mm1, %mm3
	movq	%mm2, 8(%rdi,%rdx,8)
	movq	%mm3, 16(%rdi,%rdx,8)
	add	$2, %rdx

.Lrol:	movq	8(%rsi,%rdx,8), %mm2
	psrlq	%mm4, %mm2
	movq	16(%rsi,%rdx,8), %mm3
	psrlq	%mm4, %mm3

	add	$4, %rdx			
	jb	.Lend			
	.align	32, 0x90
.Ltop:
	
	movq	-16(%rsi,%rdx,8), %mm0
	movq	-8(%rsi,%rdx,8), %mm1
	psllq	%mm5, %mm0
	por	%mm0, %mm2
	psllq	%mm5, %mm1
	movq	(%rsi,%rdx,8), %mm0
	por	%mm1, %mm3
	movq	8(%rsi,%rdx,8), %mm1
	movq	%mm2, -24(%rdi,%rdx,8)
	movq	%mm3, -16(%rdi,%rdx,8)
	
	psllq	%mm5, %mm0
	psllq	%mm5, %mm1

	
	movq	-8(%rsi,%rdx,8), %mm2
	movq	(%rsi,%rdx,8), %mm3
	psrlq	%mm4, %mm2
	por	%mm2, %mm0
	psrlq	%mm4, %mm3
	movq	8(%rsi,%rdx,8), %mm2
	por	%mm3, %mm1
	movq	16(%rsi,%rdx,8), %mm3
	movq	%mm0, -8(%rdi,%rdx,8)
	movq	%mm1, (%rdi,%rdx,8)
	
	add	$4, %rdx
	psrlq	%mm4, %mm2
	psrlq	%mm4, %mm3

	jae	.Ltop			
.Lend:
	movq	-8(%rsi), %mm0
	psllq	%mm5, %mm0
	por	%mm0, %mm2
	movq	(%rsi), %mm1
	psllq	%mm5, %mm1
	por	%mm1, %mm3
	movq	%mm2, -16(%rdi)
	movq	%mm3, -8(%rdi)

.Last:	movq	(%rsi), %mm2
	psrlq	%mm4, %mm2
	movq	%mm2, (%rdi)
	emms
	
	ret
	.size	__gmpn_rshift_pentium4,.-__gmpn_rshift_pentium4


	.section .note.GNU-stack,"",@progbits
