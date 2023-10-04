test:                                   # @test
        zext.w  a0, a0
        lui     a1, 65793
        slli    a1, a1, 5
        addi    a1, a1, 514
        mul     a0, a0, a1
        lui     a1, 33858
        addiw   a1, a1, 529
        slli    a1, a1, 13
        addi    a1, a1, 16
        and     a0, a0, a1
        lui     a1, 4100
        addiw   a1, a1, 17
        bseti   a1, a1, 34
        bseti   a1, a1, 44
        bseti   a1, a1, 54
        mulhu   a1, a0, a1
        slli    a2, a1, 10
        add     a0, a0, a1
        sub     a0, a0, a2
        ret