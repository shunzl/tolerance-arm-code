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
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"vector.bc"
	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #236
	bic	sp, sp, #15
	mov	r0, #10485760
	add	r3, sp, #64
	add	r12, sp, #192
	orr	r0, r0, #1073741824
	str	r0, [sp, #108]
	mov	r0, #18874368
	orr	r0, r0, #1073741824
	ldr	r4, [sp, #108]
	str	r0, [sp, #104]
	ldr	r0, [sp, #108]
	str	r4, [sp, #220]
	str	r4, [sp, #216]
	str	r4, [sp, #212]
	str	r4, [sp, #60]
	str	r4, [sp, #56]
	str	r4, [sp, #52]
	str	r4, [sp, #232]
	str	r4, [sp, #208]
	str	r4, [sp, #48]
	str	r0, [sp, #124]
	str	r0, [sp, #120]
	str	r0, [sp, #116]
	str	r0, [sp, #76]
	str	r0, [sp, #72]
	str	r0, [sp, #68]
	str	r0, [sp, #140]
	str	r0, [sp, #112]
	str	r0, [sp, #64]
	ldm	r3, {r0, r1, r2, r3}
	stm	r12, {r0, r1, r2, r3}
	mov	r1, r4
	str	r4, [sp, #188]
	str	r4, [sp, #184]
	str	r4, [sp, #180]
	str	r4, [sp, #176]
	ldr	r0, [sp, #204]
	ldr	r8, [sp, #192]
	ldr	r7, [sp, #196]
	ldr	r6, [sp, #200]
	bl	__addsf3
	mov	r5, r0
	mov	r0, r6
	mov	r1, r4
	str	r5, [sp, #44]
	bl	__addsf3
	mov	r6, r0
	mov	r0, r7
	mov	r1, r4
	str	r6, [sp, #40]
	bl	__addsf3
	mov	r7, r0
	mov	r0, r8
	mov	r1, r4
	str	r7, [sp, #36]
	bl	__addsf3
	add	r1, sp, #80
	str	r5, [sp, #156]
	str	r6, [sp, #152]
	str	r7, [sp, #148]
	str	r0, [sp, #32]
	str	r0, [sp, #144]
	str	r1, [sp, #168]
	ldr	r1, [sp, #168]
	stm	r1, {r0, r7}
	str	r6, [r1, #8]
	str	r5, [r1, #12]
	ldr	r0, [sp, #88]
	ldr	r4, [sp, #80]
	ldr	r10, [sp, #84]
	ldr	r6, [sp, #92]
	bl	__extendsfdf2
	mov	r9, r0
	mov	r0, r6
	mov	r8, r1
	bl	__extendsfdf2
	mov	r6, r0
	mov	r0, r4
	mov	r7, r1
	bl	__extendsfdf2
	mov	r4, r0
	mov	r0, r10
	mov	r5, r1
	bl	__extendsfdf2
	stm	sp, {r1, r9}
	str	r8, [sp, #8]
	str	r6, [sp, #12]
	mov	r3, r0
	str	r7, [sp, #16]
	adr	r0, .LCPI0_0
	mov	r1, r4
	mov	r2, r5
	bl	printf
	mov	r0, #0
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
	.p2align	2
@ BB#1:
.LCPI0_0:
.L.str:
	.asciz	"output:%f,%f,%f,%f\000"
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend


	.ident	"clang version 4.0.0 (trunk 282832)"
	.section	".note.GNU-stack","",%progbits
