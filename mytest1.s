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
	.file	"mytest1.ll"
	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #120
	bfc	sp, #0, #4
	movw	r0, #3
	vmov.i32	q8, #0xa
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	mov	r2, #10
	str	r2, [sp, #60]
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x5
	vadd.i32	q8, q8, q9
	add	r1, sp, #32
	vst1.64	{d16, d17}, [r1]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r1, r3
	add	r3, r3, r12
	add	r2, r2, #5
	mul	r0, r2, r0
	str	r2, [sp, #92]
	cmp	r3, r0
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #16]           @ 4-byte Spill
	beq	.LBB0_5
@ BB#1:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_3
@ BB#2:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #92]
	b	.LBB0_4
.LBB0_3:
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #92]
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	ldr	r1, [sp, #92]
	str	r1, [sp, #28]
	ldr	r1, [sp, #28]
	bl	printf
	movw	r1, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
