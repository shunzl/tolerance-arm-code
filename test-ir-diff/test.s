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
	.file	"test.ll"
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
	vmov	d16, r2, r3
	vmov	d17, r0, r1
	vmov.f64	d18, d17
	vmov.f64	d19, d16
	add	r0, sp, #64
	vst1.64	{d18, d19}, [r0:128]
	mov	r1, #42
	str	r1, [sp, #60]
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #32
	vst1.64	{d18, d19}, [r0:128]
	ldr	r0, [sp, #60]
	vmov.f64	d16, d18
	vmov.32	d16[0], r0
	vmov.f64	d18, d16
	add	r0, sp, #16
	vst1.64	{d18, d19}, [r0:128]
	mov	r0, sp
	vst1.64	{d18, d19}, [r0:128]
	vmov.f64	d16, d18
	vmov	r0, r1, d16
	vmov.f64	d16, d19
	vmov	r2, r3, d16
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
	.cantunwind
	.fnend


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
