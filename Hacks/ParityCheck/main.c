/* Bit hack that checks if an integer is odd or even.
   It exploits the fact that if the last significant bit is 1
   then the number is odd.*/

#include <stdio.h>

int main(void) {
    int x = 5;
    if ((x & 1) == 0) {
        // x is even
    }
    else {
        // x is odd
    }
}

/*Desirable bitmanip code:
    
*/