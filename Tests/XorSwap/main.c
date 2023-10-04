/* This is a trick to exchange the values of the variables
 a and b without using extra space for a temporary variable. */

void test(int* a, int* b)
{
    *a ^= *b;
    *b ^= *a;
    *a ^= *b;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs