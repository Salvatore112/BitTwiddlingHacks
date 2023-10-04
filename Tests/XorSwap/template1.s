swap:                                   # @swap
        lw      a2, 0(a1)
        lw      a3, 0(a0)
        xor     a2, a2, a3
        sw      a2, 0(a0)
        lw      a3, 0(a1)
        xor     a2, a2, a3
        sw      a2, 0(a1)
        lw      a1, 0(a0)
        xor     a1, a1, a2
        sw      a1, 0(a0)
        ret