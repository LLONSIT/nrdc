#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "types.h"

//Global
static u32 patch_data;
static char *option[100];

//External declaration
extern void nrdc_patch(int arg0, int arg1, FILE* arg2, char** arg3);
extern void nrdc_dump(s32 arg0, FILE *file);
extern void nrdc_crc(s32 arg0, FILE *arg1);
extern int getcode(unsigned int* arg0, char* arg1, char **c);

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
//#ifdef __sgi
void get_patch_data(s32* arg0, char*** arg1, char* arg2, s32 arg3) {
    if (strncmp(**arg1, arg2, 2) == 0) {
        patch_data |= (0x100 << arg3) | 4;
        if (*(**arg1 + 2) != 0) {
            option[arg3] = **arg1 + 2;
            return;
        } else {
        option[arg3]  = *++*arg1; //doughnut ()
        --*arg0;
        }
    }
}

//func_004014D8
int isodigit(int c) {
    return (c >= '0') && (c <= '7');
}

//func_00401500
void parse_arg(int argc, char** argv) {
    s32 sp34;
    if (argc < 2) {
        helpmsg();
    }
    option[0] = //&RO_10003110;
    option[1] = //&RO_10003110;
    option[2] = "";

    for (; argc--;) {
        sp34 = patch_data;                            //unknown option
        if ((strcmp(*argv, "-h") == 0) || (strcmp(*argv, "-?") == 0)) {
           helpmsg();
        }
        if (strcmp(*argv, "-c") == 0) {
            patch_data |= 1;
        }
        if (strcmp(*argv, "-d") == 0) {
            patch_data |= 2;
        }
        if (strcmp(*argv, "-p") == 0) {
            patch_data |= 4;
        }
        if (strcmp(*argv, "-b") == 0) {
            patch_data |= 0x10;
        }
        if (strcmp(*argv, "-l") == 0) {
            patch_data |= 0x20;
        }
	get_patch_data(&argc, &argv, "-t", 0);
        get_patch_data(&argc, &argv, "-i", 1);
        get_patch_data(&argc, &argv, "-v", 2);
        if ((sp34 == patch_data) && (argc != 0)) {
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

    if ((patch_data & 0x30) == 0x10) {
        return 0;
    } else if ((patch_data & 0x30) == 0x20) {
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
    FILE* rom_file;
    int endian = 1;
    static char *title[15];
    static char *initcode[100];
    static char version[1];

    printf("NINTENDO 64 Master Data Utility  Version 1.02\n");
    printf("Copyright(C) 1996 Nintendo Co.,LTD.\n\n");

    parse_arg(argc - 1, argv + 1);
    if (patch_data & 4) {
        getcode(&patch_data, argv[argc - 1], &option[1]);
    }
    if (patch_data & 0x100) {
        trans_str(&title, option[0]);
        option[0] = title;
    }
    if (patch_data & 0x200) {
        trans_str(initcode, option[1]);
        option[1] = initcode;
    }
    if (patch_data & 0x400) {
        trans_str(&version, option[2]);
        option[2] = version;
    }

    rom_file = fopen(argv[argc - 1], ((patch_data & 4)) ? "rb+" : "rb");
    
    if (rom_file == NULL) {
        error("No input file");
    }
    endian = getendian(argv[argc - 1]);
    if (endian == 2) {
        error("Unknown endianness");
    }

    printf("%s-endian\n\n", ((endian == 1) ? "little" : "big"));
    if (patch_data & 4) {
        nrdc_patch(patch_data, endian, rom_file, &option);
    }
    if (patch_data & 2) {
        nrdc_dump(endian, rom_file);
    }
    if (patch_data & 1) {
        rewind(rom_file);
        nrdc_crc(endian, rom_file);
    }
    fclose(rom_file);
    return 0;
}
