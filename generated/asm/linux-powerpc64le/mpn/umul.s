


















































	.abiversion 2


	.globl	__gmpn_umul_ppmm
	.type	__gmpn_umul_ppmm, @function
	.section	".text"
	.align	5
__gmpn_umul_ppmm:



	
	
	

	mulld	0, 4, 5
	mulhdu	4, 4, 5
	std	0, 0(3)
	mr	3, 4

	blr


	.size	__gmpn_umul_ppmm, .-__gmpn_umul_ppmm

	.section .note.GNU-stack,"",@progbits
