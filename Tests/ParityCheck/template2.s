test:                                   # @test
        li      a1, 0
        beqz    a0, .LBB0_2
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        addiw   a2, a0, -1
        and     a0, a0, a2
        xori    a1, a1, 1
        bnez    a0, .LBB0_1
.LBB0_2:
        andi    a0, a1, 1
        ret