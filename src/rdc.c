#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include "types.h"
#define __USE_XOPEN

static char B_10003600[0x20];
static char B_10003620[0x20];

//func_00401E70
void dump(char *code) {
    s32 sp24;

    printf("ROM ADDR");

    for(sp24 = 0; sp24 < 0x10 ; sp24++) {
        printf(" +%x", sp24);
    }

    printf("\n%08lx", (long)0x20);

    for(sp24 = 0 ; sp24  < 0x10 ; sp24++) {
        printf(" %02x", code[sp24]);
    }

    printf("\n%08lx", (long)0x30);

    for(sp24 = 0x10 ; sp24  < 0x20 ; sp24++) {
        printf(" %02x", code[sp24]);
    }
}

//func_00402018
s32 check_modify_title(char* arg0) {
    s32 character;
    s32 sp0;
    sp0 = 0;

    for (character = *arg0 ; character != 0 ; character = *arg0 ) {
            if (!(isprint(character)) && (character >= 0xA1) && (character >= 0xDF)) {
                sp0 = 1;
                *arg0 = 0x3F;
            }
            arg0++;
        }

    return sp0;
}

//func_00402018
int check_modify_initcode(char* character) {
    int opt = 0;

    strupr(character);
    if (!isalpha(character[0])) {
        opt = 1;
        character[0] = 'N';
    }
    if (!isalnum(character[1])) {
        opt = 1;
        character[1] = 'A';
    }
    if (!isalnum(character[2])) {
        opt = 1;
        character[2] = 'A';
    }
    if (!isalpha(character[3])) {
        opt = 1;
        character[3] = 'A';
    }
    character[4] = '\0';

    return opt;
}

void nrdc_dump(s32 arg0, FILE *file) {
    char* code;

    code = &B_10003600;
    fseek(file, 0x20, 0);
    fread(&B_10003600, 1, 0x20, file);
    if (arg0 == 1) {
        swab(&B_10003600, &B_10003620, 0x20);
        code = &B_10003620;
    }
    dump(code);
    printf("\n\nGame Title:   %.*s\nInitial Code: %.4s\nVersion:      %x\n\n", 20, code, &code[0x1B], code[0x1F]);
}

void nrdc_patch(int arg0, int arg1, FILE* arg2, char** arg3) {
    char* sp2C;
    char sp2B;
    int sp24;
    // int temp_t2;
    // int temp_t9;
    // char temp_t3;
    // char temp_t3_2;
    // char temp_t4;
    // char temp_t6;
    // char temp_t6_2;
    // char* temp_t2_2;

    sp2C = B_10003600;
    fseek(arg2, 0x20, 0);
    fread(B_10003600, 1, 0x20, arg2);
    if (arg1 == 1) {
        swab(B_10003600, B_10003620, 0x20);
        sp2C = B_10003620;
    }
    memset(sp2C + 0x14, 0, 7);
    if (arg0 & 0x100) {
        memset(sp2C, 0x20, 0x14);
    }
    if (arg0 & 0x100) {
        if (check_modify_title(arg3[0]) != 0) {
            printf(" ");
        }

        for (sp24 = 0, sp2B = arg3[0][sp24]; sp2B != 0 && sp24 < 0x14; sp24++, sp2B = arg3[0][sp24]) {
            sp2C[sp24] = sp2B;
        }
    }

    if (arg0 & 0x200) {
        if (check_modify_title(arg3[1]) != 0) {
            printf(" ");
        }
        for (sp24 = 0, sp2B = arg3[1][sp24]; sp2B != 0 && sp24 < 4; sp24++, sp2B = arg3[1][sp24]) {
            sp2C[sp24 + 0x1B] = sp2B;
        }
    }

    if (arg0 & 0x400) {
        if (!isalnum(*arg3[2])) {
            *arg3[2] = 0x30;
            printf(" ");
        }
        if (isdigit(*arg3[2])) {
            sp2C[0x1F] = (*arg3[2] - 0x30);
        } else {
            sp2C[0x1F] = (tolower(*arg3[2]) - 0x57);
        }
    }
    if (arg1 == 1) {
        swab(B_10003620, B_10003600, 0x20);
    }
    fseek(arg2, 0x20, 0);
    fwrite(B_10003600, 1, 0x20, arg2);
}



