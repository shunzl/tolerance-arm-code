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
	.file	"neon.ll"
	.globl	fill_array
	.p2align	2
	.type	fill_array,%function
	.code	32                      @ @fill_array
fill_array:
	.fnstart
@ BB#0:
	sub	sp, sp, #12
	str	r0, [sp, #8]
	mov	r0, #0
	str	r1, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	cmp	r1, r0
	addge	sp, sp, #12
	bxge	lr
	ldr	r0, [sp]
	ldr	r1, [sp, #8]
	add	r1, r1, r0, lsl #1
	strh	r0, [r1]
	ldr	r0, [sp]
	add	r0, r0, #1
	b	.LBB0_1
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
	sub	sp, sp, #160
	str	r0, [sp, #76]
	mov	r0, #0
	str	r1, [sp, #72]
	vmov.i32	d16, #0x0
	strh	r0, [r11, #-58]
	ldr	r0, [sp, #72]
	vstr	d16, [sp, #80]
	vstr	d16, [r11, #-72]
	asr	r1, r0, #31
	vstr	d16, [sp, #64]
	add	r1, r0, r1, lsr #30
	bfc	r1, #0, #2
	subs	r0, r0, r1
	beq	.LBB1_3
@ BB#1:
	adr	r0, .LCPI1_0
	adr	r1, .LCPI1_1
	adr	r3, .LCPI1_2
	mov	r2, #21
	bl	__assert_fail
	b	.LBB1_3
.LBB1_2:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #76]
	vld1.16	{d16}, [r0]
	vstr	d16, [sp, #40]
	vstr	d16, [sp, #32]
	vstr	d16, [sp, #24]
	vldr	d16, [sp, #64]
	ldr	r0, [sp, #76]
	vstr	d16, [r11, #-8]
	vldr	d17, [sp, #40]
	add	r0, r0, #8
	vldr	d16, [r11, #-8]
	vadd.i16	d16, d16, d17
	str	r0, [sp, #76]
	ldr	r0, [sp, #72]
	vstr	d17, [r11, #-16]
	sub	r0, r0, #4
	vstr	d16, [r11, #-24]
	vstr	d16, [sp, #64]
	str	r0, [sp, #72]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #72]
	cmp	r0, #0
	bne	.LBB1_2
@ BB#4:
	vldr	d16, [sp, #64]
	vpaddl.s16	d17, d16
	vstr	d16, [r11, #-32]
	vpaddl.s32	d16, d17
	vstr	d17, [r11, #-40]
	vstr	d17, [sp, #56]
	vstr	d17, [r11, #-48]
	vstr	d16, [sp]
	vstr	d16, [r11, #-56]
	vstr	d16, [sp, #48]
	vstr	d16, [sp, #16]
	vstr	d16, [sp, #8]
	ldr	r0, [sp]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ BB#5:
.LCPI1_0:
.L.str:
	.asciz	"(size % 4) == 0"
.LCPI1_1:
.L.str.1:
	.asciz	"neon.c\000"
.LCPI1_2:
.L__func__.sum_array:
	.asciz	"sum_array\000\000"
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
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #208
	add	r4, sp, #4
	mov	r0, #0
	str	r0, [r11, #-12]
	mov	r1, #100
	mov	r0, r4
	bl	fill_array
	mov	r0, r4
	mov	r1, #100
	bl	sum_array
	mov	r1, r0
	adr	r0, .LCPI2_0
	bl	printf
	mov	r0, #0
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
	.p2align	2
@ BB#1:
.LCPI2_0:
.L.str.2:
	.asciz	"Sum was %d\n"
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cantunwind
	.fnend


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
