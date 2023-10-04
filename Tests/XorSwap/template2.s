swap:
        lw      a4,0(a1)
        lw      a5,0(a0)
        xor     a5,a5,a4
        sw      a5,0(a0)
        lw      a4,0(a1)
        xor     a5,a5,a4
        sw      a5,0(a1)
        lw      a4,0(a0)
        xor     a5,a5,a4
        sw      a5,0(a0)
        ret