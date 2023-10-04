test:
        srliw   a5,a0,1
        srliw   a3,a0,1
        beq     a5,zero,.L4
.L3:
        slliw   a0,a0,1
        andi    a4,a5,1
        or      a4,a4,a0
        srli    a5,a5,1
        sext.w  a0,a4
        bne     a5,zero,.L3
        clzw    a5,a3
        addiw   a5,a5,-1
        sllw    a0,a0,a5
        ret
.L4:
        li      a5,31
        sllw    a0,a0,a5
        ret