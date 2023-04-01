#ifndef __STDIO_H__
#define __STDIO_H__

#include <internal/stdio_core.h>

__SGI_LIBC_USING_FROM_STD(fpos_t)
__SGI_LIBC_USING_FROM_STD(size_t)
__SGI_LIBC_USING_FROM_STD(clearerr)
__SGI_LIBC_USING_FROM_STD(fclose)
__SGI_LIBC_USING_FROM_STD(feof)
__SGI_LIBC_USING_FROM_STD(ferror)
__SGI_LIBC_USING_FROM_STD(fflush)
__SGI_LIBC_USING_FROM_STD(fgetc)
__SGI_LIBC_USING_FROM_STD(fgetpos)
__SGI_LIBC_USING_FROM_STD(fgets)
__SGI_LIBC_USING_FROM_STD(fopen)
__SGI_LIBC_USING_FROM_STD(fprintf)
__SGI_LIBC_USING_FROM_STD(fputc)
__SGI_LIBC_USING_FROM_STD(fputs)
__SGI_LIBC_USING_FROM_STD(fread)
__SGI_LIBC_USING_FROM_STD(freopen)
__SGI_LIBC_USING_FROM_STD(fscanf)
__SGI_LIBC_USING_FROM_STD(fseek)
__SGI_LIBC_USING_FROM_STD(fsetpos)
__SGI_LIBC_USING_FROM_STD(ftell)
__SGI_LIBC_USING_FROM_STD(fwrite)
__SGI_LIBC_USING_FROM_STD(getc)
__SGI_LIBC_USING_FROM_STD(getchar)
__SGI_LIBC_USING_FROM_STD(gets)
__SGI_LIBC_USING_FROM_STD(perror)
__SGI_LIBC_USING_FROM_STD(printf)
__SGI_LIBC_USING_FROM_STD(putc)
__SGI_LIBC_USING_FROM_STD(putchar)
__SGI_LIBC_USING_FROM_STD(puts)
__SGI_LIBC_USING_FROM_STD(remove)
__SGI_LIBC_USING_FROM_STD(rename)
__SGI_LIBC_USING_FROM_STD(rewind)
__SGI_LIBC_USING_FROM_STD(scanf)
__SGI_LIBC_USING_FROM_STD(setbuf)
__SGI_LIBC_USING_FROM_STD(setvbuf)
__SGI_LIBC_USING_FROM_STD(sprintf)
__SGI_LIBC_USING_FROM_STD(sscanf)
__SGI_LIBC_USING_FROM_STD(tmpfile)
__SGI_LIBC_USING_FROM_STD(tmpnam)
__SGI_LIBC_USING_FROM_STD(ungetc)
__SGI_LIBC_USING_FROM_STD(vfprintf)
#if defined(__c99) || (_SGIAPI && _NO_ANSIMODE)
__SGI_LIBC_USING_FROM_STD(vfscanf)
#endif /* defined(__c99) ... */
__SGI_LIBC_USING_FROM_STD(vprintf)
#if defined(__c99) || (_SGIAPI && _NO_ANSIMODE)
__SGI_LIBC_USING_FROM_STD(vscanf)
#endif /* defined(__c99) ... */
__SGI_LIBC_USING_FROM_STD(vsprintf)
#if defined(__c99) || (_SGIAPI && _NO_ANSIMODE)
__SGI_LIBC_USING_FROM_STD(vsscanf)
#endif /* defined(__c99) ... */

#endif /* !__STDIO_H__ */
