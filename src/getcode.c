#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "types.h"

static char B_100035B0[4]; // at least
static char B_100035B6[1]; // at least

#ifdef __sgi
s32 getcode(s32* arg0, s32 arg1, u8 **c) {
    u8 sp24[0xC]; // 7 + sizeof(".SRB")
    size_t sp20;
    
    
    sp20 = strlen(arg1);
    if ((sp20 < 11) || !(*arg0 & 4)) {
        return -1;
    }
    strcpy(sp24, (arg1 + sp20) - 11);
    strupr(sp24);
    if ((sp24[0] != 'U') || (strcmp(sp24 + 7, ".SRB") != 0)) {
        return -1;
    }
    strncpy(B_100035B0, sp24 + 1, 4);
    strncpy(B_100035B6, sp24 + 5, 1);
    if (!(*arg0 & 0x200)) {
        c[0] = B_100035B0;
    }
    if (!(*arg0 & 0x400)) {
        c[1] = B_100035B6;
    }
    *arg0 |= 0x600;
    return 0;
}
#else
s32 getcode(s32* arg0, const char* arg1, char** c) {
    char sp24[0xC]; // 7 + sizeof(".SRB")
    size_t sp20;

    sp20 = strlen(arg1);
    if ((sp20 < 11) || !(*arg0 & 4)) {
        return -1;
    }
    strcpy(sp24, (arg1 + sp20) - 11);
    strupr(sp24);
    if ((sp24[0] != 'U') || (strcmp(sp24 + 7, ".SRB") != 0)) {
        return -1;
    }
    strncpy(B_100035B0, sp24 + 1, 4);
    strncpy(B_100035B6, sp24 + 5, 1);
    if (!(*arg0 & 0x200)) {
        c[0] = B_100035B0;
    }
    if (!(*arg0 & 0x400)) {
        c[1] = B_100035B6;
    }
    *arg0 |= 0x600;
    return 0;
    }
#endif
