#include <stdio.h>
#include <stdlib.h>
#ifdef __GNUC__
#include <assert.h>
#endif
#include "types.h"

//Global Declaration
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
    static char buf[0x8]; //.bss
    static int pos = 0; //.data
    if (pos == 0) {
        buf[0] = fgetc(stream);
        buf[1] = fgetc(stream);
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
     pos ^= 1;
    return buf[pos];
}

void nrdc_crc(s32 arg0, FILE *arg1) {
    printf("CRC = 0x%04x\n", getcrc((arg0 == 0 ? fgetc : fgetc_rev), arg1));
}

u16 getcrc(s32 (*arg0)(FILE*), FILE* arg1) {
    u16 sp26 = 0;
    s32 sp20;
    static u16 crctable[2];

#ifdef __sgi
    inittable(&crctable); //duhhhh
#else
    inittable(crctable);
#endif
    while ((sp20 = arg0(arg1)) != -1) {
        sp26 = crctable[(sp26 >> 8) ^ sp20] ^ (sp26 << 8);
    }
    return sp26;
}

