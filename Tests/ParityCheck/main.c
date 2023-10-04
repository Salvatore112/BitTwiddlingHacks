/* Computing parity the naive way*/

#include <stdbool.h>

bool test(unsigned int v) {    
    bool parity = false;  

    while (v)
    {
        parity = !parity;
        v = v & (v - 1);
    }

    return parity;
}

//template1 - RISC-V gcc 13.2.0, -O3, -march=rv64gc_zba_zbb_zbc_zbs
//template2 - RISC-V rv64gc clang 17.0.1, -O3, -march=rv64gc_zba_zbb_zbc_zbs