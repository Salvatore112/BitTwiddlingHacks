/*Reverse bits of the unsigned int*/

unsigned int test(unsigned int v)
{ 
    unsigned int r = v; 
    int s = sizeof(v) * 8 - 1; 

    for (v >>= 1; v; v >>= 1)
    {   
        r <<= 1;
        r |= v & 1;
        s--;
    }
    r <<= s;
    return r;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs