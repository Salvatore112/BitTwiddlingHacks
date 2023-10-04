/* Compute the maximum (max) of two integers
   without branching */

int test(int x, int y) {
    return x ^ ((x ^ y) & -(x < y));
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs