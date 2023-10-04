test:
        srliw   a5,a0,1
        srliw   a0,a0,1
        beq     a5,zero,.L3
        li      a5,32
        clzw    a0,a0
        subw    a0,a5,a0
        ret
.L3:
        li      a0,0
        ret