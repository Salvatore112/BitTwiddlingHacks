test:
        li      a5,269488128
        slli    a5,a5,5
        addi    a5,a5,514
        zext.w  a0,a0
        mul     a0,a0,a5
        li      a5,138682368
        addi    a5,a5,529
        slli    a5,a5,13
        addi    a5,a5,16
        and     a0,a0,a5
        li      a5,1023
        remu    a0,a0,a5
        ret