#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "types.h"

//static s32 B_100035C0[4];
//static s32 D_100032F0;
static char *B_100035D0[15];
static char* B_100035C0[100];
static char *B_100035E8[100];
static char B_100035EE[1];
static u32 D_100032F0;

//External declaration
extern void nrdc_patch(int arg0, int arg1, FILE* arg2, char** arg3);
extern void nrdc_dump(s32 arg0, FILE *file);
extern void nrdc_crc(s32 arg0, FILE *arg1);

void error(char* text) {
    fprintf(stderr, "Error: %s", text);
    exit(1);
}

//func_00401390
void helpmsg(void) {
    printf(
"Usage:\n"
    "\tnrdc [options] [filename]\n"
"\n"
"Option:\n"
    "\t-h\thelp message\n"
    "\t-b\tbig endian\n"
    "\t-l\tlittle endian\n"
    "\t-t\ttitle patch\n"
    "\t-i\tinitial code patch\n"
    "\t-v\tversion patch\n"
    "\t-d\tregistration data dump\n"
    "\t-c\tCRC calculation\n"
    "\t-p\tregistration data patch\n"
"\n");
    exit(0);
}


//func_004013E0
#ifdef __sgi
void get_patch_data(s32* arg0, u8*** arg1, s8* arg2, s32 arg3) {
    if (strncmp(**arg1, arg2, 2) == 0) {
        D_100032F0 |= (0x100 << arg3) | 4;
        if (*(**arg1 + 2) != 0) {
            B_100035C0[arg3] = **arg1 + 2;
            return;
        } else {
        B_100035C0[arg3]  = *++*arg1;
        --*arg0;
        }

    }

}
#else

//static s32 B_100035C0[4];
//static s32 D_100032F0;

void get_patch_data(s32* arg0, char*** parameter, char* arg2, s32 arg3) {
    if (strncmp(**parameter, arg2, 2) == 0) {
        D_100032F0 |= (0x100 << arg3) | 4;
        if (*(**parameter + 2) != 0) {
            B_100035C0[arg3] = (**parameter + 2);
        } else if (*arg0 > 1) {
            B_100035C0[arg3] = (*++*parameter);
            (*arg0)--;
        } else {
            printf("Error: Missing argument for option %s.\n", arg2);
            exit(1);
        }
    }
}



#endif

//func_004014D8
int isodigit(int c) {
    return (c >= '0') && (c <= '7');
}

//func_00401500
void parse_arg(int argc, char** argv) {
    s32 sp34;
    s32 temp_s0;

    if (argc < 2) {
        helpmsg();
    }
    B_100035C0[0] = //&RO_10003110;
    B_100035C0[1] = //&RO_10003110;
    B_100035C0[2] = "";

    for (; argc--;) {
        sp34 = D_100032F0;                            //unknown option
        if ((strcmp(*argv, "-h") == 0) || (strcmp(*argv, "-?") == 0)) {
           helpmsg();
        }
        if (strcmp(*argv, "-c") == 0) {
            D_100032F0 |= 1;
        }
        if (strcmp(*argv, "-d") == 0) {
            D_100032F0 |= 2;
        }
        if (strcmp(*argv, "-p") == 0) {
            D_100032F0 |= 4;
        }
        if (strcmp(*argv, "-b") == 0) {
            D_100032F0 |= 0x10;
        }
        if (strcmp(*argv, "-l") == 0) {
            D_100032F0 |= 0x20;
        }
	get_patch_data(&argc, &argv, "-t", 0);
        get_patch_data(&argc, &argv, "-i", 1);
        get_patch_data(&argc, &argv, "-v", 2);
        if ((sp34 == D_100032F0) && (argc != 0)) {
            printf("Warning: %s option is unrecognized.", *argv);
        }
        argv++;
    }
}

//func_004017CC
char* trans_str(char* dest, char* src) {
    char* srcp = src;
    char* destp = dest;
    char ch;

    while ((ch = *srcp++))  {
        if (ch != '\\') { // copy most chars
            *destp++ = ch;
        } else if (*srcp == '\\') { // copy "\\" verbatim
            *destp++ = *srcp++;
        } else if (tolower(*srcp) == 'x') { // "\xHH" hex control code
            s32 num;
            s32 i;
            s32 found_ctrl = 0;

            // rad up to 2 hex digits and convert to number
            for (i = 0, num = 0; i < 2; i++) {
                srcp++; // done here to skip the initial 'x'
                if (isxdigit(*srcp)) {
                    num *= 0x10;
                    found_ctrl = 1;
                    num += (isdigit(*srcp)) ? (*srcp - '0') : (tolower(*srcp) + 10 - 'a');
                } else {
                    break;
                }
            }
            if (found_ctrl) {
                *destp++ = num,
                srcp++; // or on same line
            }
        } else { // \OOO octal control code
            s32 num;
            s32 i;
            s32 found_ctrl = 0;

            // read up to 3 octal digits and convert to number
            for (i = 0, num = 0; i < 3; i++) {
                if (isodigit(*srcp)) { // check for octal digit
                    num *= 010;
                    found_ctrl = 1;
                    num += *srcp - '0';
                    srcp++;
                } else {
                    break;
                }
            }
            if (found_ctrl) {
                *destp++ = num;
            }
        }
    }
    return dest;
}

//func_00401A28
s32 getendian(char* arg0) {
    s32 sp24;

    if ((D_100032F0 & 0x30) == 0x10) {
        return 0;
    } else if ((D_100032F0 & 0x30) == 0x20) {
        return 1;
    }

    sp24 =  arg0[strlen(arg0) - 1];
    if (toupper(sp24) == 'B') {
        return 0;
    } else if (toupper(sp24) == 'L') {
        return 1;
    } else {
        return 2;
    }
}

int main(int argc, char **argv) {
    FILE* sp2C;
    int sp28 = 1;
    printf("NINTENDO 64 Master Data Utility  Version 1.02\n");
    printf("Copyright(C) 1996 Nintendo Co.,LTD.\n\n");
    parse_arg(argc - 1, argv + 1);
    if (D_100032F0 & 4) {
        getcode(&D_100032F0, argv[argc - 1], &B_100035C0[1]);
    }
    if (D_100032F0 & 0x100) {
        trans_str(&B_100035D0, B_100035C0[0]);
        B_100035C0[0] = B_100035D0;
    }
    if (D_100032F0 & 0x200) {
        trans_str(B_100035E8, B_100035C0[1]);
        B_100035C0[1] = B_100035E8;
    }
    if (D_100032F0 & 0x400) {
        trans_str(&B_100035EE, B_100035C0[2]);
        B_100035C0[2] = B_100035EE;
    }

    sp2C = fopen(argv[argc - 1], ((D_100032F0 & 4)) ? "rb+" : "rb");
    
    if (sp2C == NULL) {
        error("No input file");
    }
    sp28 = getendian(argv[argc - 1]);
    if (sp28 == 2) {
        error("Unknown endianness");
    }

    printf("%s-endian\n\n", ((sp28 == 1) ? "little" : "big"));
    if (D_100032F0 & 4) {
        nrdc_patch(D_100032F0, sp28, sp2C, &B_100035C0);
    }
    if (D_100032F0 & 2) {
        nrdc_dump(sp28, sp2C);
    }
    if (D_100032F0 & 1) {
        rewind(sp2C);
        nrdc_crc(sp28, sp2C);
    }
    fclose(sp2C);
    return 0;
}
