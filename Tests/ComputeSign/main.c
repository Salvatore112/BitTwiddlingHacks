/* Compute the sign of an integer */

int test(int v) {    
    return +1 | (v >> (sizeof(int) * 8 - 1));
}

//template1 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs