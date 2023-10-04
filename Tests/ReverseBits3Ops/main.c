/*Reverse the bits in a byte with 3 operations (64-bit multiply and modulus division):*/

unsigned int test(unsigned int b)
{ 
    return (b * 0x0202020202ULL & 0x010884422010ULL) % 1023;;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs