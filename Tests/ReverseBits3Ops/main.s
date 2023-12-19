	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p1_f2p2_d2p2_zicsr2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__umoddi3
	.globl	__moddi3
	.align	2
	.globl	test
	.type	test, @function
test:
.LFB0:
	.cfi_startproc
	zext.w	a4,a0
	slli.uw	a0,a0,8
	add	a0,a0,a4
	slli	a5,a0,16
	add	a0,a0,a5
	li	a5,138682368
	slli	a0,a0,8
	addi	a5,a5,529
	add	a0,a0,a4
	slli	a5,a5,13
	addi	a5,a5,16
	slli	a0,a0,1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	li	a1,1023
	and	a0,a0,a5
	sd	ra,8(sp)
	.cfi_offset 1, -8
	call	__umoddi3
	ld	ra,8(sp)
	.cfi_restore 1
	sext.w	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (crosstool-NG 1.25.0.212_285915c) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
