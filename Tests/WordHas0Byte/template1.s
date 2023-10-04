test:
        li      a5,2139062272
        addi    a5,a5,-129
        and     a4,a0,a5
        addw    a4,a4,a5
        or      a0,a0,a4
        or      a0,a0,a5
        sext.w  a0,a0
        addi    a0,a0,1
        snez    a0,a0
        ret