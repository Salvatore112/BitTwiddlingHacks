test:
        li      a5,1074790400
        addi    a5,a5,1025
        slli    a5,a5,1
        zext.w  a0,a0
        mul     a0,a0,a5
        li      a5,4464640
        addi    a5,a5,529
        slli    a5,a5,13
        li      a4,269488128
        addi    a5,a5,272
        slli    a4,a4,4
        addi    a4,a4,257
        and     a0,a0,a5
        mul     a0,a0,a4
        srai    a0,a0,32
        ret