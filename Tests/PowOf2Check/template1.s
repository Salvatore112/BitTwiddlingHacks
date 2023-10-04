test:
        addiw   a5,a0,-1
        and     a0,a5,a0
        sext.w  a0,a0
        seqz    a0,a0
        ret