
























































	.text







	.align	8, 0x90
	.globl	__gmpn_add_n
	
	.def	__gmpn_add_n
	.scl	2
	.type	32
	.endef
__gmpn_add_n:

	jmp	*0+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_addlsh1_n
	
	.def	__gmpn_addlsh1_n
	.scl	2
	.type	32
	.endef
__gmpn_addlsh1_n:

	jmp	*8+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_addlsh2_n
	
	.def	__gmpn_addlsh2_n
	.scl	2
	.type	32
	.endef
__gmpn_addlsh2_n:

	jmp	*16+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_addmul_1
	
	.def	__gmpn_addmul_1
	.scl	2
	.type	32
	.endef
__gmpn_addmul_1:

	jmp	*24+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_addmul_2
	
	.def	__gmpn_addmul_2
	.scl	2
	.type	32
	.endef
__gmpn_addmul_2:

	jmp	*32+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_bdiv_dbm1c
	
	.def	__gmpn_bdiv_dbm1c
	.scl	2
	.type	32
	.endef
__gmpn_bdiv_dbm1c:

	jmp	*40+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_cnd_add_n
	
	.def	__gmpn_cnd_add_n
	.scl	2
	.type	32
	.endef
__gmpn_cnd_add_n:

	jmp	*48+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_cnd_sub_n
	
	.def	__gmpn_cnd_sub_n
	.scl	2
	.type	32
	.endef
__gmpn_cnd_sub_n:

	jmp	*56+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_com
	
	.def	__gmpn_com
	.scl	2
	.type	32
	.endef
__gmpn_com:

	jmp	*64+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_copyd
	
	.def	__gmpn_copyd
	.scl	2
	.type	32
	.endef
__gmpn_copyd:

	jmp	*72+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_copyi
	
	.def	__gmpn_copyi
	.scl	2
	.type	32
	.endef
__gmpn_copyi:

	jmp	*80+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_divexact_1
	
	.def	__gmpn_divexact_1
	.scl	2
	.type	32
	.endef
__gmpn_divexact_1:

	jmp	*88+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_divrem_1
	
	.def	__gmpn_divrem_1
	.scl	2
	.type	32
	.endef
__gmpn_divrem_1:

	jmp	*96+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_gcd_11
	
	.def	__gmpn_gcd_11
	.scl	2
	.type	32
	.endef
__gmpn_gcd_11:

	jmp	*104+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_lshift
	
	.def	__gmpn_lshift
	.scl	2
	.type	32
	.endef
__gmpn_lshift:

	jmp	*112+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_lshiftc
	
	.def	__gmpn_lshiftc
	.scl	2
	.type	32
	.endef
__gmpn_lshiftc:

	jmp	*120+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1
	
	.def	__gmpn_mod_1
	.scl	2
	.type	32
	.endef
__gmpn_mod_1:

	jmp	*128+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1_1p
	
	.def	__gmpn_mod_1_1p
	.scl	2
	.type	32
	.endef
__gmpn_mod_1_1p:

	jmp	*136+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1_1p_cps
	
	.def	__gmpn_mod_1_1p_cps
	.scl	2
	.type	32
	.endef
__gmpn_mod_1_1p_cps:

	jmp	*144+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1s_2p
	
	.def	__gmpn_mod_1s_2p
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_2p:

	jmp	*152+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1s_2p_cps
	
	.def	__gmpn_mod_1s_2p_cps
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_2p_cps:

	jmp	*160+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1s_4p
	
	.def	__gmpn_mod_1s_4p
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_4p:

	jmp	*168+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_1s_4p_cps
	
	.def	__gmpn_mod_1s_4p_cps
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_4p_cps:

	jmp	*176+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mod_34lsub1
	
	.def	__gmpn_mod_34lsub1
	.scl	2
	.type	32
	.endef
__gmpn_mod_34lsub1:

	jmp	*184+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_modexact_1c_odd
	
	.def	__gmpn_modexact_1c_odd
	.scl	2
	.type	32
	.endef
__gmpn_modexact_1c_odd:

	jmp	*192+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mul_1
	
	.def	__gmpn_mul_1
	.scl	2
	.type	32
	.endef
__gmpn_mul_1:

	jmp	*200+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mul_basecase
	
	.def	__gmpn_mul_basecase
	.scl	2
	.type	32
	.endef
__gmpn_mul_basecase:

	jmp	*208+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_mullo_basecase
	
	.def	__gmpn_mullo_basecase
	.scl	2
	.type	32
	.endef
__gmpn_mullo_basecase:

	jmp	*216+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_preinv_divrem_1
	
	.def	__gmpn_preinv_divrem_1
	.scl	2
	.type	32
	.endef
__gmpn_preinv_divrem_1:

	jmp	*224+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_preinv_mod_1
	
	.def	__gmpn_preinv_mod_1
	.scl	2
	.type	32
	.endef
__gmpn_preinv_mod_1:

	jmp	*232+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_redc_1
	
	.def	__gmpn_redc_1
	.scl	2
	.type	32
	.endef
__gmpn_redc_1:

	jmp	*240+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_redc_2
	
	.def	__gmpn_redc_2
	.scl	2
	.type	32
	.endef
__gmpn_redc_2:

	jmp	*248+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_rshift
	
	.def	__gmpn_rshift
	.scl	2
	.type	32
	.endef
__gmpn_rshift:

	jmp	*256+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_sqr_basecase
	
	.def	__gmpn_sqr_basecase
	.scl	2
	.type	32
	.endef
__gmpn_sqr_basecase:

	jmp	*264+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_sub_n
	
	.def	__gmpn_sub_n
	.scl	2
	.type	32
	.endef
__gmpn_sub_n:

	jmp	*272+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_sublsh1_n
	
	.def	__gmpn_sublsh1_n
	.scl	2
	.type	32
	.endef
__gmpn_sublsh1_n:

	jmp	*280+__gmpn_cpuvec(%rip)
	

	.align	8, 0x90
	.globl	__gmpn_submul_1
	
	.def	__gmpn_submul_1
	.scl	2
	.type	32
	.endef
__gmpn_submul_1:

	jmp	*288+__gmpn_cpuvec(%rip)
	









	.globl	__gmpn_add_n_init
	
	.def	__gmpn_add_n_init
	.scl	2
	.type	32
	.endef
__gmpn_add_n_init:

	mov	$0, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_addlsh1_n_init
	
	.def	__gmpn_addlsh1_n_init
	.scl	2
	.type	32
	.endef
__gmpn_addlsh1_n_init:

	mov	$1, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_addlsh2_n_init
	
	.def	__gmpn_addlsh2_n_init
	.scl	2
	.type	32
	.endef
__gmpn_addlsh2_n_init:

	mov	$2, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_addmul_1_init
	
	.def	__gmpn_addmul_1_init
	.scl	2
	.type	32
	.endef
__gmpn_addmul_1_init:

	mov	$3, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_addmul_2_init
	
	.def	__gmpn_addmul_2_init
	.scl	2
	.type	32
	.endef
__gmpn_addmul_2_init:

	mov	$4, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_bdiv_dbm1c_init
	
	.def	__gmpn_bdiv_dbm1c_init
	.scl	2
	.type	32
	.endef
__gmpn_bdiv_dbm1c_init:

	mov	$5, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_cnd_add_n_init
	
	.def	__gmpn_cnd_add_n_init
	.scl	2
	.type	32
	.endef
__gmpn_cnd_add_n_init:

	mov	$6, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_cnd_sub_n_init
	
	.def	__gmpn_cnd_sub_n_init
	.scl	2
	.type	32
	.endef
__gmpn_cnd_sub_n_init:

	mov	$7, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_com_init
	
	.def	__gmpn_com_init
	.scl	2
	.type	32
	.endef
__gmpn_com_init:

	mov	$8, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_copyd_init
	
	.def	__gmpn_copyd_init
	.scl	2
	.type	32
	.endef
__gmpn_copyd_init:

	mov	$9, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_copyi_init
	
	.def	__gmpn_copyi_init
	.scl	2
	.type	32
	.endef
__gmpn_copyi_init:

	mov	$10, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_divexact_1_init
	
	.def	__gmpn_divexact_1_init
	.scl	2
	.type	32
	.endef
__gmpn_divexact_1_init:

	mov	$11, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_divrem_1_init
	
	.def	__gmpn_divrem_1_init
	.scl	2
	.type	32
	.endef
__gmpn_divrem_1_init:

	mov	$12, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_gcd_11_init
	
	.def	__gmpn_gcd_11_init
	.scl	2
	.type	32
	.endef
__gmpn_gcd_11_init:

	mov	$13, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_lshift_init
	
	.def	__gmpn_lshift_init
	.scl	2
	.type	32
	.endef
__gmpn_lshift_init:

	mov	$14, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_lshiftc_init
	
	.def	__gmpn_lshiftc_init
	.scl	2
	.type	32
	.endef
__gmpn_lshiftc_init:

	mov	$15, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1_init
	
	.def	__gmpn_mod_1_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1_init:

	mov	$16, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1_1p_init
	
	.def	__gmpn_mod_1_1p_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1_1p_init:

	mov	$17, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1_1p_cps_init
	
	.def	__gmpn_mod_1_1p_cps_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1_1p_cps_init:

	mov	$18, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1s_2p_init
	
	.def	__gmpn_mod_1s_2p_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_2p_init:

	mov	$19, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1s_2p_cps_init
	
	.def	__gmpn_mod_1s_2p_cps_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_2p_cps_init:

	mov	$20, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1s_4p_init
	
	.def	__gmpn_mod_1s_4p_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_4p_init:

	mov	$21, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_1s_4p_cps_init
	
	.def	__gmpn_mod_1s_4p_cps_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_1s_4p_cps_init:

	mov	$22, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mod_34lsub1_init
	
	.def	__gmpn_mod_34lsub1_init
	.scl	2
	.type	32
	.endef
__gmpn_mod_34lsub1_init:

	mov	$23, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_modexact_1c_odd_init
	
	.def	__gmpn_modexact_1c_odd_init
	.scl	2
	.type	32
	.endef
__gmpn_modexact_1c_odd_init:

	mov	$24, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mul_1_init
	
	.def	__gmpn_mul_1_init
	.scl	2
	.type	32
	.endef
__gmpn_mul_1_init:

	mov	$25, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mul_basecase_init
	
	.def	__gmpn_mul_basecase_init
	.scl	2
	.type	32
	.endef
__gmpn_mul_basecase_init:

	mov	$26, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_mullo_basecase_init
	
	.def	__gmpn_mullo_basecase_init
	.scl	2
	.type	32
	.endef
__gmpn_mullo_basecase_init:

	mov	$27, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_preinv_divrem_1_init
	
	.def	__gmpn_preinv_divrem_1_init
	.scl	2
	.type	32
	.endef
__gmpn_preinv_divrem_1_init:

	mov	$28, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_preinv_mod_1_init
	
	.def	__gmpn_preinv_mod_1_init
	.scl	2
	.type	32
	.endef
__gmpn_preinv_mod_1_init:

	mov	$29, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_redc_1_init
	
	.def	__gmpn_redc_1_init
	.scl	2
	.type	32
	.endef
__gmpn_redc_1_init:

	mov	$30, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_redc_2_init
	
	.def	__gmpn_redc_2_init
	.scl	2
	.type	32
	.endef
__gmpn_redc_2_init:

	mov	$31, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_rshift_init
	
	.def	__gmpn_rshift_init
	.scl	2
	.type	32
	.endef
__gmpn_rshift_init:

	mov	$32, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_sqr_basecase_init
	
	.def	__gmpn_sqr_basecase_init
	.scl	2
	.type	32
	.endef
__gmpn_sqr_basecase_init:

	mov	$33, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_sub_n_init
	
	.def	__gmpn_sub_n_init
	.scl	2
	.type	32
	.endef
__gmpn_sub_n_init:

	mov	$34, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_sublsh1_n_init
	
	.def	__gmpn_sublsh1_n_init
	.scl	2
	.type	32
	.endef
__gmpn_sublsh1_n_init:

	mov	$35, %al
	jmp	.Lfat_init
	

	.globl	__gmpn_submul_1_init
	
	.def	__gmpn_submul_1_init
	.scl	2
	.type	32
	.endef
__gmpn_submul_1_init:

	mov	$36, %al
	jmp	.Lfat_init
	



.Lfat_init:
	

	movzbl	%al, %eax


	push	%rdx
	push	%rcx
	push	%r8
	push	%r9
	push	%rax
	sub	$32, %rsp	
	call	__gmpn_cpuvec_init
	add	$32, %rsp	
	pop	%rax
	pop	%r9
	pop	%r8
	pop	%rcx
	pop	%rdx



	
	lea	__gmpn_cpuvec(%rip), %r10

	jmp	*(%r10,%rax,8)












	.globl	__gmpn_cpuid
	
	.def	__gmpn_cpuid
	.scl	2
	.type	32
	.endef
__gmpn_cpuid:

	push	%rdi
	push	%rsi
	mov	%rcx, %rdi
	mov	%rdx, %rsi

	mov	%rbx, %r8
	mov	%esi, %eax
	xor	%ecx, %ecx
	cpuid
	mov	%ebx, (%rdi)
	mov	%edx, 4(%rdi)
	mov	%ecx, 8(%rdi)
	mov	%r8, %rbx
	pop	%rsi
	pop	%rdi
	ret
	
