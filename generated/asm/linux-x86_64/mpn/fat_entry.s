
























































	.text







	.align	8, 0x90
	.globl	__gmpn_add_n
	.type	__gmpn_add_n,@function
	
__gmpn_add_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*0(%rax)

	.size	__gmpn_add_n,.-__gmpn_add_n

	.align	8, 0x90
	.globl	__gmpn_addlsh1_n
	.type	__gmpn_addlsh1_n,@function
	
__gmpn_addlsh1_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*8(%rax)

	.size	__gmpn_addlsh1_n,.-__gmpn_addlsh1_n

	.align	8, 0x90
	.globl	__gmpn_addlsh2_n
	.type	__gmpn_addlsh2_n,@function
	
__gmpn_addlsh2_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*16(%rax)

	.size	__gmpn_addlsh2_n,.-__gmpn_addlsh2_n

	.align	8, 0x90
	.globl	__gmpn_addmul_1
	.type	__gmpn_addmul_1,@function
	
__gmpn_addmul_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*24(%rax)

	.size	__gmpn_addmul_1,.-__gmpn_addmul_1

	.align	8, 0x90
	.globl	__gmpn_addmul_2
	.type	__gmpn_addmul_2,@function
	
__gmpn_addmul_2:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*32(%rax)

	.size	__gmpn_addmul_2,.-__gmpn_addmul_2

	.align	8, 0x90
	.globl	__gmpn_bdiv_dbm1c
	.type	__gmpn_bdiv_dbm1c,@function
	
__gmpn_bdiv_dbm1c:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*40(%rax)

	.size	__gmpn_bdiv_dbm1c,.-__gmpn_bdiv_dbm1c

	.align	8, 0x90
	.globl	__gmpn_cnd_add_n
	.type	__gmpn_cnd_add_n,@function
	
__gmpn_cnd_add_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*48(%rax)

	.size	__gmpn_cnd_add_n,.-__gmpn_cnd_add_n

	.align	8, 0x90
	.globl	__gmpn_cnd_sub_n
	.type	__gmpn_cnd_sub_n,@function
	
__gmpn_cnd_sub_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*56(%rax)

	.size	__gmpn_cnd_sub_n,.-__gmpn_cnd_sub_n

	.align	8, 0x90
	.globl	__gmpn_com
	.type	__gmpn_com,@function
	
__gmpn_com:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*64(%rax)

	.size	__gmpn_com,.-__gmpn_com

	.align	8, 0x90
	.globl	__gmpn_copyd
	.type	__gmpn_copyd,@function
	
__gmpn_copyd:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*72(%rax)

	.size	__gmpn_copyd,.-__gmpn_copyd

	.align	8, 0x90
	.globl	__gmpn_copyi
	.type	__gmpn_copyi,@function
	
__gmpn_copyi:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*80(%rax)

	.size	__gmpn_copyi,.-__gmpn_copyi

	.align	8, 0x90
	.globl	__gmpn_divexact_1
	.type	__gmpn_divexact_1,@function
	
__gmpn_divexact_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*88(%rax)

	.size	__gmpn_divexact_1,.-__gmpn_divexact_1

	.align	8, 0x90
	.globl	__gmpn_divrem_1
	.type	__gmpn_divrem_1,@function
	
__gmpn_divrem_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*96(%rax)

	.size	__gmpn_divrem_1,.-__gmpn_divrem_1

	.align	8, 0x90
	.globl	__gmpn_gcd_11
	.type	__gmpn_gcd_11,@function
	
__gmpn_gcd_11:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*104(%rax)

	.size	__gmpn_gcd_11,.-__gmpn_gcd_11

	.align	8, 0x90
	.globl	__gmpn_lshift
	.type	__gmpn_lshift,@function
	
__gmpn_lshift:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*112(%rax)

	.size	__gmpn_lshift,.-__gmpn_lshift

	.align	8, 0x90
	.globl	__gmpn_lshiftc
	.type	__gmpn_lshiftc,@function
	
__gmpn_lshiftc:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*120(%rax)

	.size	__gmpn_lshiftc,.-__gmpn_lshiftc

	.align	8, 0x90
	.globl	__gmpn_mod_1
	.type	__gmpn_mod_1,@function
	
__gmpn_mod_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*128(%rax)

	.size	__gmpn_mod_1,.-__gmpn_mod_1

	.align	8, 0x90
	.globl	__gmpn_mod_1_1p
	.type	__gmpn_mod_1_1p,@function
	
__gmpn_mod_1_1p:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*136(%rax)

	.size	__gmpn_mod_1_1p,.-__gmpn_mod_1_1p

	.align	8, 0x90
	.globl	__gmpn_mod_1_1p_cps
	.type	__gmpn_mod_1_1p_cps,@function
	
__gmpn_mod_1_1p_cps:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*144(%rax)

	.size	__gmpn_mod_1_1p_cps,.-__gmpn_mod_1_1p_cps

	.align	8, 0x90
	.globl	__gmpn_mod_1s_2p
	.type	__gmpn_mod_1s_2p,@function
	
__gmpn_mod_1s_2p:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*152(%rax)

	.size	__gmpn_mod_1s_2p,.-__gmpn_mod_1s_2p

	.align	8, 0x90
	.globl	__gmpn_mod_1s_2p_cps
	.type	__gmpn_mod_1s_2p_cps,@function
	
__gmpn_mod_1s_2p_cps:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*160(%rax)

	.size	__gmpn_mod_1s_2p_cps,.-__gmpn_mod_1s_2p_cps

	.align	8, 0x90
	.globl	__gmpn_mod_1s_4p
	.type	__gmpn_mod_1s_4p,@function
	
__gmpn_mod_1s_4p:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*168(%rax)

	.size	__gmpn_mod_1s_4p,.-__gmpn_mod_1s_4p

	.align	8, 0x90
	.globl	__gmpn_mod_1s_4p_cps
	.type	__gmpn_mod_1s_4p_cps,@function
	
__gmpn_mod_1s_4p_cps:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*176(%rax)

	.size	__gmpn_mod_1s_4p_cps,.-__gmpn_mod_1s_4p_cps

	.align	8, 0x90
	.globl	__gmpn_mod_34lsub1
	.type	__gmpn_mod_34lsub1,@function
	
__gmpn_mod_34lsub1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*184(%rax)

	.size	__gmpn_mod_34lsub1,.-__gmpn_mod_34lsub1

	.align	8, 0x90
	.globl	__gmpn_modexact_1c_odd
	.type	__gmpn_modexact_1c_odd,@function
	
__gmpn_modexact_1c_odd:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*192(%rax)

	.size	__gmpn_modexact_1c_odd,.-__gmpn_modexact_1c_odd

	.align	8, 0x90
	.globl	__gmpn_mul_1
	.type	__gmpn_mul_1,@function
	
__gmpn_mul_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*200(%rax)

	.size	__gmpn_mul_1,.-__gmpn_mul_1

	.align	8, 0x90
	.globl	__gmpn_mul_basecase
	.type	__gmpn_mul_basecase,@function
	
__gmpn_mul_basecase:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*208(%rax)

	.size	__gmpn_mul_basecase,.-__gmpn_mul_basecase

	.align	8, 0x90
	.globl	__gmpn_mullo_basecase
	.type	__gmpn_mullo_basecase,@function
	
__gmpn_mullo_basecase:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*216(%rax)

	.size	__gmpn_mullo_basecase,.-__gmpn_mullo_basecase

	.align	8, 0x90
	.globl	__gmpn_preinv_divrem_1
	.type	__gmpn_preinv_divrem_1,@function
	
__gmpn_preinv_divrem_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*224(%rax)

	.size	__gmpn_preinv_divrem_1,.-__gmpn_preinv_divrem_1

	.align	8, 0x90
	.globl	__gmpn_preinv_mod_1
	.type	__gmpn_preinv_mod_1,@function
	
__gmpn_preinv_mod_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*232(%rax)

	.size	__gmpn_preinv_mod_1,.-__gmpn_preinv_mod_1

	.align	8, 0x90
	.globl	__gmpn_redc_1
	.type	__gmpn_redc_1,@function
	
__gmpn_redc_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*240(%rax)

	.size	__gmpn_redc_1,.-__gmpn_redc_1

	.align	8, 0x90
	.globl	__gmpn_redc_2
	.type	__gmpn_redc_2,@function
	
__gmpn_redc_2:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*248(%rax)

	.size	__gmpn_redc_2,.-__gmpn_redc_2

	.align	8, 0x90
	.globl	__gmpn_rshift
	.type	__gmpn_rshift,@function
	
__gmpn_rshift:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*256(%rax)

	.size	__gmpn_rshift,.-__gmpn_rshift

	.align	8, 0x90
	.globl	__gmpn_sqr_basecase
	.type	__gmpn_sqr_basecase,@function
	
__gmpn_sqr_basecase:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*264(%rax)

	.size	__gmpn_sqr_basecase,.-__gmpn_sqr_basecase

	.align	8, 0x90
	.globl	__gmpn_sub_n
	.type	__gmpn_sub_n,@function
	
__gmpn_sub_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*272(%rax)

	.size	__gmpn_sub_n,.-__gmpn_sub_n

	.align	8, 0x90
	.globl	__gmpn_sublsh1_n
	.type	__gmpn_sublsh1_n,@function
	
__gmpn_sublsh1_n:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*280(%rax)

	.size	__gmpn_sublsh1_n,.-__gmpn_sublsh1_n

	.align	8, 0x90
	.globl	__gmpn_submul_1
	.type	__gmpn_submul_1,@function
	
__gmpn_submul_1:

	lea	__gmpn_cpuvec(%rip), %rax

	jmp	*288(%rax)

	.size	__gmpn_submul_1,.-__gmpn_submul_1









	.globl	__gmpn_add_n_init
	.type	__gmpn_add_n_init,@function
	
__gmpn_add_n_init:

	mov	$0, %al
	jmp	.Lfat_init
	.size	__gmpn_add_n_init,.-__gmpn_add_n_init

	.globl	__gmpn_addlsh1_n_init
	.type	__gmpn_addlsh1_n_init,@function
	
__gmpn_addlsh1_n_init:

	mov	$1, %al
	jmp	.Lfat_init
	.size	__gmpn_addlsh1_n_init,.-__gmpn_addlsh1_n_init

	.globl	__gmpn_addlsh2_n_init
	.type	__gmpn_addlsh2_n_init,@function
	
__gmpn_addlsh2_n_init:

	mov	$2, %al
	jmp	.Lfat_init
	.size	__gmpn_addlsh2_n_init,.-__gmpn_addlsh2_n_init

	.globl	__gmpn_addmul_1_init
	.type	__gmpn_addmul_1_init,@function
	
__gmpn_addmul_1_init:

	mov	$3, %al
	jmp	.Lfat_init
	.size	__gmpn_addmul_1_init,.-__gmpn_addmul_1_init

	.globl	__gmpn_addmul_2_init
	.type	__gmpn_addmul_2_init,@function
	
__gmpn_addmul_2_init:

	mov	$4, %al
	jmp	.Lfat_init
	.size	__gmpn_addmul_2_init,.-__gmpn_addmul_2_init

	.globl	__gmpn_bdiv_dbm1c_init
	.type	__gmpn_bdiv_dbm1c_init,@function
	
__gmpn_bdiv_dbm1c_init:

	mov	$5, %al
	jmp	.Lfat_init
	.size	__gmpn_bdiv_dbm1c_init,.-__gmpn_bdiv_dbm1c_init

	.globl	__gmpn_cnd_add_n_init
	.type	__gmpn_cnd_add_n_init,@function
	
__gmpn_cnd_add_n_init:

	mov	$6, %al
	jmp	.Lfat_init
	.size	__gmpn_cnd_add_n_init,.-__gmpn_cnd_add_n_init

	.globl	__gmpn_cnd_sub_n_init
	.type	__gmpn_cnd_sub_n_init,@function
	
__gmpn_cnd_sub_n_init:

	mov	$7, %al
	jmp	.Lfat_init
	.size	__gmpn_cnd_sub_n_init,.-__gmpn_cnd_sub_n_init

	.globl	__gmpn_com_init
	.type	__gmpn_com_init,@function
	
__gmpn_com_init:

	mov	$8, %al
	jmp	.Lfat_init
	.size	__gmpn_com_init,.-__gmpn_com_init

	.globl	__gmpn_copyd_init
	.type	__gmpn_copyd_init,@function
	
__gmpn_copyd_init:

	mov	$9, %al
	jmp	.Lfat_init
	.size	__gmpn_copyd_init,.-__gmpn_copyd_init

	.globl	__gmpn_copyi_init
	.type	__gmpn_copyi_init,@function
	
__gmpn_copyi_init:

	mov	$10, %al
	jmp	.Lfat_init
	.size	__gmpn_copyi_init,.-__gmpn_copyi_init

	.globl	__gmpn_divexact_1_init
	.type	__gmpn_divexact_1_init,@function
	
__gmpn_divexact_1_init:

	mov	$11, %al
	jmp	.Lfat_init
	.size	__gmpn_divexact_1_init,.-__gmpn_divexact_1_init

	.globl	__gmpn_divrem_1_init
	.type	__gmpn_divrem_1_init,@function
	
__gmpn_divrem_1_init:

	mov	$12, %al
	jmp	.Lfat_init
	.size	__gmpn_divrem_1_init,.-__gmpn_divrem_1_init

	.globl	__gmpn_gcd_11_init
	.type	__gmpn_gcd_11_init,@function
	
__gmpn_gcd_11_init:

	mov	$13, %al
	jmp	.Lfat_init
	.size	__gmpn_gcd_11_init,.-__gmpn_gcd_11_init

	.globl	__gmpn_lshift_init
	.type	__gmpn_lshift_init,@function
	
__gmpn_lshift_init:

	mov	$14, %al
	jmp	.Lfat_init
	.size	__gmpn_lshift_init,.-__gmpn_lshift_init

	.globl	__gmpn_lshiftc_init
	.type	__gmpn_lshiftc_init,@function
	
__gmpn_lshiftc_init:

	mov	$15, %al
	jmp	.Lfat_init
	.size	__gmpn_lshiftc_init,.-__gmpn_lshiftc_init

	.globl	__gmpn_mod_1_init
	.type	__gmpn_mod_1_init,@function
	
__gmpn_mod_1_init:

	mov	$16, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1_init,.-__gmpn_mod_1_init

	.globl	__gmpn_mod_1_1p_init
	.type	__gmpn_mod_1_1p_init,@function
	
__gmpn_mod_1_1p_init:

	mov	$17, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1_1p_init,.-__gmpn_mod_1_1p_init

	.globl	__gmpn_mod_1_1p_cps_init
	.type	__gmpn_mod_1_1p_cps_init,@function
	
__gmpn_mod_1_1p_cps_init:

	mov	$18, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1_1p_cps_init,.-__gmpn_mod_1_1p_cps_init

	.globl	__gmpn_mod_1s_2p_init
	.type	__gmpn_mod_1s_2p_init,@function
	
__gmpn_mod_1s_2p_init:

	mov	$19, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1s_2p_init,.-__gmpn_mod_1s_2p_init

	.globl	__gmpn_mod_1s_2p_cps_init
	.type	__gmpn_mod_1s_2p_cps_init,@function
	
__gmpn_mod_1s_2p_cps_init:

	mov	$20, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1s_2p_cps_init,.-__gmpn_mod_1s_2p_cps_init

	.globl	__gmpn_mod_1s_4p_init
	.type	__gmpn_mod_1s_4p_init,@function
	
__gmpn_mod_1s_4p_init:

	mov	$21, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1s_4p_init,.-__gmpn_mod_1s_4p_init

	.globl	__gmpn_mod_1s_4p_cps_init
	.type	__gmpn_mod_1s_4p_cps_init,@function
	
__gmpn_mod_1s_4p_cps_init:

	mov	$22, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_1s_4p_cps_init,.-__gmpn_mod_1s_4p_cps_init

	.globl	__gmpn_mod_34lsub1_init
	.type	__gmpn_mod_34lsub1_init,@function
	
__gmpn_mod_34lsub1_init:

	mov	$23, %al
	jmp	.Lfat_init
	.size	__gmpn_mod_34lsub1_init,.-__gmpn_mod_34lsub1_init

	.globl	__gmpn_modexact_1c_odd_init
	.type	__gmpn_modexact_1c_odd_init,@function
	
__gmpn_modexact_1c_odd_init:

	mov	$24, %al
	jmp	.Lfat_init
	.size	__gmpn_modexact_1c_odd_init,.-__gmpn_modexact_1c_odd_init

	.globl	__gmpn_mul_1_init
	.type	__gmpn_mul_1_init,@function
	
__gmpn_mul_1_init:

	mov	$25, %al
	jmp	.Lfat_init
	.size	__gmpn_mul_1_init,.-__gmpn_mul_1_init

	.globl	__gmpn_mul_basecase_init
	.type	__gmpn_mul_basecase_init,@function
	
__gmpn_mul_basecase_init:

	mov	$26, %al
	jmp	.Lfat_init
	.size	__gmpn_mul_basecase_init,.-__gmpn_mul_basecase_init

	.globl	__gmpn_mullo_basecase_init
	.type	__gmpn_mullo_basecase_init,@function
	
__gmpn_mullo_basecase_init:

	mov	$27, %al
	jmp	.Lfat_init
	.size	__gmpn_mullo_basecase_init,.-__gmpn_mullo_basecase_init

	.globl	__gmpn_preinv_divrem_1_init
	.type	__gmpn_preinv_divrem_1_init,@function
	
__gmpn_preinv_divrem_1_init:

	mov	$28, %al
	jmp	.Lfat_init
	.size	__gmpn_preinv_divrem_1_init,.-__gmpn_preinv_divrem_1_init

	.globl	__gmpn_preinv_mod_1_init
	.type	__gmpn_preinv_mod_1_init,@function
	
__gmpn_preinv_mod_1_init:

	mov	$29, %al
	jmp	.Lfat_init
	.size	__gmpn_preinv_mod_1_init,.-__gmpn_preinv_mod_1_init

	.globl	__gmpn_redc_1_init
	.type	__gmpn_redc_1_init,@function
	
__gmpn_redc_1_init:

	mov	$30, %al
	jmp	.Lfat_init
	.size	__gmpn_redc_1_init,.-__gmpn_redc_1_init

	.globl	__gmpn_redc_2_init
	.type	__gmpn_redc_2_init,@function
	
__gmpn_redc_2_init:

	mov	$31, %al
	jmp	.Lfat_init
	.size	__gmpn_redc_2_init,.-__gmpn_redc_2_init

	.globl	__gmpn_rshift_init
	.type	__gmpn_rshift_init,@function
	
__gmpn_rshift_init:

	mov	$32, %al
	jmp	.Lfat_init
	.size	__gmpn_rshift_init,.-__gmpn_rshift_init

	.globl	__gmpn_sqr_basecase_init
	.type	__gmpn_sqr_basecase_init,@function
	
__gmpn_sqr_basecase_init:

	mov	$33, %al
	jmp	.Lfat_init
	.size	__gmpn_sqr_basecase_init,.-__gmpn_sqr_basecase_init

	.globl	__gmpn_sub_n_init
	.type	__gmpn_sub_n_init,@function
	
__gmpn_sub_n_init:

	mov	$34, %al
	jmp	.Lfat_init
	.size	__gmpn_sub_n_init,.-__gmpn_sub_n_init

	.globl	__gmpn_sublsh1_n_init
	.type	__gmpn_sublsh1_n_init,@function
	
__gmpn_sublsh1_n_init:

	mov	$35, %al
	jmp	.Lfat_init
	.size	__gmpn_sublsh1_n_init,.-__gmpn_sublsh1_n_init

	.globl	__gmpn_submul_1_init
	.type	__gmpn_submul_1_init,@function
	
__gmpn_submul_1_init:

	mov	$36, %al
	jmp	.Lfat_init
	.size	__gmpn_submul_1_init,.-__gmpn_submul_1_init



.Lfat_init:
	

	movzbl	%al, %eax
	push	%rdi	
	push	%rsi	
	push	%rdx
	push	%rcx
	push	%r8
	push	%r9
	push	%rax

	call	__gmpn_cpuvec_init


	pop	%rax
	pop	%r9
	pop	%r8
	pop	%rcx
	pop	%rdx
	pop	%rsi	
	pop	%rdi	

	lea	__gmpn_cpuvec(%rip), %r10

	jmp	*(%r10,%rax,8)












	.globl	__gmpn_cpuid
	.type	__gmpn_cpuid,@function
	
__gmpn_cpuid:

	
	mov	%rbx, %r8
	mov	%esi, %eax
	xor	%ecx, %ecx
	cpuid
	mov	%ebx, (%rdi)
	mov	%edx, 4(%rdi)
	mov	%ecx, 8(%rdi)
	mov	%r8, %rbx
	
	ret
	.size	__gmpn_cpuid,.-__gmpn_cpuid
	.section .note.GNU-stack,"",@progbits
