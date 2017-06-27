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
	.file	"neon.c"
	.globl	fill_array
	.p2align	2
	.type	fill_array,%function
	.code	32                      @ @fill_array
fill_array:
	.fnstart
@ BB#0:
	sub	sp, sp, #16
	movw	r2, #0
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #8]
	cmp	r0, r1
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #4]
	mov	r2, r1
	ldr	r3, [sp, #12]
	add	r1, r3, r1, lsl #1
	strh	r2, [r1]
	str	r0, [sp]                @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	bx	lr
.Lfunc_end0:
	.size	fill_array, .Lfunc_end0-fill_array
	.cantunwind
	.fnend

	.globl	sum_array
	.p2align	2
	.type	sum_array,%function
	.code	32                      @ @sum_array
sum_array:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #176
	movw	r2, #1
	movw	r3, #4
	str	r0, [r11, #-84]
	str	r1, [sp, #88]
	mov	r0, #0
	strh	r0, [r11, #-58]
	vmov.i32	d16, #0x0
	vstr	d16, [r11, #-80]
	vstr	d16, [r11, #-72]
	vstr	d16, [sp, #80]
	ldr	r0, [sp, #88]
	mov	r1, r3
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	__modsi3
	cmp	r0, #0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	beq	.LBB1_2
@ BB#1:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	movw	r2, #21
	movw	r3, :lower16:.L__func__.sum_array
	movt	r3, :upper16:.L__func__.sum_array
	bl	__assert_fail
	movw	r0, #0
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB1_2:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #88]
	cmp	r0, #0
	beq	.LBB1_6
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r11, #-84]
	vld1.16	{d16}, [r0]
	vstr	d16, [sp, #48]
	vstr	d16, [sp, #40]
	vstr	d16, [sp, #56]
	ldr	r0, [r11, #-84]
	add	r0, r0, #8
	str	r0, [r11, #-84]
	vldr	d16, [sp, #80]
	vldr	d17, [sp, #56]
	vstr	d16, [r11, #-8]
	vstr	d17, [r11, #-16]
	vldr	d16, [r11, #-8]
	vadd.i16	d16, d16, d17
	vstr	d16, [r11, #-24]
	vstr	d16, [sp, #80]
@ BB#5:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #88]
	sub	r0, r0, #4
	str	r0, [sp, #88]
	b	.LBB1_3
.LBB1_6:
	vldr	d16, [sp, #80]
	vstr	d16, [r11, #-32]
	vpaddl.s16	d16, d16
	vstr	d16, [r11, #-40]
	vstr	d16, [sp, #72]
	vstr	d16, [r11, #-48]
	vpaddl.s32	d16, d16
	vstr	d16, [r11, #-56]
	vstr	d16, [sp, #64]
	vstr	d16, [sp, #32]
	vstr	d16, [sp, #24]
	vstr	d16, [sp, #16]
	ldr	r0, [sp, #16]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	sum_array, .Lfunc_end1-sum_array
	.cantunwind
	.fnend

	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #216
	movw	r1, #100
	add	r0, sp, #12
	movw	r2, #0
	str	r2, [r11, #-4]
	bl	fill_array
	movw	r1, #100
	add	r0, sp, #12
	bl	sum_array
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	printf
	movw	r1, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"(size % 4) == 0"
	.size	.L.str, 16

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"neon.c"
	.size	.L.str.1, 7

	.type	.L__func__.sum_array,%object @ @__func__.sum_array
.L__func__.sum_array:
	.asciz	"sum_array"
	.size	.L__func__.sum_array, 10

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Sum was %d\n"
	.size	.L.str.2, 12


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
