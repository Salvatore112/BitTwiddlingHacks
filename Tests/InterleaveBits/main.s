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
	andi	a0,a1,1
	andi	a4,a5,1
	andi	a3,a1,2
	slliw	a0,a0,1
	or	a0,a0,a4
	slliw	a3,a3,2
	andi	a4,a1,4
	or	a0,a0,a3
	slliw	a4,a4,3
	andi	a3,a1,8
	or	a0,a0,a4
	slliw	a3,a3,4
	andi	a4,a1,16
	or	a0,a0,a3
	slliw	a4,a4,5
	andi	a3,a1,32
	or	a0,a0,a4
	slliw	a3,a3,6
	andi	a4,a1,64
	or	a0,a0,a3
	slliw	a4,a4,7
	andi	a3,a1,128
	or	a0,a0,a4
	slliw	a3,a3,8
	andi	a4,a1,256
	or	a0,a0,a3
	slliw	a4,a4,9
	andi	a3,a1,512
	bseti	a7,zero,11
	or	a0,a0,a4
	slliw	a3,a3,10
	andi	a4,a1,1024
	and	a2,a1,a7
	li	a6,4096
	or	a0,a0,a3
	slliw	a4,a4,11
	and	t1,a1,a6
	li	a3,8192
	or	a0,a0,a4
	slliw	a2,a2,12
	and	t3,a1,a3
	li	a4,16384
	or	a0,a0,a2
	slliw	t1,t1,13
	li	a2,-32768
	or	a0,a0,t1
	slliw	t3,t3,14
	and	t1,a1,a4
	or	a0,a0,t3
	slliw	t1,t1,15
	and	a1,a1,a2
	or	a0,a0,t1
	slliw	a1,a1,16
	andi	t1,a5,2
	or	a0,a0,a1
	slliw	t1,t1,1
	andi	a1,a5,4
	or	a0,a0,t1
	slliw	a1,a1,2
	andi	t1,a5,8
	or	a0,a0,a1
	slliw	t1,t1,3
	andi	a1,a5,16
	or	a0,a0,t1
	slliw	a1,a1,4
	andi	t1,a5,32
	or	a0,a0,a1
	slliw	t1,t1,5
	andi	a1,a5,64
	or	a0,a0,t1
	slliw	a1,a1,6
	andi	t1,a5,128
	or	a0,a0,a1
	slliw	t1,t1,7
	andi	a1,a5,256
	or	a0,a0,t1
	slliw	a1,a1,8
	andi	t1,a5,512
	or	a0,a0,a1
	slliw	t1,t1,9
	andi	a1,a5,1024
	or	a0,a0,t1
	slliw	a1,a1,10
	and	a7,a5,a7
	or	a0,a0,a1
	slliw	a7,a7,11
	and	a6,a5,a6
	or	a0,a0,a7
	slliw	a6,a6,12
	and	a3,a5,a3
	or	a0,a0,a6
	slliw	a3,a3,13
	and	a4,a5,a4
	or	a0,a0,a3
	slliw	a4,a4,14
	and	a5,a5,a2
	or	a0,a0,a4
	slliw	a5,a5,15
	or	a0,a0,a5
	sext.w	a0,a0
	ret
	.cfi_endproc
.LFE0:
	.size	test, .-test
	.ident	"GCC: (crosstool-NG 1.25.0.212_285915c) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
