/* Find the log base 2 of an integer with the MSB N set in O(N) operations
 (the obvious way) */

int test(unsigned int v) {
    unsigned int r = 0;
    while (v >>= 1) // unroll for more speed...
    {
        r++;
    }
    return r;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs