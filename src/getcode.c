#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "types.h"

//TODO: Get the real size of arrays
int getcode(unsigned int* arg0, char* arg1, char **c) {
    char sp24[0xC]; // 7 + sizeof(".SRB")
    size_t sp20;
    static char initcode[4]; // at least
    static char version[1]; // at least
    
    sp20 = strlen(arg1);
    if ((sp20 < 11) || !(*arg0 & 4)) {
        return -1;
    }
    strcpy(sp24, (arg1 + sp20) - 11);
    strupr(sp24);
    if ((sp24[0] != 'U') || (strcmp(sp24 + 7, ".SRB") != 0)) {
        return -1;
    }
    strncpy(initcode, sp24 + 1, 4);
    strncpy(version, sp24 + 5, 1);
    if (!(*arg0 & 0x200)) {
        c[0] = initcode;
    }
    if (!(*arg0 & 0x400)) {
        c[1] = version;
    }
    *arg0 |= 0x600;
    return 0;
}
