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
	.file	"vector_dup.c"
	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	sub	sp, sp, #64
	movw	r0, #0
	mov	r1, #0
	str	r1, [sp, #36]
	mov	r1, #1
	strh	r1, [sp, #62]
	vmov.i16	d16, #0x1
	vstr	d16, [sp, #40]
	vstr	d16, [sp, #48]
	vstr	d16, [sp, #24]
	vstr	d16, [sp, #8]
	vmov.u16	r1, d16[0]
	strh	r1, [sp, #6]
	ldrh	r1, [sp, #6]
	strh	r1, [sp, #4]
	ldrsh	r1, [sp, #4]
	str	r1, [sp, #20]
	add	sp, sp, #64
	bx	lr
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
