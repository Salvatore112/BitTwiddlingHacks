test:                                   # @test
        lui     a1, 522232
        addiw   a1, a1, -129
        and     a2, a0, a1
        addw    a1, a1, a2
        or      a0, a0, a1
        lui     a1, 526344
        addiw   a1, a1, 128
        and     a0, a0, a1
        xor     a0, a0, a1
        snez    a0, a0
        ret