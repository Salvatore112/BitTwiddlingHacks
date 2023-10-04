/* Counting bits set (naive way) */

unsigned int test(unsigned int v) {    
    unsigned int c;        

    for (c = 0; v; v >>= 1)
    {
        c += v & 1;
    }

    return c;
}