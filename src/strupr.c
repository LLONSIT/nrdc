#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

char* strupr(char* str) {
    char* c = str;

    while (*c != '\0') {
        *c = toupper(*c);
        c++;
    }
    return str;
}
