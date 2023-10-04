test:                                   # @test
        addiw   a1, a0, -1
        and     a0, a0, a1
        seqz    a0, a0
        ret