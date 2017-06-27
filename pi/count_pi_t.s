	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"count_pi_t.ll"
	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r6, r10, r11, lr}
	add	r11, sp, #8
	vpush	{d8, d9}
	sub	sp, sp, #320
	bfc	sp, #0, #4
	mov	r6, sp
	add	r0, r6, #44
	vldr	s0, .LCPI0_0
	vmov.f32	s2, #2.000000e+00
	vmov.f32	s4, #1.000000e+00
	movw	r1, #0
	str	r1, [r0, #192]
	vstr	s4, [r0, #160]
	vstr	s0, [r0, #128]
	vstr	s4, [r0, #96]
	vstr	s4, [r0, #64]
	vstr	s2, [r0, #32]
	vstr	s0, [r0]
	str	r0, [r6, #28]           @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vldr	s0, [r0, #96]
	vcvt.f64.f32	d17, s0
	vabs.f64	d17, d17
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	blt	.LBB0_8
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	vmov.f32	s0, #3.000000e+00
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vldr	s2, [r0, #96]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r1, r6, #144
	vst1.64	{d18, d19}, [r1:128]
	vldr	s6, [r0, #128]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r2, r6, #176
	vst1.64	{d18, d19}, [r2:128]
	vld1.64	{d20, d21}, [r1:128]
	vadd.f32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	vadd.f32	s2, s6, s2
	vstr	s2, [r0, #128]
	vldr	s2, [r0, #64]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r2, r6, #112
	vst1.64	{d18, d19}, [r2:128]
	vldr	s6, [r0, #32]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r3, r6, #80
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d20, d21}, [r2:128]
	vadd.f32	q9, q10, q9
	vst1.64	{d18, d19}, [r2]
	vadd.f32	s2, s2, s6
	vstr	s2, [r0, #64]
	vldr	s2, [r0]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r3, r6, #48
	vst1.64	{d18, d19}, [r3:128]
	vldr	s6, [r0, #160]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r12, r6, #208
	vst1.64	{d18, d19}, [r12:128]
	vld1.64	{d20, d21}, [r3:128]
	vsub.f32	q9, q10, q9
	vst1.64	{d18, d19}, [r12]
	vsub.f32	s2, s2, s6
	vstr	s2, [r0, #160]
	vldr	s6, [r0, #64]
	vld1.64	{d18, d19}, [r12:128]
	vld1.64	{d20, d21}, [r2:128]
	vorr	q2, q10, q10
	vmov.f32	s12, s11
	vorr	q4, q9, q9
	vmov.f32	s14, s19
	vdiv.f32	s12, s14, s12
	vmov.f32	s14, s10
	vmov.f32	s1, s18
	vdiv.f32	s14, s1, s14
	vmov.f32	s1, s9
	vmov.f32	s3, s17
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s8
	vmov.f32	s7, s16
	vdiv.f32	s3, s7, s3
	vmov.f32	s8, s3
	vmov.f32	s9, s1
	vmov.f32	s10, s14
	vmov.f32	s11, s12
	vst1.64	{d4, d5}, [r1]
	vmov.f32	s12, s8
	vmov.f32	s14, s9
	vmov.f32	s1, s10
	vadd.f32	s14, s12, s14
	vadd.f32	s14, s14, s1
	vdiv.f32	s2, s2, s6
	vmul.f32	s0, s2, s0
	vstr	s2, [r0, #256]
	vcmpe.f32	s14, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [r6, #24]           @ 4-byte Spill
	vstr	s14, [r6, #20]          @ 4-byte Spill
	vstr	s12, [r6, #16]          @ 4-byte Spill
	beq	.LBB0_7
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r6, #20]           @ 4-byte Reload
	vldr	s4, [r6, #16]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_5
@ BB#4:                                 @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [r6, #16]           @ 4-byte Reload
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vstr	s0, [r0, #256]
	b	.LBB0_6
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [r6, #24]           @ 4-byte Reload
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vstr	s0, [r0, #256]
.LBB0_6:                                @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vldr	s0, [r0, #256]
	vstr	s0, [r0, #96]
	b	.LBB0_1
.LBB0_8:
	vmov.f32	s0, #3.000000e+00
	vmov.f32	s2, #4.000000e+00
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vldr	s4, [r0, #128]
	mov	r1, sp
	sub	r2, r1, #8
	mov	sp, r2
	mov	r2, sp
	sub	r2, r2, #16
	bfc	r2, #0, #4
	mov	sp, r2
	movw	r3, #0
	movt	r3, #16512
	str	r3, [r1, #-8]
	vmov.f32	q8, #4.000000e+00
	vst1.32	{d16, d17}, [r2]
	add	r1, r6, #176
	vld1.64	{d18, d19}, [r1:128]
	vmul.f32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	vorr	q2, q8, q8
	vmov.f32	s6, s8
	vmov.f32	s12, s9
	vmov.f32	s14, s10
	vadd.f32	s12, s6, s12
	vadd.f32	s12, s12, s14
	vmul.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	vstr	s2, [r0, #224]
	vcmpe.f32	s12, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [r6, #12]           @ 4-byte Spill
	vstr	s12, [r6, #8]           @ 4-byte Spill
	vstr	s6, [r6, #4]            @ 4-byte Spill
	beq	.LBB0_13
@ BB#9:
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r6, #8]            @ 4-byte Reload
	vldr	s4, [r6, #4]            @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_11
@ BB#10:
	vldr	s0, [r6, #4]            @ 4-byte Reload
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vstr	s0, [r0, #224]
	b	.LBB0_12
.LBB0_11:
	vldr	s0, [r6, #12]           @ 4-byte Reload
	ldr	r0, [r6, #28]           @ 4-byte Reload
	vstr	s0, [r0, #224]
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	ldr	r1, [r6, #28]           @ 4-byte Reload
	vldr	s0, [r1, #224]
	vstr	s0, [r1, #128]
	vldr	s0, [r1, #128]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	bl	printf
	movw	r1, #0
	str	r0, [r6]                @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #24
	vpop	{d8, d9}
	pop	{r6, r10, r11, pc}
	.p2align	3
@ BB#14:
.LCPI0_1:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_0:
	.long	0                       @ float 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"pi:%.6f\n"
	.size	.L.str, 9


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
