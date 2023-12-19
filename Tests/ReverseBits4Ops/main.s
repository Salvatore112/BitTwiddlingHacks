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
	slli.uw	a5,a0,10
	li	a4,4464640
	add.uw	a0,a0,a5
	addi	a4,a4,529
	slli	a5,a0,20
	add	a5,a0,a5
	slli	a4,a4,13
	addi	a4,a4,272
	slli	a5,a5,1
	and	a5,a5,a4
	slli	a0,a5,8
	add	a0,a0,a5
	slli	a4,a0,16
	add	a0,a0,a4
	slli	a0,a0,8
	add	a0,a0,a5
	srai	a0,a0,32
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (crosstool-NG 1.25.0.212_285915c) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
