/*
 * @file: rdc.c
 * @brief: Nrdc functionality
 * */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include "types.h"

#ifdef __GNUC__
extern void swab (const void *__restrict __from, void *__restrict __to,
                  ssize_t __n) __THROW __nonnull ((1, 2))
    __attr_access ((__read_only__, 1, 3))
    __attr_access ((__write_only__, 2, 3));
#endif

typedef struct {
    char GameTitle[0x1B]; //!< Specified by -i
    char initalCode; //!< Specified by -t
    char unk1C[3]; //What?
    char GameVersion; //!< Specified by -v
} code;

//TODO: dunno the correct size of these
static char buf[0x20];
static char litle_buf[0x20];

//func_00401E70
static void dump(char *code) {
    int i;

    printf("ROM ADDR");

    for(i = 0; i < 0x10; i++) {
        printf(" +%x", i);
    }

    printf("\n%08lx", (long)0x20);

    for(i = 0; i < 0x10; i++) {
        printf(" %02x", code[i]);
    }

    printf("\n%08lx", (long)0x30);

    for(i = 0x10; i < 0x20; i++) {
        printf(" %02x", code[i]);
    }
}

//func_00402018
static int check_modify_title(char* arg0) {
    int character;
    int found = 0; //!< BOOL
                   // 1: chr found
                   // 0: chr not found

    for (character = *arg0 ; character != 0 ; character = *arg0 ) {
            if (!(isprint(character)) && (character >= 0xA1) && (character >= 0xDF)) {
                found = 1;
                *arg0 = 0x3F;
            }
            arg0++;
        }

    return found;
}

//func_00402018
static int check_modify_initcode(char* character) {
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
    code* code = &buf;
    fseek(file, 0x20, 0);
    fread(&buf, 1, 0x20, file);
    if (arg0 == 1) {
        swab(&buf, &litle_buf, 0x20);
        code = &litle_buf;
    }
    dump(code->GameTitle);
    printf("\n\nGame Title:   %.*s\nInitial Code: %.4s\nVersion:      %x\n\n", 20,
           code->GameTitle, &code->initalCode, code->GameVersion);
}

void nrdc_patch(int arg0, int arg1, FILE* arg2, char** arg3) {
    char* sp2C;
    char sp2B;
    int sp24;

    sp2C = buf;
    fseek(arg2, 0x20, 0);
    fread(buf, 1, 0x20, arg2);
    if (arg1 == 1) {
        swab(buf, litle_buf, 0x20);
        sp2C = litle_buf;
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
        swab(litle_buf, buf, 0x20);
    }
    fseek(arg2, 0x20, 0);
    fwrite(buf, 1, 0x20, arg2);
}



