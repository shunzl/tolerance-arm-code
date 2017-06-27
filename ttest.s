	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
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
	.file	"ttest.ll"
	.globl	f
	.p2align	2
	.type	f,%function
	.code	32                      @ @f
f:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #88
	bfc	sp, #0, #4
	vmov	d17, r2, r3
	add	r12, sp, #16
	vmov	d16, r0, r1
	add	r0, sp, #64
	mov	r1, #42
	vst1.64	{d16, d17}, [r0:128]
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0:128]
	add	r0, sp, #60
	str	r1, [sp, #60]
	vld1.32	{d16[0]}, [r0:32]
	vmov	r0, r1, d16
	vst1.64	{d16, d17}, [r12:128]
	mov	r12, sp
	vmov	r2, r3, d17
	vst1.64	{d16, d17}, [r12:128]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
	.cantunwind
	.fnend


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
