test:                                   # @test
        andi    a2, a0, 1
        slli    a3, a1, 1
        andi    a3, a3, 2
        or      a2, a2, a3
        slli    a3, a0, 1
        andi    a3, a3, 4
        slli    a4, a1, 2
        andi    a4, a4, 8
        or      a3, a3, a4
        or      a2, a2, a3
        slli    a3, a0, 2
        andi    a3, a3, 16
        slli    a4, a1, 3
        andi    a4, a4, 32
        or      a3, a3, a4
        slli    a4, a0, 3
        andi    a4, a4, 64
        slli    a5, a1, 4
        andi    a5, a5, 128
        or      a3, a3, a5
        or      a2, a2, a3
        slli    a3, a0, 4
        andi    a3, a3, 256
        slli    a5, a1, 5
        andi    a5, a5, 512
        or      a4, a4, a5
        or      a3, a3, a4
        slli    a4, a0, 5
        andi    a4, a4, 1024
        andi    a5, a1, 32
        slli    a5, a5, 6
        or      a3, a3, a5
        or      a2, a2, a3
        andi    a3, a0, 64
        slli    a3, a3, 6
        andi    a5, a1, 64
        slli    a5, a5, 7
        or      a4, a4, a5
        or      a3, a3, a4
        andi    a4, a0, 128
        slli    a4, a4, 7
        andi    a5, a1, 128
        slli    a5, a5, 8
        or      a3, a3, a5
        or      a3, a3, a4
        or      a2, a2, a3
        andi    a3, a0, 256
        slli    a3, a3, 8
        andi    a4, a1, 256
        slli    a4, a4, 9
        or      a3, a3, a4
        andi    a4, a0, 512
        slli    a4, a4, 9
        andi    a5, a1, 512
        slli    a5, a5, 10
        or      a3, a3, a5
        or      a3, a3, a4
        andi    a4, a0, 1024
        slli    a4, a4, 10
        andi    a5, a1, 1024
        slli    a5, a5, 11
        or      a3, a3, a5
        or      a3, a3, a4
        or      a6, a3, a2
        slli    a3, a0, 11
        lui     a4, 1024
        and     a3, a3, a4
        slli    a4, a1, 12
        lui     a5, 2048
        and     a4, a4, a5
        or      a3, a3, a4
        slli    a4, a0, 12
        lui     a5, 4096
        and     a4, a4, a5
        slli    a5, a1, 13
        lui     a2, 8192
        and     a2, a2, a5
        or      a2, a2, a3
        or      a2, a2, a4
        slli    a3, a0, 13
        lui     a4, 16384
        and     a3, a3, a4
        slli    a4, a1, 14
        lui     a5, 32768
        and     a4, a4, a5
        or      a2, a2, a4
        or      a2, a2, a3
        slliw   a3, a0, 14
        lui     a4, 65536
        and     a3, a3, a4
        slliw   a4, a1, 15
        lui     a5, 131072
        and     a4, a4, a5
        or      a2, a2, a4
        or      a2, a2, a6
        slliw   a0, a0, 15
        lui     a4, 262144
        and     a0, a0, a4
        srli    a1, a1, 15
        slli    a1, a1, 31
        or      a1, a1, a3
        or      a0, a0, a1
        or      a0, a0, a2
        sext.w  a0, a0
        ret