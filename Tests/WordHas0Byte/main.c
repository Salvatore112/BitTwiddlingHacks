#include <stdbool.h>

bool test(unsigned int v) { // 32-bit word to check if any 8-bit byte in it is 0
    return ~((((v & 0x7F7F7F7F) + 0x7F7F7F7F) | v) | 0x7F7F7F7F);
}
