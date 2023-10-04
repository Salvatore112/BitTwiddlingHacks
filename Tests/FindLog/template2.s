test:                                   # @test
        li      a1, 2
        bgeu    a0, a1, .LBB0_2
        li      a0, 0
        ret
.LBB0_2:
        li      a1, 0
        li      a2, 3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
        mv      a3, a0
        srliw   a0, a0, 1
        addiw   a1, a1, 1
        bltu    a2, a3, .LBB0_3
        mv      a0, a1
        ret