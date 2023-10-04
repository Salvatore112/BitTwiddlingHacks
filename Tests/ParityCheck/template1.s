test:
        mv      a5,a0
        li      a0,0
        beq     a5,zero,.L4
.L3:
        addiw   a4,a5,-1
        and     a5,a5,a4
        sext.w  a5,a5
        xori    a0,a0,1
        bne     a5,zero,.L3
        ret
.L4:
        ret