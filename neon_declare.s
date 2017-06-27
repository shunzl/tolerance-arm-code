	.text
	.file	"neon_declare.c"
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   // @main
// BB#0:
	sub	sp, sp, #32             // =32
	mov	 w8, wzr
	mov	 w0, w8
	add	sp, sp, #32             // =32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
