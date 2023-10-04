/* Interleave of x and y bits the obvious way */

unsigned int test(unsigned short x, unsigned short y) {  
    unsigned int z = 0; 

    for (int i = 0; i < sizeof(x) * 8; i++) // unroll for more speed...
    {
        z |= (x & 1U << i) << i | (y & 1U << i) << (i + 1);
    }

    return z;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs