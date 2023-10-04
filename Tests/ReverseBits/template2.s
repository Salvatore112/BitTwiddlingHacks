test:                                   # @test
        li      a2, 2
        li      a1, 31
        bltu    a0, a2, .LBB0_3
        li      a1, 31
        li      a2, 3
        mv      a3, a0
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
        mv      a4, a3
        srliw   a3, a3, 1
        slliw   a0, a0, 1
        bexti   a5, a4, 1
        or      a0, a0, a5
        addiw   a1, a1, -1
        bltu    a2, a4, .LBB0_2
.LBB0_3:
        sllw    a0, a0, a1
        ret