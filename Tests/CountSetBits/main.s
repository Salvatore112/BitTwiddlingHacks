	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p1_f2p2_d2p2_zicsr2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	mv	a5,a0
	li	a0,0
	beq	a5,zero,.L4
.L3:
	andi	a4,a5,1
	srliw	a5,a5,1
	addw	a0,a4,a0
	bne	a5,zero,.L3
	ret
.L4:
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (crosstool-NG 1.25.0.212_285915c) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
