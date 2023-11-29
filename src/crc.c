#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "types.h"

static u8 B_100033A0[0x8]; //.bss
static s32 D_100032E0 = 0; //.data
static u16 B_100033A8[2];


static u16 getcrc(s32 (*arg0)(FILE*), FILE* arg1);

void inittable(u16* arg0) {
    u16 sp6;
    u16 sp4;
    u16 sp2;
    for (sp6 = 0 ;  sp6 < 0x100;  sp6++){
        sp2 = sp6 << 8;
        for(sp4 = 0 ; sp4 < 8 ; sp4++){ 
            sp2 = (sp2 & 0x8000) ? ((sp2 * 2) ^ 0x1021) : (sp2 * 2);
        }
        *arg0++ = sp2;
    }
}

s32 fgetc_rev(FILE* stream) {
    // u8 temp_t3;

    if (D_100032E0 == 0) {
        B_100033A0[0] = fgetc(stream);
        B_100033A0[1] = fgetc(stream);
    }

    #ifdef __sgi
    if (stream->_flag & 0x10) {
        return -1;
    }
   #else
   if  (stream ->_flags & 0x10) {
       return -1;
    } else {
      assert(stream);
    }
#endif
     D_100032E0 ^= 1;
    return B_100033A0[D_100032E0];
}

void nrdc_crc(s32 arg0, FILE *arg1) {
    printf("CRC = 0x%04x\n", getcrc((arg0 == 0 ? fgetc : fgetc_rev), arg1));
}

u16 getcrc(s32 (*arg0)(FILE*), FILE* arg1) {
    u16 sp26 = 0;
    s32 sp20;

#ifdef __sgi
    inittable(&B_100033A8); //duhhhh
#else
    inittable(B_100033A8);
#endif
    while ((sp20 = arg0(arg1)) != -1) {
        sp26 = B_100033A8[(sp26 >> 8) ^ sp20] ^ (sp26 << 8);
    }
    return sp26;
}

