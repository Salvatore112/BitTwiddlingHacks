test:                                   # @test
        slli    a0, a0, 32
        lui     a1, 786688
        addiw   a1, a1, 1025
        slli    a1, a1, 33
        mulhu   a0, a0, a1
        lui     a1, 1090
        addiw   a1, a1, 529
        slli    a1, a1, 13
        addi    a1, a1, 272
        and     a0, a0, a1
        lui     a1, 65793
        slli    a1, a1, 4
        addi    a1, a1, 257
        mul     a0, a0, a1
        srai    a0, a0, 32
        ret