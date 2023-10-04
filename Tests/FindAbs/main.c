/* Compute the integer absolute value (abs) without branching*/

int test (int v) {
    int const mask = v >> sizeof(int) * 8 - 1;
    return (v + mask) ^ mask;; 
}

//template1 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs