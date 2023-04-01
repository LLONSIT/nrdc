.rdata
RO_10003000:
    # 00401120 nrdc_crc
    .asciz "CRC = 0x%04x\n"

RO_10003010:
    # 004011B0 getcode
    .asciz ".SRB"

    .balign 4
RO_10003020:
    # 00401330 error
    .byte 0x07,0x45,0x72,0x72,0x6f,0x72,0x3a,0x20,0x25,0x73,0x0a,0x00 # 0.000000

RO_1000302C:
    # 00401390 func_00401390
    .asciz "Usage:\n\tnrdc [options] [filename]\n\nOption:\n\t-h\thelp message\n\t-b\tbig endian\n\t-l\tlittle endian\n\t-t\ttitle patch\n\t-i\tinitial code patch\n\t-v\tversion patch\n\t-d\tregistration data dump\n\t-c\tCRC calculation\n\t-p\tregistration data patch\n\n"

RO_10003110:
    # 00401500 func_00401500
    .asciz ""

RO_10003114:
    # 00401500 func_00401500
    .asciz "-h"

RO_10003118:
    # 00401500 func_00401500
    .asciz "-?"

RO_1000311C:
    # 00401500 func_00401500
    .asciz "-c"

RO_10003120:
    # 00401500 func_00401500
    .asciz "-d"

RO_10003124:
    # 00401500 func_00401500
    .asciz "-p"

RO_10003128:
    # 00401500 func_00401500
    .asciz "-b"

RO_1000312C:
    # 00401500 func_00401500
    .asciz "-l"

RO_10003130:
    # 00401500 func_00401500
    .asciz "-t"

RO_10003134:
    # 00401500 func_00401500
    .asciz "-i"

RO_10003138:
    # 00401500 func_00401500
    .asciz "-v"

    .balign 4
RO_1000313C:
    # 00401500 func_00401500
    .byte 0x07,0x57,0x61,0x72,0x6e,0x69,0x6e,0x67,0x3a,0x20,0x22,0x25,0x73,0x22,0x20,0x6f,0x70,0x74,0x69,0x6f,0x6e,0x20,0x69,0x73,0x20,0x75,0x6e,0x72,0x65,0x63,0x6f,0x67,0x6e,0x69,0x7a,0x65,0x64,0x2e,0x0a,0x00 # 0.000000

RO_10003164:
    # 00401AFC main
    .asciz "NINTENDO 64 Master Data Utility  Version 1.02\n"

RO_10003194:
    # 00401AFC main
    .asciz "Copyright(C) 1996 Nintendo Co.,LTD.\n\n"

RO_100031BC:
    # 00401AFC main
    .asciz "rb+"

RO_100031C0:
    # 00401AFC main
    .asciz "rb"

RO_100031C4:
    # 00401AFC main
    .asciz "No input file"

RO_100031D4:
    # 00401AFC main
    .asciz "Unknown endianness"

RO_100031E8:
    # 00401AFC main
    .asciz "%s-endian\n\n"

RO_100031F4:
    # 00401AFC main
    .asciz "little"

RO_100031FC:
    # 00401AFC main
    .asciz "big"

RO_10003200:
    # 00401E70 func_00401E70
    .asciz "ROM ADDR"

RO_1000320C:
    # 00401E70 func_00401E70
    .asciz " +%x"

RO_10003214:
    # 00401E70 func_00401E70
    .asciz "\n%08lx"

RO_1000321C:
    # 00401E70 func_00401E70
    .asciz " %02x"

RO_10003224:
    # 00401E70 func_00401E70
    .asciz "\n%08lx"

RO_1000322C:
    # 00401E70 func_00401E70
    .asciz " %02x"

RO_10003234:
    # 00402124 nrdc_dump
    .asciz "\n\nGame Title:   %.*s\nInitial Code: %.4s\nVersion:      %x\n\n"

    .balign 4
RO_10003270:
    # 00402218 nrdc_patch
    .byte 0x07,0x57,0x61,0x72,0x6e,0x69,0x6e,0x67,0x3a,0x20,0x49,0x6e,0x76,0x61,0x6c,0x69,0x64,0x20,0x67,0x61,0x6d,0x65,0x20,0x6e,0x61,0x6d,0x65,0x0a,0x00,0x00,0x00,0x00 # 0.000000

    .balign 4
RO_10003290:
    # 00402218 nrdc_patch
    .byte 0x07,0x57,0x61,0x72,0x6e,0x69,0x6e,0x67,0x3a,0x20,0x49,0x6e,0x76,0x61,0x6c,0x69,0x64,0x20,0x69,0x6e,0x74,0x69,0x61,0x6c,0x20,0x63,0x6f,0x64,0x65,0x0a,0x00,0x00 # 0.000000

    .balign 4
RO_100032B0:
    # 00402218 nrdc_patch
    .byte 0x07,0x57,0x61,0x72,0x6e,0x69,0x6e,0x67,0x3a,0x20,0x49,0x6e,0x76,0x61,0x6c,0x69,0x64,0x20,0x76,0x65,0x72,0x73,0x69,0x6f,0x6e,0x20,0x6e,0x75,0x6d,0x62,0x65,0x72,0x0a,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 # 0.000000

.data
D_100032E0:
    # 00400F94 func_00400F94
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

D_100032F0:
    # 004013E0 func_004013E0
    # 00401500 func_00401500
    # 00401A28 func_00401A28
    # 00401AFC main
    .byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00


.bss
B_100033A0:
    # 00400F94 func_00400F94
    .space 8

B_100033A8:
    # 00401050 func_00401050
    .space 520

B_100035B0:
    # 004011B0 getcode
    .space 6

B_100035B6:
    # 004011B0 getcode
    .space 10

B_100035C0:
    # 004013E0 func_004013E0
    # 00401500 func_00401500
    # 00401AFC main
    .space 16

B_100035D0:
    # 00401AFC main
    .space 24

B_100035E8:
    # 00401AFC main
    .space 6

B_100035EE:
    # 00401AFC main
    .space 18

B_10003600:
    # 00402124 nrdc_dump
    # 00402218 nrdc_patch
    .space 32

B_10003620:
    # 00402124 nrdc_dump
    # 00402218 nrdc_patch
    .space 32

# 10003640
glabel __Argv
    .space 4
    .size __Argv, 4
    .type __Argv, @object

# 10003644
glabel __rld_obj_head
    .space 4
    .size __rld_obj_head, 4
    .type __rld_obj_head, @object

# 10003648
glabel __Argc
    .space 4
    .size __Argc, 4
    .type __Argc, @object


.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel __start
    .ent __start
/* 00400DC0 03E04025 */  move  $t0, $ra
/* 00400DC4 04110001 */  bal   func_00400DCC
/* 00400DC8 00000000 */   nop   
func_00400DCC:
/* 00400DCC 3C1C0FC1 */  lui   $gp, 0xfc1
/* 00400DD0 279CA524 */  addiu $gp, $gp, -0x5adc
/* 00400DD4 039FE021 */  addu  $gp, $gp, $ra
/* 00400DD8 0100F825 */  move  $ra, $t0
/* 00400DDC 3C070000 */  lui   $a3, 0
/* 00400DE0 00FC3821 */  addu  $a3, $a3, $gp
/* 00400DE4 8CE7802C */  lw    $a3, -0x7fd4($a3)
/* 00400DE8 8FA40000 */  lw    $a0, ($sp)
/* 00400DEC 27A50004 */  addiu $a1, $sp, 4
/* 00400DF0 8CE70000 */  lw    $a3, ($a3)
/* 00400DF4 2401FFF0 */  li    $at, -16
/* 00400DF8 03A1E824 */  and   $sp, $sp, $at
/* 00400DFC 24A60004 */  addiu $a2, $a1, 4
/* 00400E00 00041080 */  sll   $v0, $a0, 2
/* 00400E04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00400E08 14E00005 */  bnez  $a3, .LABEL_00400E20
/* 00400E0C 00C23021 */   addu  $a2, $a2, $v0
/* 00400E10 3C010000 */  lui   $at, 0
/* 00400E14 003C0821 */  addu  $at, $at, $gp
/* 00400E18 8C21802C */  lw    $at, -0x7fd4($at)
/* 00400E1C AC260000 */  sw    $a2, ($at)
.LABEL_00400E20:
/* 00400E20 3C010000 */  lui   $at, 0
/* 00400E24 003C0821 */  addu  $at, $at, $gp
/* 00400E28 8C2180A4 */  lw    $at, -0x7f5c($at)
/* 00400E2C 3C190000 */  lui   $t9, 0
/* 00400E30 033CC821 */  addu  $t9, $t9, $gp
/* 00400E34 AC240000 */  sw    $a0, ($at)
/* 00400E38 3C010000 */  lui   $at, 0
/* 00400E3C 8F39809C */  lw    $t9, -0x7f64($t9)
/* 00400E40 003C0821 */  addu  $at, $at, $gp
/* 00400E44 8C2180A0 */  lw    $at, -0x7f60($at)
/* 00400E48 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00400E4C AFA0001C */  sw    $zero, 0x1c($sp)
/* 00400E50 0000F025 */  move  $fp, $zero
/* 00400E54 0320F809 */  jalr  $t9
/* 00400E58 AC250000 */   sw    $a1, ($at)
/* 00400E5C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400E60 3C190000 */  lui   $t9, 0
/* 00400E64 033CC821 */  addu  $t9, $t9, $gp
/* 00400E68 8F398038 */  lw    $t9, -0x7fc8($t9)
/* 00400E6C 0320F809 */  jalr  $t9
/* 00400E70 00000000 */   nop   
/* 00400E74 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400E78 3C190000 */  lui   $t9, 0
/* 00400E7C 3C040000 */  lui   $a0, 0
/* 00400E80 3C050000 */  lui   $a1, 0
/* 00400E84 3C060000 */  lui   $a2, 0
/* 00400E88 033CC821 */  addu  $t9, $t9, $gp
/* 00400E8C 8F39808C */  lw    $t9, -0x7f74($t9)
/* 00400E90 009C2021 */  addu  $a0, $a0, $gp
/* 00400E94 00BC2821 */  addu  $a1, $a1, $gp
/* 00400E98 00DC3021 */  addu  $a2, $a2, $gp
/* 00400E9C 8C8480A4 */  lw    $a0, -0x7f5c($a0)
/* 00400EA0 8CA580A0 */  lw    $a1, -0x7f60($a1)
/* 00400EA4 8CC6802C */  lw    $a2, -0x7fd4($a2)
/* 00400EA8 8C840000 */  lw    $a0, ($a0)
/* 00400EAC 8CA50000 */  lw    $a1, ($a1)
/* 00400EB0 0320F809 */  jalr  $t9
/* 00400EB4 8CC60000 */   lw    $a2, ($a2)
/* 00400EB8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400EBC 3C190000 */  lui   $t9, 0
/* 00400EC0 00402025 */  move  $a0, $v0
/* 00400EC4 033CC821 */  addu  $t9, $t9, $gp
/* 00400EC8 8F398034 */  lw    $t9, -0x7fcc($t9)
/* 00400ECC 0320F809 */  jalr  $t9
/* 00400ED0 00000000 */   nop   
/* 00400ED4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400ED8 0000000D */  break 
    .type __start, @function
    .size __start, .-__start
    .end __start
glabel _mcount
    .ent _mcount
/* 00400EDC 27BD0010 */  addiu $sp, $sp, 0x10
/* 00400EE0 03E00008 */  jr    $ra
/* 00400EE4 0020F825 */   move  $ra, $at
    .type _mcount, @function
    .size _mcount, .-_mcount
    .end _mcount

/* 00400EE8 00000000 */  nop   
/* 00400EEC 00000000 */  nop   
/* 00400EF0 00000000 */  nop   
/* 00400EF4 00000000 */  nop   
/* 00400EF8 00000000 */  nop   
/* 00400EFC 00000000 */  nop   
    .type func_00400F00, @function
func_00400F00:
    # 00401050 func_00401050
/* 00400F00 3C1C0FC1 */  .cpload $t9
/* 00400F04 279CA3F0 */  
/* 00400F08 0399E021 */  
/* 00400F0C 27BDFFF8 */  addiu $sp, $sp, -8
/* 00400F10 A7A00006 */  sh    $zero, 6($sp)
.LABEL_00400F14:
/* 00400F14 97AE0006 */  lhu   $t6, 6($sp)
/* 00400F18 A7A00004 */  sh    $zero, 4($sp)
/* 00400F1C 000E7A00 */  sll   $t7, $t6, 8
/* 00400F20 A7AF0002 */  sh    $t7, 2($sp)
.LABEL_00400F24:
/* 00400F24 97B80002 */  lhu   $t8, 2($sp)
/* 00400F28 33198000 */  andi  $t9, $t8, 0x8000
/* 00400F2C 13200005 */  beqz  $t9, .LABEL_00400F44
/* 00400F30 00000000 */   nop   
/* 00400F34 00184040 */  sll   $t0, $t8, 1
/* 00400F38 39091021 */  xori  $t1, $t0, 0x1021
/* 00400F3C 10000004 */  b     .LABEL_00400F50
/* 00400F40 A7A90002 */   sh    $t1, 2($sp)
.LABEL_00400F44:
/* 00400F44 97AA0002 */  lhu   $t2, 2($sp)
/* 00400F48 000A5840 */  sll   $t3, $t2, 1
/* 00400F4C A7AB0002 */  sh    $t3, 2($sp)
.LABEL_00400F50:
/* 00400F50 97AC0004 */  lhu   $t4, 4($sp)
/* 00400F54 258D0001 */  addiu $t5, $t4, 1
/* 00400F58 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 00400F5C 29C10008 */  slti  $at, $t6, 8
/* 00400F60 1420FFF0 */  bnez  $at, .LABEL_00400F24
/* 00400F64 A7AD0004 */   sh    $t5, 4($sp)
/* 00400F68 97AF0002 */  lhu   $t7, 2($sp)
/* 00400F6C 24840002 */  addiu $a0, $a0, 2
/* 00400F70 A48FFFFE */  sh    $t7, -2($a0)
/* 00400F74 97B90006 */  lhu   $t9, 6($sp)
/* 00400F78 27380001 */  addiu $t8, $t9, 1
/* 00400F7C 3308FFFF */  andi  $t0, $t8, 0xffff
/* 00400F80 29010100 */  slti  $at, $t0, 0x100
/* 00400F84 1420FFE3 */  bnez  $at, .LABEL_00400F14
/* 00400F88 A7B80006 */   sh    $t8, 6($sp)
/* 00400F8C 03E00008 */  jr    $ra
/* 00400F90 27BD0008 */   addiu $sp, $sp, 8

    .type func_00400F94, @function
func_00400F94:
    # 00401120 nrdc_crc
/* 00400F94 3C1C0FC1 */  .cpload $t9
/* 00400F98 279CA35C */  
/* 00400F9C 0399E021 */  
/* 00400FA0 8F8E801C */  lw    $t6, %got(D_100032E0)($gp)
/* 00400FA4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00400FA8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00400FAC 8DCE32E0 */  lw    $t6, %lo(D_100032E0)($t6)
/* 00400FB0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00400FB4 AFA40020 */  sw    $a0, 0x20($sp)
/* 00400FB8 15C00011 */  bnez  $t6, .LABEL_00401000
/* 00400FBC 00000000 */   nop   
/* 00400FC0 8F998030 */  lw    $t9, %call16(fgetc)($gp)
/* 00400FC4 8FA40020 */  lw    $a0, 0x20($sp)
/* 00400FC8 0320F809 */  jalr  $t9
/* 00400FCC 00000000 */   nop   
/* 00400FD0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400FD4 8F8F801C */  lw    $t7, %got(B_100033A0)($gp)
/* 00400FD8 25EF33A0 */  addiu $t7, %lo(B_100033A0) # addiu $t7, $t7, 0x33a0
/* 00400FDC A1E20000 */  sb    $v0, ($t7)
/* 00400FE0 8F998030 */  lw    $t9, %call16(fgetc)($gp)
/* 00400FE4 8FA40020 */  lw    $a0, 0x20($sp)
/* 00400FE8 0320F809 */  jalr  $t9
/* 00400FEC 00000000 */   nop   
/* 00400FF0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00400FF4 8F98801C */  lw    $t8, %got(B_100033A0)($gp)
/* 00400FF8 271833A0 */  addiu $t8, %lo(B_100033A0) # addiu $t8, $t8, 0x33a0
/* 00400FFC A3020001 */  sb    $v0, 1($t8)
.LABEL_00401000:
/* 00401000 8FB90020 */  lw    $t9, 0x20($sp)
/* 00401004 9328000C */  lbu   $t0, 0xc($t9)
/* 00401008 31090010 */  andi  $t1, $t0, 0x10
/* 0040100C 11200003 */  beqz  $t1, .LABEL_0040101C
/* 00401010 00000000 */   nop   
/* 00401014 1000000A */  b     .LABEL_00401040
/* 00401018 2402FFFF */   li    $v0, -1
.LABEL_0040101C:
/* 0040101C 8F8A801C */  lw    $t2, %got(D_100032E0)($gp)
/* 00401020 8F8C801C */  lw    $t4, %got(B_100033A0)($gp)
/* 00401024 8F81801C */  lw    $at, %got(D_100032E0)($gp)
/* 00401028 8D4A32E0 */  lw    $t2, %lo(D_100032E0)($t2)
/* 0040102C 258C33A0 */  addiu $t4, %lo(B_100033A0) # addiu $t4, $t4, 0x33a0
/* 00401030 394B0001 */  xori  $t3, $t2, 1
/* 00401034 016C6821 */  addu  $t5, $t3, $t4
/* 00401038 AC2B32E0 */  sw    $t3, %lo(D_100032E0)($at)
/* 0040103C 91A20000 */  lbu   $v0, ($t5)
.LABEL_00401040:
/* 00401040 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401044 27BD0020 */  addiu $sp, $sp, 0x20
/* 00401048 03E00008 */  jr    $ra
/* 0040104C 00000000 */   nop   

    .type func_00401050, @function
func_00401050:
    # 00401120 nrdc_crc
/* 00401050 3C1C0FC1 */  .cpload $t9
/* 00401054 279CA2A0 */  
/* 00401058 0399E021 */  
/* 0040105C 8F998014 */  lw    $t9, %got(func_00400F00)($gp)
/* 00401060 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00401064 AFA40028 */  sw    $a0, 0x28($sp)
/* 00401068 8F84801C */  lw    $a0, %got(B_100033A8)($gp)
/* 0040106C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401070 27390F00 */  addiu $t9, %lo(func_00400F00) # addiu $t9, $t9, 0xf00
/* 00401074 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401078 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0040107C A7A00026 */  sh    $zero, 0x26($sp)
/* 00401080 0320F809 */  jalr  $t9
/* 00401084 248433A8 */   addiu $a0, %lo(B_100033A8) # addiu $a0, $a0, 0x33a8
/* 00401088 8FB90028 */  lw    $t9, 0x28($sp)
/* 0040108C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401090 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00401094 0320F809 */  jalr  $t9
/* 00401098 00000000 */   nop   
/* 0040109C AFA20020 */  sw    $v0, 0x20($sp)
/* 004010A0 8FAE0020 */  lw    $t6, 0x20($sp)
/* 004010A4 2401FFFF */  li    $at, -1
/* 004010A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004010AC 11C10017 */  beq   $t6, $at, .LABEL_0040110C
/* 004010B0 00000000 */   nop   
.LABEL_004010B4:
/* 004010B4 97AF0026 */  lhu   $t7, 0x26($sp)
/* 004010B8 8FA80020 */  lw    $t0, 0x20($sp)
/* 004010BC 8F8B801C */  lw    $t3, %got(B_100033A8)($gp)
/* 004010C0 000FC203 */  sra   $t8, $t7, 8
/* 004010C4 03084826 */  xor   $t1, $t8, $t0
/* 004010C8 00095040 */  sll   $t2, $t1, 1
/* 004010CC 256B33A8 */  addiu $t3, %lo(B_100033A8) # addiu $t3, $t3, 0x33a8
/* 004010D0 014B6021 */  addu  $t4, $t2, $t3
/* 004010D4 958D0000 */  lhu   $t5, ($t4)
/* 004010D8 000FCA00 */  sll   $t9, $t7, 8
/* 004010DC 8FA4002C */  lw    $a0, 0x2c($sp)
/* 004010E0 01B97026 */  xor   $t6, $t5, $t9
/* 004010E4 8FB90028 */  lw    $t9, 0x28($sp)
/* 004010E8 A7AE0026 */  sh    $t6, 0x26($sp)
/* 004010EC 0320F809 */  jalr  $t9
/* 004010F0 00000000 */   nop   
/* 004010F4 AFA20020 */  sw    $v0, 0x20($sp)
/* 004010F8 8FB80020 */  lw    $t8, 0x20($sp)
/* 004010FC 2401FFFF */  li    $at, -1
/* 00401100 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401104 1701FFEB */  bne   $t8, $at, .LABEL_004010B4
/* 00401108 00000000 */   nop   
.LABEL_0040110C:
/* 0040110C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401110 97A20026 */  lhu   $v0, 0x26($sp)
/* 00401114 27BD0028 */  addiu $sp, $sp, 0x28
/* 00401118 03E00008 */  jr    $ra
/* 0040111C 00000000 */   nop   

glabel nrdc_crc
    .ent nrdc_crc
    # 00401AFC main
/* 00401120 3C1C0FC1 */  .cpload $t9
/* 00401124 279CA1D0 */  
/* 00401128 0399E021 */  
/* 0040112C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00401130 AFA40030 */  sw    $a0, 0x30($sp)
/* 00401134 8FAE0030 */  lw    $t6, 0x30($sp)
/* 00401138 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040113C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00401140 AFA50034 */  sw    $a1, 0x34($sp)
/* 00401144 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00401148 15C00003 */  bnez  $t6, .LABEL_00401158
/* 0040114C AFB00018 */   sw    $s0, 0x18($sp)
/* 00401150 10000003 */  b     .LABEL_00401160
/* 00401154 8F918030 */   lw     $s1, %got(fgetc)($gp)
.LABEL_00401158:
/* 00401158 8F918014 */  lw    $s1, %got(func_00400F94)($gp)
/* 0040115C 26310F94 */  addiu $s1, %lo(func_00400F94) # addiu $s1, $s1, 0xf94
.LABEL_00401160:
/* 00401160 8F998014 */  lw    $t9, %got(func_00401050)($gp)
/* 00401164 02202025 */  move  $a0, $s1
/* 00401168 8FA50034 */  lw    $a1, 0x34($sp)
/* 0040116C 27391050 */  addiu $t9, %lo(func_00401050) # addiu $t9, $t9, 0x1050
/* 00401170 0320F809 */  jalr  $t9
/* 00401174 00000000 */   nop   
/* 00401178 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040117C 3050FFFF */  andi  $s0, $v0, 0xffff
/* 00401180 02002825 */  move  $a1, $s0
/* 00401184 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401188 8F84801C */  lw    $a0, %got(RO_10003000)($gp)
/* 0040118C 0320F809 */  jalr  $t9
/* 00401190 24843000 */   addiu $a0, %lo(RO_10003000) # addiu $a0, $a0, 0x3000
/* 00401194 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00401198 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040119C 8FB00018 */  lw    $s0, 0x18($sp)
/* 004011A0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 004011A4 03E00008 */  jr    $ra
/* 004011A8 27BD0030 */   addiu $sp, $sp, 0x30
    .type nrdc_crc, @function
    .size nrdc_crc, .-nrdc_crc
    .end nrdc_crc

/* 004011AC 00000000 */  nop   
glabel getcode
    .ent getcode
    # 00401AFC main
/* 004011B0 3C1C0FC1 */  .cpload $t9
/* 004011B4 279CA140 */  
/* 004011B8 0399E021 */  
/* 004011BC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004011C0 8F998040 */  lw    $t9, %call16(strlen)($gp)
/* 004011C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004011C8 AFA40030 */  sw    $a0, 0x30($sp)
/* 004011CC AFA50034 */  sw    $a1, 0x34($sp)
/* 004011D0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004011D4 AFA60038 */  sw    $a2, 0x38($sp)
/* 004011D8 0320F809 */  jalr  $t9
/* 004011DC 8FA40034 */   lw    $a0, 0x34($sp)
/* 004011E0 AFA20020 */  sw    $v0, 0x20($sp)
/* 004011E4 8FAE0020 */  lw    $t6, 0x20($sp)
/* 004011E8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004011EC 2DC1000B */  sltiu $at, $t6, 0xb
/* 004011F0 14200006 */  bnez  $at, .LABEL_0040120C
/* 004011F4 00000000 */   nop   
/* 004011F8 8FAF0030 */  lw    $t7, 0x30($sp)
/* 004011FC 8DF80000 */  lw    $t8, ($t7)
/* 00401200 33190004 */  andi  $t9, $t8, 4
/* 00401204 17200003 */  bnez  $t9, .LABEL_00401214
/* 00401208 00000000 */   nop   
.LABEL_0040120C:
/* 0040120C 10000043 */  b     .LABEL_0040131C
/* 00401210 2402FFFF */   li    $v0, -1
.LABEL_00401214:
/* 00401214 8FA80034 */  lw    $t0, 0x34($sp)
/* 00401218 8FA90020 */  lw    $t1, 0x20($sp)
/* 0040121C 8F998044 */  lw    $t9, %call16(strcpy)($gp)
/* 00401220 27A40024 */  addiu $a0, $sp, 0x24
/* 00401224 01092821 */  addu  $a1, $t0, $t1
/* 00401228 0320F809 */  jalr  $t9
/* 0040122C 24A5FFF5 */   addiu $a1, $a1, -0xb
/* 00401230 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401234 27A40024 */  addiu $a0, $sp, 0x24
/* 00401238 8F998098 */  lw    $t9, %call16(strupr)($gp)
/* 0040123C 0320F809 */  jalr  $t9
/* 00401240 00000000 */   nop   
/* 00401244 27AA0024 */  addiu $t2, $sp, 0x24
/* 00401248 914B0000 */  lbu   $t3, ($t2)
/* 0040124C 24010055 */  li    $at, 85
/* 00401250 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401254 15610008 */  bne   $t3, $at, .LABEL_00401278
/* 00401258 00000000 */   nop   
/* 0040125C 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 00401260 8F85801C */  lw    $a1, %got(RO_10003010)($gp)
/* 00401264 25440007 */  addiu $a0, $t2, 7
/* 00401268 0320F809 */  jalr  $t9
/* 0040126C 24A53010 */   addiu $a1, %lo(RO_10003010) # addiu $a1, $a1, 0x3010
/* 00401270 10400003 */  beqz  $v0, .LABEL_00401280
/* 00401274 8FBC0018 */   lw    $gp, 0x18($sp)
.LABEL_00401278:
/* 00401278 10000028 */  b     .LABEL_0040131C
/* 0040127C 2402FFFF */   li    $v0, -1
.LABEL_00401280:
/* 00401280 8F99804C */  lw    $t9, %call16(strncpy)($gp)
/* 00401284 8F84801C */  lw    $a0, %got(B_100035B0)($gp)
/* 00401288 27A50024 */  addiu $a1, $sp, 0x24
/* 0040128C 24A50001 */  addiu $a1, $a1, 1
/* 00401290 24060004 */  li    $a2, 4
/* 00401294 0320F809 */  jalr  $t9
/* 00401298 248435B0 */   addiu $a0, %lo(B_100035B0) # addiu $a0, $a0, 0x35b0
/* 0040129C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004012A0 27A50024 */  addiu $a1, $sp, 0x24
/* 004012A4 24A50005 */  addiu $a1, $a1, 5
/* 004012A8 8F99804C */  lw    $t9, %call16(strncpy)($gp)
/* 004012AC 8F84801C */  lw    $a0, %got(B_100035B6)($gp)
/* 004012B0 24060001 */  li    $a2, 1
/* 004012B4 0320F809 */  jalr  $t9
/* 004012B8 248435B6 */   addiu $a0, %lo(B_100035B6) # addiu $a0, $a0, 0x35b6
/* 004012BC 8FAC0030 */  lw    $t4, 0x30($sp)
/* 004012C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004012C4 8D8D0000 */  lw    $t5, ($t4)
/* 004012C8 31AE0200 */  andi  $t6, $t5, 0x200
/* 004012CC 15C00005 */  bnez  $t6, .LABEL_004012E4
/* 004012D0 00000000 */   nop   
/* 004012D4 8F8F801C */  lw    $t7, %got(B_100035B0)($gp)
/* 004012D8 8FB80038 */  lw    $t8, 0x38($sp)
/* 004012DC 25EF35B0 */  addiu $t7, %lo(B_100035B0) # addiu $t7, $t7, 0x35b0
/* 004012E0 AF0F0000 */  sw    $t7, ($t8)
.LABEL_004012E4:
/* 004012E4 8FB90030 */  lw    $t9, 0x30($sp)
/* 004012E8 8F280000 */  lw    $t0, ($t9)
/* 004012EC 31090400 */  andi  $t1, $t0, 0x400
/* 004012F0 15200005 */  bnez  $t1, .LABEL_00401308
/* 004012F4 00000000 */   nop   
/* 004012F8 8F8B801C */  lw    $t3, %got(B_100035B6)($gp)
/* 004012FC 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00401300 256B35B6 */  addiu $t3, %lo(B_100035B6) # addiu $t3, $t3, 0x35b6
/* 00401304 AD4B0004 */  sw    $t3, 4($t2)
.LABEL_00401308:
/* 00401308 8FAC0030 */  lw    $t4, 0x30($sp)
/* 0040130C 00001025 */  move  $v0, $zero
/* 00401310 8D8D0000 */  lw    $t5, ($t4)
/* 00401314 35AE0600 */  ori   $t6, $t5, 0x600
/* 00401318 AD8E0000 */  sw    $t6, ($t4)
.LABEL_0040131C:
/* 0040131C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401320 27BD0030 */  addiu $sp, $sp, 0x30
/* 00401324 03E00008 */  jr    $ra
/* 00401328 00000000 */   nop   
    .type getcode, @function
    .size getcode, .-getcode
    .end getcode

/* 0040132C 00000000 */  nop   
glabel error
    .ent error
    # 00401AFC main
/* 00401330 3C1C0FC1 */  .cpload $t9
/* 00401334 279C9FC0 */  
/* 00401338 0399E021 */  
/* 0040133C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00401340 8F998050 */  lw    $t9, %call16(fprintf)($gp)
/* 00401344 AFA40020 */  sw    $a0, 0x20($sp)
/* 00401348 8F848028 */  lw     $a0, %got(__iob)($gp)
/* 0040134C 8F85801C */  lw    $a1, %got(RO_10003020)($gp)
/* 00401350 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401354 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401358 8FA60020 */  lw    $a2, 0x20($sp)
/* 0040135C 24840020 */  addiu $a0, $a0, 0x20
/* 00401360 0320F809 */  jalr  $t9
/* 00401364 24A53020 */   addiu $a1, %lo(RO_10003020) # addiu $a1, $a1, 0x3020
/* 00401368 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040136C 24040001 */  li    $a0, 1
/* 00401370 8F998034 */  lw    $t9, %call16(exit)($gp)
/* 00401374 0320F809 */  jalr  $t9
/* 00401378 00000000 */   nop   
/* 0040137C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401380 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401384 27BD0020 */  addiu $sp, $sp, 0x20
/* 00401388 03E00008 */  jr    $ra
/* 0040138C 00000000 */   nop   
    .type error, @function
    .size error, .-error
    .end error

    .type func_00401390, @function
func_00401390:
    # 00401500 func_00401500
/* 00401390 3C1C0FC1 */  .cpload $t9
/* 00401394 279C9F60 */  
/* 00401398 0399E021 */  
/* 0040139C 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 004013A0 8F84801C */  lw    $a0, %got(RO_1000302C)($gp)
/* 004013A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004013A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004013AC AFBC0018 */  sw    $gp, 0x18($sp)
/* 004013B0 0320F809 */  jalr  $t9
/* 004013B4 2484302C */   addiu $a0, %lo(RO_1000302C) # addiu $a0, $a0, 0x302c
/* 004013B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004013BC 00002025 */  move  $a0, $zero
/* 004013C0 8F998034 */  lw    $t9, %call16(exit)($gp)
/* 004013C4 0320F809 */  jalr  $t9
/* 004013C8 00000000 */   nop   
/* 004013CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004013D0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004013D4 27BD0020 */  addiu $sp, $sp, 0x20
/* 004013D8 03E00008 */  jr    $ra
/* 004013DC 00000000 */   nop   

    .type func_004013E0, @function
func_004013E0:
    # 00401500 func_00401500
/* 004013E0 3C1C0FC1 */  .cpload $t9
/* 004013E4 279C9F10 */  
/* 004013E8 0399E021 */  
/* 004013EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004013F0 AFA50024 */  sw    $a1, 0x24($sp)
/* 004013F4 8FAE0024 */  lw    $t6, 0x24($sp)
/* 004013F8 8F998054 */  lw    $t9, %call16(strncmp)($gp)
/* 004013FC AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401400 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401404 AFA40020 */  sw    $a0, 0x20($sp)
/* 00401408 AFA60028 */  sw    $a2, 0x28($sp)
/* 0040140C AFA7002C */  sw    $a3, 0x2c($sp)
/* 00401410 8DCF0000 */  lw    $t7, ($t6)
/* 00401414 8FA50028 */  lw    $a1, 0x28($sp)
/* 00401418 24060002 */  li    $a2, 2
/* 0040141C 0320F809 */  jalr  $t9
/* 00401420 8DE40000 */   lw    $a0, ($t7)
/* 00401424 14400028 */  bnez  $v0, .LABEL_004014C8
/* 00401428 8FBC0018 */   lw    $gp, 0x18($sp)
/* 0040142C 8F98801C */  lw    $t8, %got(D_100032F0)($gp)
/* 00401430 8FB9002C */  lw    $t9, 0x2c($sp)
/* 00401434 24080100 */  li    $t0, 256
/* 00401438 8F1832F0 */  lw    $t8, %lo(D_100032F0)($t8)
/* 0040143C 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 00401440 03284804 */  sllv  $t1, $t0, $t9
/* 00401444 8FAC0024 */  lw    $t4, 0x24($sp)
/* 00401448 352A0004 */  ori   $t2, $t1, 4
/* 0040144C 030A5825 */  or    $t3, $t8, $t2
/* 00401450 AC2B32F0 */  sw    $t3, %lo(D_100032F0)($at)
/* 00401454 8D8D0000 */  lw    $t5, ($t4)
/* 00401458 8DAE0000 */  lw    $t6, ($t5)
/* 0040145C 91CF0002 */  lbu   $t7, 2($t6)
/* 00401460 11E00008 */  beqz  $t7, .LABEL_00401484
/* 00401464 00000000 */   nop   
/* 00401468 8F98801C */  lw    $t8, %got(B_100035C0)($gp)
/* 0040146C 00194880 */  sll   $t1, $t9, 2
/* 00401470 25C80002 */  addiu $t0, $t6, 2
/* 00401474 271835C0 */  addiu $t8, %lo(B_100035C0) # addiu $t8, $t8, 0x35c0
/* 00401478 01385021 */  addu  $t2, $t1, $t8
/* 0040147C 10000012 */  b     .LABEL_004014C8
/* 00401480 AD480000 */   sw    $t0, ($t2)
.LABEL_00401484:
/* 00401484 8FAB0024 */  lw    $t3, 0x24($sp)
/* 00401488 8F88801C */  lw    $t0, %got(B_100035C0)($gp)
/* 0040148C 8D6C0000 */  lw    $t4, ($t3)
/* 00401490 250835C0 */  addiu $t0, %lo(B_100035C0) # addiu $t0, $t0, 0x35c0
/* 00401494 258D0004 */  addiu $t5, $t4, 4
/* 00401498 AD6D0000 */  sw    $t5, ($t3)
/* 0040149C 8FAF0024 */  lw    $t7, 0x24($sp)
/* 004014A0 8FA9002C */  lw    $t1, 0x2c($sp)
/* 004014A4 8DEE0000 */  lw    $t6, ($t7)
/* 004014A8 0009C080 */  sll   $t8, $t1, 2
/* 004014AC 03085021 */  addu  $t2, $t8, $t0
/* 004014B0 8DD90000 */  lw    $t9, ($t6)
/* 004014B4 AD590000 */  sw    $t9, ($t2)
/* 004014B8 8FAC0020 */  lw    $t4, 0x20($sp)
/* 004014BC 8D8D0000 */  lw    $t5, ($t4)
/* 004014C0 25ABFFFF */  addiu $t3, $t5, -1
/* 004014C4 AD8B0000 */  sw    $t3, ($t4)
.LABEL_004014C8:
/* 004014C8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004014CC 27BD0020 */  addiu $sp, $sp, 0x20
/* 004014D0 03E00008 */  jr    $ra
/* 004014D4 00000000 */   nop   

    .type func_004014D8, @function
func_004014D8:
    # 004017CC func_004017CC
/* 004014D8 3C1C0FC1 */  .cpload $t9
/* 004014DC 279C9E18 */  
/* 004014E0 0399E021 */  
/* 004014E4 28820030 */  slti  $v0, $a0, 0x30
/* 004014E8 38420001 */  xori  $v0, $v0, 1
/* 004014EC 10400002 */  beqz  $v0, .LABEL_004014F8
/* 004014F0 00000000 */   nop   
/* 004014F4 28820038 */  slti  $v0, $a0, 0x38
.LABEL_004014F8:
/* 004014F8 03E00008 */  jr    $ra
/* 004014FC 00000000 */   nop   

    .type func_00401500, @function
func_00401500:
    # 00401AFC main
/* 00401500 3C1C0FC1 */  .cpload $t9
/* 00401504 279C9DF0 */  
/* 00401508 0399E021 */  
/* 0040150C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00401510 AFA40038 */  sw    $a0, 0x38($sp)
/* 00401514 8FAE0038 */  lw    $t6, 0x38($sp)
/* 00401518 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040151C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00401520 29C10002 */  slti  $at, $t6, 2
/* 00401524 AFA5003C */  sw    $a1, 0x3c($sp)
/* 00401528 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0040152C 10200006 */  beqz  $at, .LABEL_00401548
/* 00401530 AFB00018 */   sw    $s0, 0x18($sp)
/* 00401534 8F998014 */  lw    $t9, %got(func_00401390)($gp)
/* 00401538 27391390 */  addiu $t9, %lo(func_00401390) # addiu $t9, $t9, 0x1390
/* 0040153C 0320F809 */  jalr  $t9
/* 00401540 00000000 */   nop   
/* 00401544 8FBC0020 */  lw    $gp, 0x20($sp)
.LABEL_00401548:
/* 00401548 8F91801C */  lw    $s1, %got(RO_10003110)($gp)
/* 0040154C 8F8F801C */  lw    $t7, %got(B_100035C0)($gp)
/* 00401550 8F98801C */  lw    $t8, %got(B_100035C0)($gp)
/* 00401554 8F99801C */  lw    $t9, %got(B_100035C0)($gp)
/* 00401558 26313110 */  addiu $s1, %lo(RO_10003110) # addiu $s1, $s1, 0x3110
/* 0040155C 25EF35C0 */  addiu $t7, %lo(B_100035C0) # addiu $t7, $t7, 0x35c0
/* 00401560 ADF10008 */  sw    $s1, 8($t7)
/* 00401564 02208025 */  move  $s0, $s1
/* 00401568 271835C0 */  addiu $t8, %lo(B_100035C0) # addiu $t8, $t8, 0x35c0
/* 0040156C AF100004 */  sw    $s0, 4($t8)
/* 00401570 273935C0 */  addiu $t9, %lo(B_100035C0) # addiu $t9, $t9, 0x35c0
/* 00401574 AF300000 */  sw    $s0, ($t9)
/* 00401578 8FA80038 */  lw    $t0, 0x38($sp)
/* 0040157C 01008025 */  move  $s0, $t0
/* 00401580 2509FFFF */  addiu $t1, $t0, -1
/* 00401584 1200008C */  beqz  $s0, .LABEL_004017B8
/* 00401588 AFA90038 */   sw    $t1, 0x38($sp)
.LABEL_0040158C:
/* 0040158C 8F8A801C */  lw    $t2, %got(D_100032F0)($gp)
/* 00401590 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 00401594 8FAB003C */  lw    $t3, 0x3c($sp)
/* 00401598 8D4A32F0 */  lw    $t2, %lo(D_100032F0)($t2)
/* 0040159C 8F85801C */  lw    $a1, %got(RO_10003114)($gp)
/* 004015A0 AFAA0034 */  sw    $t2, 0x34($sp)
/* 004015A4 8D640000 */  lw    $a0, ($t3)
/* 004015A8 0320F809 */  jalr  $t9
/* 004015AC 24A53114 */   addiu $a1, %lo(RO_10003114) # addiu $a1, $a1, 0x3114
/* 004015B0 10400009 */  beqz  $v0, .LABEL_004015D8
/* 004015B4 8FBC0020 */   lw    $gp, 0x20($sp)
/* 004015B8 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 004015BC 8FAC003C */  lw    $t4, 0x3c($sp)
/* 004015C0 8F85801C */  lw    $a1, %got(RO_10003118)($gp)
/* 004015C4 8D840000 */  lw    $a0, ($t4)
/* 004015C8 0320F809 */  jalr  $t9
/* 004015CC 24A53118 */   addiu $a1, %lo(RO_10003118) # addiu $a1, $a1, 0x3118
/* 004015D0 14400006 */  bnez  $v0, .LABEL_004015EC
/* 004015D4 8FBC0020 */   lw    $gp, 0x20($sp)
.LABEL_004015D8:
/* 004015D8 8F998014 */  lw    $t9, %got(func_00401390)($gp)
/* 004015DC 27391390 */  addiu $t9, %lo(func_00401390) # addiu $t9, $t9, 0x1390
/* 004015E0 0320F809 */  jalr  $t9
/* 004015E4 00000000 */   nop   
/* 004015E8 8FBC0020 */  lw    $gp, 0x20($sp)
.LABEL_004015EC:
/* 004015EC 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 004015F0 8FAD003C */  lw    $t5, 0x3c($sp)
/* 004015F4 8F85801C */  lw    $a1, %got(RO_1000311C)($gp)
/* 004015F8 8DA40000 */  lw    $a0, ($t5)
/* 004015FC 0320F809 */  jalr  $t9
/* 00401600 24A5311C */   addiu $a1, %lo(RO_1000311C) # addiu $a1, $a1, 0x311c
/* 00401604 14400006 */  bnez  $v0, .LABEL_00401620
/* 00401608 8FBC0020 */   lw    $gp, 0x20($sp)
/* 0040160C 8F8E801C */  lw    $t6, %got(D_100032F0)($gp)
/* 00401610 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 00401614 8DCE32F0 */  lw    $t6, %lo(D_100032F0)($t6)
/* 00401618 35CF0001 */  ori   $t7, $t6, 1
/* 0040161C AC2F32F0 */  sw    $t7, %lo(D_100032F0)($at)
.LABEL_00401620:
/* 00401620 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 00401624 8FB8003C */  lw    $t8, 0x3c($sp)
/* 00401628 8F85801C */  lw    $a1, %got(RO_10003120)($gp)
/* 0040162C 8F040000 */  lw    $a0, ($t8)
/* 00401630 0320F809 */  jalr  $t9
/* 00401634 24A53120 */   addiu $a1, %lo(RO_10003120) # addiu $a1, $a1, 0x3120
/* 00401638 14400006 */  bnez  $v0, .LABEL_00401654
/* 0040163C 8FBC0020 */   lw    $gp, 0x20($sp)
/* 00401640 8F99801C */  lw    $t9, %got(D_100032F0)($gp)
/* 00401644 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 00401648 8F3932F0 */  lw    $t9, %lo(D_100032F0)($t9)
/* 0040164C 37280002 */  ori   $t0, $t9, 2
/* 00401650 AC2832F0 */  sw    $t0, %lo(D_100032F0)($at)
.LABEL_00401654:
/* 00401654 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 00401658 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0040165C 8F85801C */  lw    $a1, %got(RO_10003124)($gp)
/* 00401660 8D240000 */  lw    $a0, ($t1)
/* 00401664 0320F809 */  jalr  $t9
/* 00401668 24A53124 */   addiu $a1, %lo(RO_10003124) # addiu $a1, $a1, 0x3124
/* 0040166C 14400006 */  bnez  $v0, .LABEL_00401688
/* 00401670 8FBC0020 */   lw    $gp, 0x20($sp)
/* 00401674 8F8A801C */  lw    $t2, %got(D_100032F0)($gp)
/* 00401678 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 0040167C 8D4A32F0 */  lw    $t2, %lo(D_100032F0)($t2)
/* 00401680 354B0004 */  ori   $t3, $t2, 4
/* 00401684 AC2B32F0 */  sw    $t3, %lo(D_100032F0)($at)
.LABEL_00401688:
/* 00401688 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 0040168C 8FAC003C */  lw    $t4, 0x3c($sp)
/* 00401690 8F85801C */  lw    $a1, %got(RO_10003128)($gp)
/* 00401694 8D840000 */  lw    $a0, ($t4)
/* 00401698 0320F809 */  jalr  $t9
/* 0040169C 24A53128 */   addiu $a1, %lo(RO_10003128) # addiu $a1, $a1, 0x3128
/* 004016A0 14400006 */  bnez  $v0, .LABEL_004016BC
/* 004016A4 8FBC0020 */   lw    $gp, 0x20($sp)
/* 004016A8 8F8D801C */  lw    $t5, %got(D_100032F0)($gp)
/* 004016AC 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 004016B0 8DAD32F0 */  lw    $t5, %lo(D_100032F0)($t5)
/* 004016B4 35AE0010 */  ori   $t6, $t5, 0x10
/* 004016B8 AC2E32F0 */  sw    $t6, %lo(D_100032F0)($at)
.LABEL_004016BC:
/* 004016BC 8F998048 */  lw    $t9, %call16(strcmp)($gp)
/* 004016C0 8FAF003C */  lw    $t7, 0x3c($sp)
/* 004016C4 8F85801C */  lw    $a1, %got(RO_1000312C)($gp)
/* 004016C8 8DE40000 */  lw    $a0, ($t7)
/* 004016CC 0320F809 */  jalr  $t9
/* 004016D0 24A5312C */   addiu $a1, %lo(RO_1000312C) # addiu $a1, $a1, 0x312c
/* 004016D4 14400006 */  bnez  $v0, .LABEL_004016F0
/* 004016D8 8FBC0020 */   lw    $gp, 0x20($sp)
/* 004016DC 8F98801C */  lw    $t8, %got(D_100032F0)($gp)
/* 004016E0 8F81801C */  lw    $at, %got(D_100032F0)($gp)
/* 004016E4 8F1832F0 */  lw    $t8, %lo(D_100032F0)($t8)
/* 004016E8 37190020 */  ori   $t9, $t8, 0x20
/* 004016EC AC3932F0 */  sw    $t9, %lo(D_100032F0)($at)
.LABEL_004016F0:
/* 004016F0 8F998014 */  lw    $t9, %got(func_004013E0)($gp)
/* 004016F4 8F86801C */  lw    $a2, %got(RO_10003130)($gp)
/* 004016F8 27A40038 */  addiu $a0, $sp, 0x38
/* 004016FC 273913E0 */  addiu $t9, %lo(func_004013E0) # addiu $t9, $t9, 0x13e0
/* 00401700 27A5003C */  addiu $a1, $sp, 0x3c
/* 00401704 00003825 */  move  $a3, $zero
/* 00401708 0320F809 */  jalr  $t9
/* 0040170C 24C63130 */   addiu $a2, %lo(RO_10003130) # addiu $a2, $a2, 0x3130
/* 00401710 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00401714 27A40038 */  addiu $a0, $sp, 0x38
/* 00401718 27A5003C */  addiu $a1, $sp, 0x3c
/* 0040171C 8F998014 */  lw    $t9, %got(func_004013E0)($gp)
/* 00401720 8F86801C */  lw    $a2, %got(RO_10003134)($gp)
/* 00401724 24070001 */  li    $a3, 1
/* 00401728 273913E0 */  addiu $t9, %lo(func_004013E0) # addiu $t9, $t9, 0x13e0
/* 0040172C 0320F809 */  jalr  $t9
/* 00401730 24C63134 */   addiu $a2, %lo(RO_10003134) # addiu $a2, $a2, 0x3134
/* 00401734 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00401738 27A40038 */  addiu $a0, $sp, 0x38
/* 0040173C 27A5003C */  addiu $a1, $sp, 0x3c
/* 00401740 8F998014 */  lw    $t9, %got(func_004013E0)($gp)
/* 00401744 8F86801C */  lw    $a2, %got(RO_10003138)($gp)
/* 00401748 24070002 */  li    $a3, 2
/* 0040174C 273913E0 */  addiu $t9, %lo(func_004013E0) # addiu $t9, $t9, 0x13e0
/* 00401750 0320F809 */  jalr  $t9
/* 00401754 24C63138 */   addiu $a2, %lo(RO_10003138) # addiu $a2, $a2, 0x3138
/* 00401758 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040175C 8FA80034 */  lw    $t0, 0x34($sp)
/* 00401760 8F89801C */  lw    $t1, %got(D_100032F0)($gp)
/* 00401764 8D2932F0 */  lw    $t1, %lo(D_100032F0)($t1)
/* 00401768 1509000B */  bne   $t0, $t1, .LABEL_00401798
/* 0040176C 00000000 */   nop   
/* 00401770 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00401774 11400008 */  beqz  $t2, .LABEL_00401798
/* 00401778 00000000 */   nop   
/* 0040177C 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401780 8F84801C */  lw    $a0, %got(RO_1000313C)($gp)
/* 00401784 8FAB003C */  lw    $t3, 0x3c($sp)
/* 00401788 2484313C */  addiu $a0, %lo(RO_1000313C) # addiu $a0, $a0, 0x313c
/* 0040178C 0320F809 */  jalr  $t9
/* 00401790 8D650000 */   lw    $a1, ($t3)
/* 00401794 8FBC0020 */  lw    $gp, 0x20($sp)
.LABEL_00401798:
/* 00401798 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0040179C 8FAC003C */  lw    $t4, 0x3c($sp)
/* 004017A0 01C08025 */  move  $s0, $t6
/* 004017A4 25CFFFFF */  addiu $t7, $t6, -1
/* 004017A8 258D0004 */  addiu $t5, $t4, 4
/* 004017AC AFAF0038 */  sw    $t7, 0x38($sp)
/* 004017B0 1600FF76 */  bnez  $s0, .LABEL_0040158C
/* 004017B4 AFAD003C */   sw    $t5, 0x3c($sp)
.LABEL_004017B8:
/* 004017B8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004017BC 8FB00018 */  lw    $s0, 0x18($sp)
/* 004017C0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 004017C4 03E00008 */  jr    $ra
/* 004017C8 27BD0038 */   addiu $sp, $sp, 0x38

    .type func_004017CC, @function
func_004017CC:
    # 00401AFC main
/* 004017CC 3C1C0FC1 */  .cpload $t9
/* 004017D0 279C9B24 */  
/* 004017D4 0399E021 */  
/* 004017D8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 004017DC AFA40048 */  sw    $a0, 0x48($sp)
/* 004017E0 AFA5004C */  sw    $a1, 0x4c($sp)
/* 004017E4 8FAE004C */  lw    $t6, 0x4c($sp)
/* 004017E8 8FAF0048 */  lw    $t7, 0x48($sp)
/* 004017EC AFBF001C */  sw    $ra, 0x1c($sp)
/* 004017F0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004017F4 AFB00014 */  sw    $s0, 0x14($sp)
/* 004017F8 AFAE0044 */  sw    $t6, 0x44($sp)
/* 004017FC AFAF0040 */  sw    $t7, 0x40($sp)
/* 00401800 91D80000 */  lbu   $t8, ($t6)
/* 00401804 25D90001 */  addiu $t9, $t6, 1
/* 00401808 AFB90044 */  sw    $t9, 0x44($sp)
/* 0040180C 03008025 */  move  $s0, $t8
/* 00401810 12000080 */  beqz  $s0, .LABEL_00401A14
/* 00401814 A3B8003F */   sb    $t8, 0x3f($sp)
.LABEL_00401818:
/* 00401818 93A8003F */  lbu   $t0, 0x3f($sp)
/* 0040181C 2401005C */  li    $at, 92
/* 00401820 11010007 */  beq   $t0, $at, .LABEL_00401840
/* 00401824 00000000 */   nop   
/* 00401828 8FA90040 */  lw    $t1, 0x40($sp)
/* 0040182C A1280000 */  sb    $t0, ($t1)
/* 00401830 8FAA0040 */  lw    $t2, 0x40($sp)
/* 00401834 254B0001 */  addiu $t3, $t2, 1
/* 00401838 1000006F */  b     .LABEL_004019F8
/* 0040183C AFAB0040 */   sw    $t3, 0x40($sp)
.LABEL_00401840:
/* 00401840 8FAC0044 */  lw    $t4, 0x44($sp)
/* 00401844 2401005C */  li    $at, 92
/* 00401848 918D0000 */  lbu   $t5, ($t4)
/* 0040184C 15A1000A */  bne   $t5, $at, .LABEL_00401878
/* 00401850 00000000 */   nop   
/* 00401854 8FAF0040 */  lw    $t7, 0x40($sp)
/* 00401858 A1ED0000 */  sb    $t5, ($t7)
/* 0040185C 8FB90044 */  lw    $t9, 0x44($sp)
/* 00401860 8FB80040 */  lw    $t8, 0x40($sp)
/* 00401864 27280001 */  addiu $t0, $t9, 1
/* 00401868 270E0001 */  addiu $t6, $t8, 1
/* 0040186C AFAE0040 */  sw    $t6, 0x40($sp)
/* 00401870 10000061 */  b     .LABEL_004019F8
/* 00401874 AFA80044 */   sw    $t0, 0x44($sp)
.LABEL_00401878:
/* 00401878 8F998058 */  lw    $t9, %call16(tolower)($gp)
/* 0040187C 8FA90044 */  lw    $t1, 0x44($sp)
/* 00401880 0320F809 */  jalr  $t9
/* 00401884 91240000 */   lbu   $a0, ($t1)
/* 00401888 24010078 */  li    $at, 120
/* 0040188C 14410036 */  bne   $v0, $at, .LABEL_00401968
/* 00401890 8FBC0018 */   lw    $gp, 0x18($sp)
/* 00401894 AFA00030 */  sw    $zero, 0x30($sp)
/* 00401898 AFA00034 */  sw    $zero, 0x34($sp)
/* 0040189C AFA00038 */  sw    $zero, 0x38($sp)
.LABEL_004018A0:
/* 004018A0 8FAA0044 */  lw    $t2, 0x44($sp)
/* 004018A4 8F8D8024 */  lw     $t5, %got(__ctype)($gp)
/* 004018A8 254B0001 */  addiu $t3, $t2, 1
/* 004018AC AFAB0044 */  sw    $t3, 0x44($sp)
/* 004018B0 916C0000 */  lbu   $t4, ($t3)
/* 004018B4 018D7821 */  addu  $t7, $t4, $t5
/* 004018B8 91F80001 */  lbu   $t8, 1($t7)
/* 004018BC 330E0080 */  andi  $t6, $t8, 0x80
/* 004018C0 11C0001C */  beqz  $t6, .LABEL_00401934
/* 004018C4 00000000 */   nop   
/* 004018C8 8FB90038 */  lw    $t9, 0x38($sp)
/* 004018CC 24090001 */  li    $t1, 1
/* 004018D0 AFA90030 */  sw    $t1, 0x30($sp)
/* 004018D4 00194100 */  sll   $t0, $t9, 4
/* 004018D8 AFA80038 */  sw    $t0, 0x38($sp)
/* 004018DC 916A0000 */  lbu   $t2, ($t3)
/* 004018E0 014D6021 */  addu  $t4, $t2, $t5
/* 004018E4 918F0001 */  lbu   $t7, 1($t4)
/* 004018E8 31F80004 */  andi  $t8, $t7, 4
/* 004018EC 13000003 */  beqz  $t8, .LABEL_004018FC
/* 004018F0 00000000 */   nop   
/* 004018F4 10000007 */  b     .LABEL_00401914
/* 004018F8 2550FFD0 */   addiu $s0, $t2, -0x30
.LABEL_004018FC:
/* 004018FC 8F998058 */  lw    $t9, %call16(tolower)($gp)
/* 00401900 8FAE0044 */  lw    $t6, 0x44($sp)
/* 00401904 0320F809 */  jalr  $t9
/* 00401908 91C40000 */   lbu   $a0, ($t6)
/* 0040190C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401910 2450FFA9 */  addiu $s0, $v0, -0x57
.LABEL_00401914:
/* 00401914 8FA90034 */  lw    $t1, 0x34($sp)
/* 00401918 8FB90038 */  lw    $t9, 0x38($sp)
/* 0040191C 252B0001 */  addiu $t3, $t1, 1
/* 00401920 29610002 */  slti  $at, $t3, 2
/* 00401924 03304021 */  addu  $t0, $t9, $s0
/* 00401928 AFA80038 */  sw    $t0, 0x38($sp)
/* 0040192C 1420FFDC */  bnez  $at, .LABEL_004018A0
/* 00401930 AFAB0034 */   sw    $t3, 0x34($sp)
.LABEL_00401934:
/* 00401934 8FAD0030 */  lw    $t5, 0x30($sp)
/* 00401938 11A0002F */  beqz  $t5, .LABEL_004019F8
/* 0040193C 00000000 */   nop   
/* 00401940 8FAC0038 */  lw    $t4, 0x38($sp)
/* 00401944 8FAF0040 */  lw    $t7, 0x40($sp)
/* 00401948 A1EC0000 */  sb    $t4, ($t7)
/* 0040194C 8FAE0044 */  lw    $t6, 0x44($sp)
/* 00401950 8FB80040 */  lw    $t8, 0x40($sp)
/* 00401954 25D90001 */  addiu $t9, $t6, 1
/* 00401958 270A0001 */  addiu $t2, $t8, 1
/* 0040195C AFAA0040 */  sw    $t2, 0x40($sp)
/* 00401960 10000025 */  b     .LABEL_004019F8
/* 00401964 AFB90044 */   sw    $t9, 0x44($sp)
.LABEL_00401968:
/* 00401968 AFA00024 */  sw    $zero, 0x24($sp)
/* 0040196C AFA00028 */  sw    $zero, 0x28($sp)
/* 00401970 AFA0002C */  sw    $zero, 0x2c($sp)
.LABEL_00401974:
/* 00401974 8F998014 */  lw    $t9, %got(func_004014D8)($gp)
/* 00401978 8FA80044 */  lw    $t0, 0x44($sp)
/* 0040197C 273914D8 */  addiu $t9, %lo(func_004014D8) # addiu $t9, $t9, 0x14d8
/* 00401980 0320F809 */  jalr  $t9
/* 00401984 91040000 */   lbu   $a0, ($t0)
/* 00401988 10400012 */  beqz  $v0, .LABEL_004019D4
/* 0040198C 8FBC0018 */   lw    $gp, 0x18($sp)
/* 00401990 8FA9002C */  lw    $t1, 0x2c($sp)
/* 00401994 8FAC0044 */  lw    $t4, 0x44($sp)
/* 00401998 240D0001 */  li    $t5, 1
/* 0040199C 000958C0 */  sll   $t3, $t1, 3
/* 004019A0 AFAB002C */  sw    $t3, 0x2c($sp)
/* 004019A4 AFAD0024 */  sw    $t5, 0x24($sp)
/* 004019A8 8FB90028 */  lw    $t9, 0x28($sp)
/* 004019AC 918F0000 */  lbu   $t7, ($t4)
/* 004019B0 258E0001 */  addiu $t6, $t4, 1
/* 004019B4 27280001 */  addiu $t0, $t9, 1
/* 004019B8 016FC021 */  addu  $t8, $t3, $t7
/* 004019BC 270AFFD0 */  addiu $t2, $t8, -0x30
/* 004019C0 29010003 */  slti  $at, $t0, 3
/* 004019C4 AFAA002C */  sw    $t2, 0x2c($sp)
/* 004019C8 AFA80028 */  sw    $t0, 0x28($sp)
/* 004019CC 1420FFE9 */  bnez  $at, .LABEL_00401974
/* 004019D0 AFAE0044 */   sw    $t6, 0x44($sp)
.LABEL_004019D4:
/* 004019D4 8FA90024 */  lw    $t1, 0x24($sp)
/* 004019D8 11200007 */  beqz  $t1, .LABEL_004019F8
/* 004019DC 00000000 */   nop   
/* 004019E0 8FAD002C */  lw    $t5, 0x2c($sp)
/* 004019E4 8FAB0040 */  lw    $t3, 0x40($sp)
/* 004019E8 A16D0000 */  sb    $t5, ($t3)
/* 004019EC 8FAF0040 */  lw    $t7, 0x40($sp)
/* 004019F0 25F80001 */  addiu $t8, $t7, 1
/* 004019F4 AFB80040 */  sw    $t8, 0x40($sp)
.LABEL_004019F8:
/* 004019F8 8FAA0044 */  lw    $t2, 0x44($sp)
/* 004019FC 914C0000 */  lbu   $t4, ($t2)
/* 00401A00 254E0001 */  addiu $t6, $t2, 1
/* 00401A04 AFAE0044 */  sw    $t6, 0x44($sp)
/* 00401A08 01808025 */  move  $s0, $t4
/* 00401A0C 1600FF82 */  bnez  $s0, .LABEL_00401818
/* 00401A10 A3AC003F */   sb    $t4, 0x3f($sp)
.LABEL_00401A14:
/* 00401A14 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401A18 8FA20048 */  lw    $v0, 0x48($sp)
/* 00401A1C 8FB00014 */  lw    $s0, 0x14($sp)
/* 00401A20 03E00008 */  jr    $ra
/* 00401A24 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_00401A28, @function
func_00401A28:
    # 00401AFC main
/* 00401A28 3C1C0FC1 */  .cpload $t9
/* 00401A2C 279C98C8 */  
/* 00401A30 0399E021 */  
/* 00401A34 8F8E801C */  lw    $t6, %got(D_100032F0)($gp)
/* 00401A38 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00401A3C 24010010 */  li    $at, 16
/* 00401A40 8DCE32F0 */  lw    $t6, %lo(D_100032F0)($t6)
/* 00401A44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401A48 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401A4C 31CF0030 */  andi  $t7, $t6, 0x30
/* 00401A50 15E10003 */  bne   $t7, $at, .LABEL_00401A60
/* 00401A54 AFA40028 */   sw    $a0, 0x28($sp)
/* 00401A58 10000024 */  b     .LABEL_00401AEC
/* 00401A5C 00001025 */   move  $v0, $zero
.LABEL_00401A60:
/* 00401A60 8F98801C */  lw    $t8, %got(D_100032F0)($gp)
/* 00401A64 24010020 */  li    $at, 32
/* 00401A68 8F1832F0 */  lw    $t8, %lo(D_100032F0)($t8)
/* 00401A6C 33190030 */  andi  $t9, $t8, 0x30
/* 00401A70 17210003 */  bne   $t9, $at, .LABEL_00401A80
/* 00401A74 00000000 */   nop   
/* 00401A78 1000001C */  b     .LABEL_00401AEC
/* 00401A7C 24020001 */   li    $v0, 1
.LABEL_00401A80:
/* 00401A80 8F998040 */  lw    $t9, %call16(strlen)($gp)
/* 00401A84 8FA40028 */  lw    $a0, 0x28($sp)
/* 00401A88 0320F809 */  jalr  $t9
/* 00401A8C 00000000 */   nop   
/* 00401A90 8FA80028 */  lw    $t0, 0x28($sp)
/* 00401A94 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401A98 00484821 */  addu  $t1, $v0, $t0
/* 00401A9C 912AFFFF */  lbu   $t2, -1($t1)
/* 00401AA0 8F99805C */  lw    $t9, %call16(toupper)($gp)
/* 00401AA4 AFAA0024 */  sw    $t2, 0x24($sp)
/* 00401AA8 0320F809 */  jalr  $t9
/* 00401AAC 01402025 */   move  $a0, $t2
/* 00401AB0 24010042 */  li    $at, 66
/* 00401AB4 14410003 */  bne   $v0, $at, .LABEL_00401AC4
/* 00401AB8 8FBC0018 */   lw    $gp, 0x18($sp)
/* 00401ABC 1000000B */  b     .LABEL_00401AEC
/* 00401AC0 00001025 */   move  $v0, $zero
.LABEL_00401AC4:
/* 00401AC4 8F99805C */  lw    $t9, %call16(toupper)($gp)
/* 00401AC8 8FA40024 */  lw    $a0, 0x24($sp)
/* 00401ACC 0320F809 */  jalr  $t9
/* 00401AD0 00000000 */   nop   
/* 00401AD4 2401004C */  li    $at, 76
/* 00401AD8 14410003 */  bne   $v0, $at, .LABEL_00401AE8
/* 00401ADC 8FBC0018 */   lw    $gp, 0x18($sp)
/* 00401AE0 10000002 */  b     .LABEL_00401AEC
/* 00401AE4 24020001 */   li    $v0, 1
.LABEL_00401AE8:
/* 00401AE8 24020002 */  li    $v0, 2
.LABEL_00401AEC:
/* 00401AEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401AF0 27BD0028 */  addiu $sp, $sp, 0x28
/* 00401AF4 03E00008 */  jr    $ra
/* 00401AF8 00000000 */   nop   

glabel main
    .ent main
/* 00401AFC 3C1C0FC1 */  .cpload $t9
/* 00401B00 279C97F4 */  
/* 00401B04 0399E021 */  
/* 00401B08 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00401B0C 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401B10 AFA40030 */  sw    $a0, 0x30($sp)
/* 00401B14 8F84801C */  lw    $a0, %got(RO_10003164)($gp)
/* 00401B18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401B1C 240E0001 */  li    $t6, 1
/* 00401B20 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401B24 AFA50034 */  sw    $a1, 0x34($sp)
/* 00401B28 AFB00014 */  sw    $s0, 0x14($sp)
/* 00401B2C AFAE0028 */  sw    $t6, 0x28($sp)
/* 00401B30 0320F809 */  jalr  $t9
/* 00401B34 24843164 */   addiu $a0, %lo(RO_10003164) # addiu $a0, $a0, 0x3164
/* 00401B38 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401B3C 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401B40 8F84801C */  lw    $a0, %got(RO_10003194)($gp)
/* 00401B44 0320F809 */  jalr  $t9
/* 00401B48 24843194 */   addiu $a0, %lo(RO_10003194) # addiu $a0, $a0, 0x3194
/* 00401B4C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401B50 8FA40030 */  lw    $a0, 0x30($sp)
/* 00401B54 8FA50034 */  lw    $a1, 0x34($sp)
/* 00401B58 8F998014 */  lw    $t9, %got(func_00401500)($gp)
/* 00401B5C 2484FFFF */  addiu $a0, $a0, -1
/* 00401B60 24A50004 */  addiu $a1, $a1, 4
/* 00401B64 27391500 */  addiu $t9, %lo(func_00401500) # addiu $t9, $t9, 0x1500
/* 00401B68 0320F809 */  jalr  $t9
/* 00401B6C 00000000 */   nop   
/* 00401B70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401B74 8F8F801C */  lw    $t7, %got(D_100032F0)($gp)
/* 00401B78 8DEF32F0 */  lw    $t7, %lo(D_100032F0)($t7)
/* 00401B7C 31F80004 */  andi  $t8, $t7, 4
/* 00401B80 1300000E */  beqz  $t8, .LABEL_00401BBC
/* 00401B84 00000000 */   nop   
/* 00401B88 8FA80030 */  lw    $t0, 0x30($sp)
/* 00401B8C 8FB90034 */  lw    $t9, 0x34($sp)
/* 00401B90 8F86801C */  lw    $a2, %got(B_100035C0)($gp)
/* 00401B94 00084880 */  sll   $t1, $t0, 2
/* 00401B98 03295021 */  addu  $t2, $t9, $t1
/* 00401B9C 8F998084 */  lw    $t9, %call16(getcode)($gp)
/* 00401BA0 8F84801C */  lw    $a0, %got(D_100032F0)($gp)
/* 00401BA4 24C635C0 */  addiu $a2, %lo(B_100035C0) # addiu $a2, $a2, 0x35c0
/* 00401BA8 24C60004 */  addiu $a2, $a2, 4
/* 00401BAC 8D45FFFC */  lw    $a1, -4($t2)
/* 00401BB0 0320F809 */  jalr  $t9
/* 00401BB4 248432F0 */   addiu $a0, %lo(D_100032F0) # addiu $a0, $a0, 0x32f0
/* 00401BB8 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401BBC:
/* 00401BBC 8F8B801C */  lw    $t3, %got(D_100032F0)($gp)
/* 00401BC0 8D6B32F0 */  lw    $t3, %lo(D_100032F0)($t3)
/* 00401BC4 316C0100 */  andi  $t4, $t3, 0x100
/* 00401BC8 1180000F */  beqz  $t4, .LABEL_00401C08
/* 00401BCC 00000000 */   nop   
/* 00401BD0 8F8D801C */  lw    $t5, %got(B_100035C0)($gp)
/* 00401BD4 8F998014 */  lw    $t9, %got(func_004017CC)($gp)
/* 00401BD8 8F84801C */  lw    $a0, %got(B_100035D0)($gp)
/* 00401BDC 25AD35C0 */  addiu $t5, %lo(B_100035C0) # addiu $t5, $t5, 0x35c0
/* 00401BE0 273917CC */  addiu $t9, %lo(func_004017CC) # addiu $t9, $t9, 0x17cc
/* 00401BE4 8DA50000 */  lw    $a1, ($t5)
/* 00401BE8 0320F809 */  jalr  $t9
/* 00401BEC 248435D0 */   addiu $a0, %lo(B_100035D0) # addiu $a0, $a0, 0x35d0
/* 00401BF0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401BF4 8F8E801C */  lw    $t6, %got(B_100035D0)($gp)
/* 00401BF8 8F8F801C */  lw    $t7, %got(B_100035C0)($gp)
/* 00401BFC 25CE35D0 */  addiu $t6, %lo(B_100035D0) # addiu $t6, $t6, 0x35d0
/* 00401C00 25EF35C0 */  addiu $t7, %lo(B_100035C0) # addiu $t7, $t7, 0x35c0
/* 00401C04 ADEE0000 */  sw    $t6, ($t7)
.LABEL_00401C08:
/* 00401C08 8F98801C */  lw    $t8, %got(D_100032F0)($gp)
/* 00401C0C 8F1832F0 */  lw    $t8, %lo(D_100032F0)($t8)
/* 00401C10 33080200 */  andi  $t0, $t8, 0x200
/* 00401C14 11000010 */  beqz  $t0, .LABEL_00401C58
/* 00401C18 00000000 */   nop   
/* 00401C1C 8F99801C */  lw    $t9, %got(B_100035C0)($gp)
/* 00401C20 8F84801C */  lw    $a0, %got(B_100035E8)($gp)
/* 00401C24 273935C0 */  addiu $t9, %lo(B_100035C0) # addiu $t9, $t9, 0x35c0
/* 00401C28 8F250004 */  lw    $a1, 4($t9)
/* 00401C2C 8F998014 */  lw    $t9, %got(func_004017CC)($gp)
/* 00401C30 248435E8 */  addiu $a0, %lo(B_100035E8) # addiu $a0, $a0, 0x35e8
/* 00401C34 273917CC */  addiu $t9, %lo(func_004017CC) # addiu $t9, $t9, 0x17cc
/* 00401C38 0320F809 */  jalr  $t9
/* 00401C3C 00000000 */   nop   
/* 00401C40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401C44 8F89801C */  lw    $t1, %got(B_100035E8)($gp)
/* 00401C48 8F8A801C */  lw    $t2, %got(B_100035C0)($gp)
/* 00401C4C 252935E8 */  addiu $t1, %lo(B_100035E8) # addiu $t1, $t1, 0x35e8
/* 00401C50 254A35C0 */  addiu $t2, %lo(B_100035C0) # addiu $t2, $t2, 0x35c0
/* 00401C54 AD490004 */  sw    $t1, 4($t2)
.LABEL_00401C58:
/* 00401C58 8F8B801C */  lw    $t3, %got(D_100032F0)($gp)
/* 00401C5C 8D6B32F0 */  lw    $t3, %lo(D_100032F0)($t3)
/* 00401C60 316C0400 */  andi  $t4, $t3, 0x400
/* 00401C64 1180000F */  beqz  $t4, .LABEL_00401CA4
/* 00401C68 00000000 */   nop   
/* 00401C6C 8F8D801C */  lw    $t5, %got(B_100035C0)($gp)
/* 00401C70 8F998014 */  lw    $t9, %got(func_004017CC)($gp)
/* 00401C74 8F84801C */  lw    $a0, %got(B_100035EE)($gp)
/* 00401C78 25AD35C0 */  addiu $t5, %lo(B_100035C0) # addiu $t5, $t5, 0x35c0
/* 00401C7C 273917CC */  addiu $t9, %lo(func_004017CC) # addiu $t9, $t9, 0x17cc
/* 00401C80 8DA50008 */  lw    $a1, 8($t5)
/* 00401C84 0320F809 */  jalr  $t9
/* 00401C88 248435EE */   addiu $a0, %lo(B_100035EE) # addiu $a0, $a0, 0x35ee
/* 00401C8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401C90 8F8E801C */  lw    $t6, %got(B_100035EE)($gp)
/* 00401C94 8F8F801C */  lw    $t7, %got(B_100035C0)($gp)
/* 00401C98 25CE35EE */  addiu $t6, %lo(B_100035EE) # addiu $t6, $t6, 0x35ee
/* 00401C9C 25EF35C0 */  addiu $t7, %lo(B_100035C0) # addiu $t7, $t7, 0x35c0
/* 00401CA0 ADEE0008 */  sw    $t6, 8($t7)
.LABEL_00401CA4:
/* 00401CA4 8F98801C */  lw    $t8, %got(D_100032F0)($gp)
/* 00401CA8 8F1832F0 */  lw    $t8, %lo(D_100032F0)($t8)
/* 00401CAC 33080004 */  andi  $t0, $t8, 4
/* 00401CB0 11000004 */  beqz  $t0, .LABEL_00401CC4
/* 00401CB4 00000000 */   nop   
/* 00401CB8 8F90801C */  lw    $s0, %got(RO_100031BC)($gp)
/* 00401CBC 10000003 */  b     .LABEL_00401CCC
/* 00401CC0 261031BC */   addiu $s0, %lo(RO_100031BC) # addiu $s0, $s0, 0x31bc
.LABEL_00401CC4:
/* 00401CC4 8F90801C */  lw    $s0, %got(RO_100031C0)($gp)
/* 00401CC8 261031C0 */  addiu $s0, %lo(RO_100031C0) # addiu $s0, $s0, 0x31c0
.LABEL_00401CCC:
/* 00401CCC 8FA90030 */  lw    $t1, 0x30($sp)
/* 00401CD0 8FB90034 */  lw    $t9, 0x34($sp)
/* 00401CD4 02002825 */  move  $a1, $s0
/* 00401CD8 00095080 */  sll   $t2, $t1, 2
/* 00401CDC 032A5821 */  addu  $t3, $t9, $t2
/* 00401CE0 8F998060 */  lw    $t9, %call16(fopen)($gp)
/* 00401CE4 8D64FFFC */  lw    $a0, -4($t3)
/* 00401CE8 0320F809 */  jalr  $t9
/* 00401CEC 00000000 */   nop   
/* 00401CF0 AFA2002C */  sw    $v0, 0x2c($sp)
/* 00401CF4 8FAC002C */  lw    $t4, 0x2c($sp)
/* 00401CF8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401CFC 15800006 */  bnez  $t4, .LABEL_00401D18
/* 00401D00 00000000 */   nop   
/* 00401D04 8F998088 */  lw    $t9, %call16(error)($gp)
/* 00401D08 8F84801C */  lw    $a0, %got(RO_100031C4)($gp)
/* 00401D0C 0320F809 */  jalr  $t9
/* 00401D10 248431C4 */   addiu $a0, %lo(RO_100031C4) # addiu $a0, $a0, 0x31c4
/* 00401D14 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401D18:
/* 00401D18 8FAE0030 */  lw    $t6, 0x30($sp)
/* 00401D1C 8FAD0034 */  lw    $t5, 0x34($sp)
/* 00401D20 8F998014 */  lw    $t9, %got(func_00401A28)($gp)
/* 00401D24 000E7880 */  sll   $t7, $t6, 2
/* 00401D28 01AFC021 */  addu  $t8, $t5, $t7
/* 00401D2C 27391A28 */  addiu $t9, %lo(func_00401A28) # addiu $t9, $t9, 0x1a28
/* 00401D30 0320F809 */  jalr  $t9
/* 00401D34 8F04FFFC */   lw    $a0, -4($t8)
/* 00401D38 AFA20028 */  sw    $v0, 0x28($sp)
/* 00401D3C 8FA80028 */  lw    $t0, 0x28($sp)
/* 00401D40 24010002 */  li    $at, 2
/* 00401D44 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401D48 15010006 */  bne   $t0, $at, .LABEL_00401D64
/* 00401D4C 00000000 */   nop   
/* 00401D50 8F998088 */  lw    $t9, %call16(error)($gp)
/* 00401D54 8F84801C */  lw    $a0, %got(RO_100031D4)($gp)
/* 00401D58 0320F809 */  jalr  $t9
/* 00401D5C 248431D4 */   addiu $a0, %lo(RO_100031D4) # addiu $a0, $a0, 0x31d4
/* 00401D60 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401D64:
/* 00401D64 8FA90028 */  lw    $t1, 0x28($sp)
/* 00401D68 24010001 */  li    $at, 1
/* 00401D6C 15210004 */  bne   $t1, $at, .LABEL_00401D80
/* 00401D70 00000000 */   nop   
/* 00401D74 8F90801C */  lw    $s0, %got(RO_100031F4)($gp)
/* 00401D78 10000003 */  b     .LABEL_00401D88
/* 00401D7C 261031F4 */   addiu $s0, %lo(RO_100031F4) # addiu $s0, $s0, 0x31f4
.LABEL_00401D80:
/* 00401D80 8F90801C */  lw    $s0, %got(RO_100031FC)($gp)
/* 00401D84 261031FC */  addiu $s0, %lo(RO_100031FC) # addiu $s0, $s0, 0x31fc
.LABEL_00401D88:
/* 00401D88 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401D8C 8F84801C */  lw    $a0, %got(RO_100031E8)($gp)
/* 00401D90 02002825 */  move  $a1, $s0
/* 00401D94 0320F809 */  jalr  $t9
/* 00401D98 248431E8 */   addiu $a0, %lo(RO_100031E8) # addiu $a0, $a0, 0x31e8
/* 00401D9C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401DA0 8F99801C */  lw    $t9, %got(D_100032F0)($gp)
/* 00401DA4 8F3932F0 */  lw    $t9, %lo(D_100032F0)($t9)
/* 00401DA8 332A0004 */  andi  $t2, $t9, 4
/* 00401DAC 11400009 */  beqz  $t2, .LABEL_00401DD4
/* 00401DB0 00000000 */   nop   
/* 00401DB4 03202025 */  move  $a0, $t9
/* 00401DB8 8F998094 */  lw    $t9, %call16(nrdc_patch)($gp)
/* 00401DBC 8F87801C */  lw    $a3, %got(B_100035C0)($gp)
/* 00401DC0 8FA50028 */  lw    $a1, 0x28($sp)
/* 00401DC4 8FA6002C */  lw    $a2, 0x2c($sp)
/* 00401DC8 0320F809 */  jalr  $t9
/* 00401DCC 24E735C0 */   addiu $a3, %lo(B_100035C0) # addiu $a3, $a3, 0x35c0
/* 00401DD0 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401DD4:
/* 00401DD4 8F8B801C */  lw    $t3, %got(D_100032F0)($gp)
/* 00401DD8 8D6B32F0 */  lw    $t3, %lo(D_100032F0)($t3)
/* 00401DDC 316C0002 */  andi  $t4, $t3, 2
/* 00401DE0 11800007 */  beqz  $t4, .LABEL_00401E00
/* 00401DE4 00000000 */   nop   
/* 00401DE8 8F998090 */  lw    $t9, %call16(nrdc_dump)($gp)
/* 00401DEC 8FA40028 */  lw    $a0, 0x28($sp)
/* 00401DF0 8FA5002C */  lw    $a1, 0x2c($sp)
/* 00401DF4 0320F809 */  jalr  $t9
/* 00401DF8 00000000 */   nop   
/* 00401DFC 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401E00:
/* 00401E00 8F8E801C */  lw    $t6, %got(D_100032F0)($gp)
/* 00401E04 8DCE32F0 */  lw    $t6, %lo(D_100032F0)($t6)
/* 00401E08 31CD0001 */  andi  $t5, $t6, 1
/* 00401E0C 11A0000C */  beqz  $t5, .LABEL_00401E40
/* 00401E10 00000000 */   nop   
/* 00401E14 8F998064 */  lw    $t9, %call16(rewind)($gp)
/* 00401E18 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00401E1C 0320F809 */  jalr  $t9
/* 00401E20 00000000 */   nop   
/* 00401E24 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401E28 8FA40028 */  lw    $a0, 0x28($sp)
/* 00401E2C 8FA5002C */  lw    $a1, 0x2c($sp)
/* 00401E30 8F998080 */  lw    $t9, %call16(nrdc_crc)($gp)
/* 00401E34 0320F809 */  jalr  $t9
/* 00401E38 00000000 */   nop   
/* 00401E3C 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00401E40:
/* 00401E40 8F998068 */  lw    $t9, %call16(fclose)($gp)
/* 00401E44 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00401E48 0320F809 */  jalr  $t9
/* 00401E4C 00000000 */   nop   
/* 00401E50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401E54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401E58 8FB00014 */  lw    $s0, 0x14($sp)
/* 00401E5C 27BD0030 */  addiu $sp, $sp, 0x30
/* 00401E60 03E00008 */  jr    $ra
/* 00401E64 00001025 */   move  $v0, $zero
    .type main, @function
    .size main, .-main
    .end main

/* 00401E68 00000000 */  nop   
/* 00401E6C 00000000 */  nop   
    .type func_00401E70, @function
func_00401E70:
    # 00402124 nrdc_dump
/* 00401E70 3C1C0FC1 */  .cpload $t9
/* 00401E74 279C9480 */  
/* 00401E78 0399E021 */  
/* 00401E7C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00401E80 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401E84 AFA40028 */  sw    $a0, 0x28($sp)
/* 00401E88 8F84801C */  lw    $a0, %got(RO_10003200)($gp)
/* 00401E8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00401E90 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00401E94 0320F809 */  jalr  $t9
/* 00401E98 24843200 */   addiu $a0, %lo(RO_10003200) # addiu $a0, $a0, 0x3200
/* 00401E9C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401EA0 AFA00024 */  sw    $zero, 0x24($sp)
.LABEL_00401EA4:
/* 00401EA4 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401EA8 8F84801C */  lw    $a0, %got(RO_1000320C)($gp)
/* 00401EAC 8FA50024 */  lw    $a1, 0x24($sp)
/* 00401EB0 0320F809 */  jalr  $t9
/* 00401EB4 2484320C */   addiu $a0, %lo(RO_1000320C) # addiu $a0, $a0, 0x320c
/* 00401EB8 8FAE0024 */  lw    $t6, 0x24($sp)
/* 00401EBC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401EC0 25CF0001 */  addiu $t7, $t6, 1
/* 00401EC4 29E10010 */  slti  $at, $t7, 0x10
/* 00401EC8 1420FFF6 */  bnez  $at, .LABEL_00401EA4
/* 00401ECC AFAF0024 */   sw    $t7, 0x24($sp)
/* 00401ED0 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401ED4 8F84801C */  lw    $a0, %got(RO_10003214)($gp)
/* 00401ED8 24050020 */  li    $a1, 32
/* 00401EDC 0320F809 */  jalr  $t9
/* 00401EE0 24843214 */   addiu $a0, %lo(RO_10003214) # addiu $a0, $a0, 0x3214
/* 00401EE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401EE8 AFA00024 */  sw    $zero, 0x24($sp)
.LABEL_00401EEC:
/* 00401EEC 8FB80028 */  lw    $t8, 0x28($sp)
/* 00401EF0 8FB90024 */  lw    $t9, 0x24($sp)
/* 00401EF4 8F84801C */  lw    $a0, %got(RO_1000321C)($gp)
/* 00401EF8 03194021 */  addu  $t0, $t8, $t9
/* 00401EFC 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401F00 91050000 */  lbu   $a1, ($t0)
/* 00401F04 2484321C */  addiu $a0, %lo(RO_1000321C) # addiu $a0, $a0, 0x321c
/* 00401F08 0320F809 */  jalr  $t9
/* 00401F0C 00000000 */   nop   
/* 00401F10 8FA90024 */  lw    $t1, 0x24($sp)
/* 00401F14 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401F18 252A0001 */  addiu $t2, $t1, 1
/* 00401F1C 29410010 */  slti  $at, $t2, 0x10
/* 00401F20 1420FFF2 */  bnez  $at, .LABEL_00401EEC
/* 00401F24 AFAA0024 */   sw    $t2, 0x24($sp)
/* 00401F28 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401F2C 8F84801C */  lw    $a0, %got(RO_10003224)($gp)
/* 00401F30 24050030 */  li    $a1, 48
/* 00401F34 0320F809 */  jalr  $t9
/* 00401F38 24843224 */   addiu $a0, %lo(RO_10003224) # addiu $a0, $a0, 0x3224
/* 00401F3C 240B0010 */  li    $t3, 16
/* 00401F40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401F44 AFAB0024 */  sw    $t3, 0x24($sp)
.LABEL_00401F48:
/* 00401F48 8FAC0028 */  lw    $t4, 0x28($sp)
/* 00401F4C 8FAD0024 */  lw    $t5, 0x24($sp)
/* 00401F50 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00401F54 8F84801C */  lw    $a0, %got(RO_1000322C)($gp)
/* 00401F58 018D7021 */  addu  $t6, $t4, $t5
/* 00401F5C 91C50000 */  lbu   $a1, ($t6)
/* 00401F60 0320F809 */  jalr  $t9
/* 00401F64 2484322C */   addiu $a0, %lo(RO_1000322C) # addiu $a0, $a0, 0x322c
/* 00401F68 8FAF0024 */  lw    $t7, 0x24($sp)
/* 00401F6C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00401F70 25F80001 */  addiu $t8, $t7, 1
/* 00401F74 2B010020 */  slti  $at, $t8, 0x20
/* 00401F78 1420FFF3 */  bnez  $at, .LABEL_00401F48
/* 00401F7C AFB80024 */   sw    $t8, 0x24($sp)
/* 00401F80 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00401F84 27BD0028 */  addiu $sp, $sp, 0x28
/* 00401F88 03E00008 */  jr    $ra
/* 00401F8C 00000000 */   nop   

    .type func_00401F90, @function
func_00401F90:
    # 00402218 nrdc_patch
/* 00401F90 3C1C0FC1 */  .cpload $t9
/* 00401F94 279C9360 */  
/* 00401F98 0399E021 */  
/* 00401F9C 27BDFFF8 */  addiu $sp, $sp, -8
/* 00401FA0 AFA00000 */  sw    $zero, ($sp)
/* 00401FA4 908E0000 */  lbu   $t6, ($a0)
/* 00401FA8 AFAE0004 */  sw    $t6, 4($sp)
/* 00401FAC 8FAF0004 */  lw    $t7, 4($sp)
/* 00401FB0 11E00016 */  beqz  $t7, .LABEL_0040200C
/* 00401FB4 00000000 */   nop   
.LABEL_00401FB8:
/* 00401FB8 8FB80004 */  lw    $t8, 4($sp)
/* 00401FBC 8F998024 */  lw     $t9, %got(__ctype)($gp)
/* 00401FC0 03194021 */  addu  $t0, $t8, $t9
/* 00401FC4 91090001 */  lbu   $t1, 1($t0)
/* 00401FC8 312A0057 */  andi  $t2, $t1, 0x57
/* 00401FCC 15400009 */  bnez  $t2, .LABEL_00401FF4
/* 00401FD0 2B0100A1 */   slti  $at, $t8, 0xa1
/* 00401FD4 14200007 */  bnez  $at, .LABEL_00401FF4
/* 00401FD8 2B0100DF */   slti  $at, $t8, 0xdf
/* 00401FDC 14200005 */  bnez  $at, .LABEL_00401FF4
/* 00401FE0 00000000 */   nop   
/* 00401FE4 240B0001 */  li    $t3, 1
/* 00401FE8 AFAB0000 */  sw    $t3, ($sp)
/* 00401FEC 240C003F */  li    $t4, 63
/* 00401FF0 A08C0000 */  sb    $t4, ($a0)
.LABEL_00401FF4:
/* 00401FF4 908D0001 */  lbu   $t5, 1($a0)
/* 00401FF8 24840001 */  addiu $a0, $a0, 1
/* 00401FFC AFAD0004 */  sw    $t5, 4($sp)
/* 00402000 8FAE0004 */  lw    $t6, 4($sp)
/* 00402004 15C0FFEC */  bnez  $t6, .LABEL_00401FB8
/* 00402008 00000000 */   nop   
.LABEL_0040200C:
/* 0040200C 8FA20000 */  lw    $v0, ($sp)
/* 00402010 03E00008 */  jr    $ra
/* 00402014 27BD0008 */   addiu $sp, $sp, 8

    .type func_00402018, @function
func_00402018:
    # 00402218 nrdc_patch
/* 00402018 3C1C0FC1 */  .cpload $t9
/* 0040201C 279C92D8 */  
/* 00402020 0399E021 */  
/* 00402024 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00402028 8F998098 */  lw    $t9, %call16(strupr)($gp)
/* 0040202C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00402030 AFA40028 */  sw    $a0, 0x28($sp)
/* 00402034 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00402038 AFA00024 */  sw    $zero, 0x24($sp)
/* 0040203C 0320F809 */  jalr  $t9
/* 00402040 8FA40028 */   lw    $a0, 0x28($sp)
/* 00402044 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00402048 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0040204C 8F988024 */  lw     $t8, %got(__ctype)($gp)
/* 00402050 91CF0000 */  lbu   $t7, ($t6)
/* 00402054 01F8C821 */  addu  $t9, $t7, $t8
/* 00402058 93280001 */  lbu   $t0, 1($t9)
/* 0040205C 31090003 */  andi  $t1, $t0, 3
/* 00402060 15200005 */  bnez  $t1, .LABEL_00402078
/* 00402064 00000000 */   nop   
/* 00402068 240A0001 */  li    $t2, 1
/* 0040206C AFAA0024 */  sw    $t2, 0x24($sp)
/* 00402070 240B004E */  li    $t3, 78
/* 00402074 A1CB0000 */  sb    $t3, ($t6)
.LABEL_00402078:
/* 00402078 8FAC0028 */  lw    $t4, 0x28($sp)
/* 0040207C 8F8F8024 */  lw     $t7, %got(__ctype)($gp)
/* 00402080 918D0001 */  lbu   $t5, 1($t4)
/* 00402084 01AFC021 */  addu  $t8, $t5, $t7
/* 00402088 93190001 */  lbu   $t9, 1($t8)
/* 0040208C 33280007 */  andi  $t0, $t9, 7
/* 00402090 15000005 */  bnez  $t0, .LABEL_004020A8
/* 00402094 00000000 */   nop   
/* 00402098 24090001 */  li    $t1, 1
/* 0040209C AFA90024 */  sw    $t1, 0x24($sp)
/* 004020A0 240A0041 */  li    $t2, 65
/* 004020A4 A18A0001 */  sb    $t2, 1($t4)
.LABEL_004020A8:
/* 004020A8 8FAB0028 */  lw    $t3, 0x28($sp)
/* 004020AC 8F8D8024 */  lw     $t5, %got(__ctype)($gp)
/* 004020B0 916E0002 */  lbu   $t6, 2($t3)
/* 004020B4 01CD7821 */  addu  $t7, $t6, $t5
/* 004020B8 91F80001 */  lbu   $t8, 1($t7)
/* 004020BC 33190007 */  andi  $t9, $t8, 7
/* 004020C0 17200005 */  bnez  $t9, .LABEL_004020D8
/* 004020C4 00000000 */   nop   
/* 004020C8 24080001 */  li    $t0, 1
/* 004020CC AFA80024 */  sw    $t0, 0x24($sp)
/* 004020D0 24090041 */  li    $t1, 65
/* 004020D4 A1690002 */  sb    $t1, 2($t3)
.LABEL_004020D8:
/* 004020D8 8FAA0028 */  lw    $t2, 0x28($sp)
/* 004020DC 8F8E8024 */  lw     $t6, %got(__ctype)($gp)
/* 004020E0 914C0003 */  lbu   $t4, 3($t2)
/* 004020E4 018E6821 */  addu  $t5, $t4, $t6
/* 004020E8 91AF0001 */  lbu   $t7, 1($t5)
/* 004020EC 31F80003 */  andi  $t8, $t7, 3
/* 004020F0 17000005 */  bnez  $t8, .LABEL_00402108
/* 004020F4 00000000 */   nop   
/* 004020F8 24190001 */  li    $t9, 1
/* 004020FC AFB90024 */  sw    $t9, 0x24($sp)
/* 00402100 24080041 */  li    $t0, 65
/* 00402104 A1480003 */  sb    $t0, 3($t2)
.LABEL_00402108:
/* 00402108 8FA90028 */  lw    $t1, 0x28($sp)
/* 0040210C A1200004 */  sb    $zero, 4($t1)
/* 00402110 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00402114 8FA20024 */  lw    $v0, 0x24($sp)
/* 00402118 27BD0028 */  addiu $sp, $sp, 0x28
/* 0040211C 03E00008 */  jr    $ra
/* 00402120 00000000 */   nop   

glabel nrdc_dump
    .ent nrdc_dump
    # 00401AFC main
/* 00402124 3C1C0FC1 */  .cpload $t9
/* 00402128 279C91CC */  
/* 0040212C 0399E021 */  
/* 00402130 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00402134 8F8E801C */  lw    $t6, %got(B_10003600)($gp)
/* 00402138 8F99806C */  lw    $t9, %call16(fseek)($gp)
/* 0040213C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00402140 AFA40030 */  sw    $a0, 0x30($sp)
/* 00402144 AFA50034 */  sw    $a1, 0x34($sp)
/* 00402148 25CE3600 */  addiu $t6, %lo(B_10003600) # addiu $t6, $t6, 0x3600
/* 0040214C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00402150 AFAE002C */  sw    $t6, 0x2c($sp)
/* 00402154 8FA40034 */  lw    $a0, 0x34($sp)
/* 00402158 24050020 */  li    $a1, 32
/* 0040215C 0320F809 */  jalr  $t9
/* 00402160 00003025 */   move  $a2, $zero
/* 00402164 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00402168 24050001 */  li    $a1, 1
/* 0040216C 24060020 */  li    $a2, 32
/* 00402170 8F998070 */  lw    $t9, %call16(fread)($gp)
/* 00402174 8F84801C */  lw    $a0, %got(B_10003600)($gp)
/* 00402178 8FA70034 */  lw    $a3, 0x34($sp)
/* 0040217C 0320F809 */  jalr  $t9
/* 00402180 24843600 */   addiu $a0, %lo(B_10003600) # addiu $a0, $a0, 0x3600
/* 00402184 8FAF0030 */  lw    $t7, 0x30($sp)
/* 00402188 24010001 */  li    $at, 1
/* 0040218C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00402190 15E1000C */  bne   $t7, $at, .LABEL_004021C4
/* 00402194 00000000 */   nop   
/* 00402198 8F998074 */  lw    $t9, %call16(swab)($gp)
/* 0040219C 8F84801C */  lw    $a0, %got(B_10003600)($gp)
/* 004021A0 8F85801C */  lw    $a1, %got(B_10003620)($gp)
/* 004021A4 24060020 */  li    $a2, 32
/* 004021A8 24843600 */  addiu $a0, %lo(B_10003600) # addiu $a0, $a0, 0x3600
/* 004021AC 0320F809 */  jalr  $t9
/* 004021B0 24A53620 */   addiu $a1, %lo(B_10003620) # addiu $a1, $a1, 0x3620
/* 004021B4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004021B8 8F98801C */  lw    $t8, %got(B_10003620)($gp)
/* 004021BC 27183620 */  addiu $t8, %lo(B_10003620) # addiu $t8, $t8, 0x3620
/* 004021C0 AFB8002C */  sw    $t8, 0x2c($sp)
.LABEL_004021C4:
/* 004021C4 8F998014 */  lw    $t9, %got(func_00401E70)($gp)
/* 004021C8 8FA4002C */  lw    $a0, 0x2c($sp)
/* 004021CC 27391E70 */  addiu $t9, %lo(func_00401E70) # addiu $t9, $t9, 0x1e70
/* 004021D0 0320F809 */  jalr  $t9
/* 004021D4 00000000 */   nop   
/* 004021D8 8FB9002C */  lw    $t9, 0x2c($sp)
/* 004021DC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004021E0 24050014 */  li    $a1, 20
/* 004021E4 9328001F */  lbu   $t0, 0x1f($t9)
/* 004021E8 03203025 */  move  $a2, $t9
/* 004021EC 2727001B */  addiu $a3, $t9, 0x1b
/* 004021F0 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 004021F4 8F84801C */  lw    $a0, %got(RO_10003234)($gp)
/* 004021F8 AFA80010 */  sw    $t0, 0x10($sp)
/* 004021FC 0320F809 */  jalr  $t9
/* 00402200 24843234 */   addiu $a0, %lo(RO_10003234) # addiu $a0, $a0, 0x3234
/* 00402204 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00402208 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040220C 27BD0030 */  addiu $sp, $sp, 0x30
/* 00402210 03E00008 */  jr    $ra
/* 00402214 00000000 */   nop   
    .type nrdc_dump, @function
    .size nrdc_dump, .-nrdc_dump
    .end nrdc_dump

glabel nrdc_patch
    .ent nrdc_patch
    # 00401AFC main
/* 00402218 3C1C0FC1 */  .cpload $t9
/* 0040221C 279C90D8 */  
/* 00402220 0399E021 */  
/* 00402224 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00402228 8F8E801C */  lw    $t6, %got(B_10003600)($gp)
/* 0040222C 8F99806C */  lw    $t9, %call16(fseek)($gp)
/* 00402230 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00402234 AFA40030 */  sw    $a0, 0x30($sp)
/* 00402238 AFA50034 */  sw    $a1, 0x34($sp)
/* 0040223C AFA60038 */  sw    $a2, 0x38($sp)
/* 00402240 25CE3600 */  addiu $t6, %lo(B_10003600) # addiu $t6, $t6, 0x3600
/* 00402244 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00402248 AFA7003C */  sw    $a3, 0x3c($sp)
/* 0040224C AFAE002C */  sw    $t6, 0x2c($sp)
/* 00402250 8FA40038 */  lw    $a0, 0x38($sp)
/* 00402254 00003025 */  move  $a2, $zero
/* 00402258 0320F809 */  jalr  $t9
/* 0040225C 24050020 */   li    $a1, 32
/* 00402260 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00402264 24050001 */  li    $a1, 1
/* 00402268 24060020 */  li    $a2, 32
/* 0040226C 8F998070 */  lw    $t9, %call16(fread)($gp)
/* 00402270 8F84801C */  lw    $a0, %got(B_10003600)($gp)
/* 00402274 8FA70038 */  lw    $a3, 0x38($sp)
/* 00402278 0320F809 */  jalr  $t9
/* 0040227C 24843600 */   addiu $a0, %lo(B_10003600) # addiu $a0, $a0, 0x3600
/* 00402280 8FAF0034 */  lw    $t7, 0x34($sp)
/* 00402284 24010001 */  li    $at, 1
/* 00402288 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040228C 15E1000C */  bne   $t7, $at, .LABEL_004022C0
/* 00402290 00000000 */   nop   
/* 00402294 8F998074 */  lw    $t9, %call16(swab)($gp)
/* 00402298 8F84801C */  lw    $a0, %got(B_10003600)($gp)
/* 0040229C 8F85801C */  lw    $a1, %got(B_10003620)($gp)
/* 004022A0 24060020 */  li    $a2, 32
/* 004022A4 24843600 */  addiu $a0, %lo(B_10003600) # addiu $a0, $a0, 0x3600
/* 004022A8 0320F809 */  jalr  $t9
/* 004022AC 24A53620 */   addiu $a1, %lo(B_10003620) # addiu $a1, $a1, 0x3620
/* 004022B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004022B4 8F98801C */  lw    $t8, %got(B_10003620)($gp)
/* 004022B8 27183620 */  addiu $t8, %lo(B_10003620) # addiu $t8, $t8, 0x3620
/* 004022BC AFB8002C */  sw    $t8, 0x2c($sp)
.LABEL_004022C0:
/* 004022C0 8F998078 */  lw    $t9, %call16(memset)($gp)
/* 004022C4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 004022C8 00002825 */  move  $a1, $zero
/* 004022CC 24060007 */  li    $a2, 7
/* 004022D0 0320F809 */  jalr  $t9
/* 004022D4 24840014 */   addiu $a0, $a0, 0x14
/* 004022D8 8FB90030 */  lw    $t9, 0x30($sp)
/* 004022DC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004022E0 33280100 */  andi  $t0, $t9, 0x100
/* 004022E4 11000007 */  beqz  $t0, .LABEL_00402304
/* 004022E8 00000000 */   nop   
/* 004022EC 8F998078 */  lw    $t9, %call16(memset)($gp)
/* 004022F0 8FA4002C */  lw    $a0, 0x2c($sp)
/* 004022F4 24050020 */  li    $a1, 32
/* 004022F8 0320F809 */  jalr  $t9
/* 004022FC 24060014 */   li    $a2, 20
/* 00402300 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00402304:
/* 00402304 8FA90030 */  lw    $t1, 0x30($sp)
/* 00402308 312A0100 */  andi  $t2, $t1, 0x100
/* 0040230C 11400024 */  beqz  $t2, .LABEL_004023A0
/* 00402310 00000000 */   nop   
/* 00402314 8F998014 */  lw    $t9, %got(func_00401F90)($gp)
/* 00402318 8FAB003C */  lw    $t3, 0x3c($sp)
/* 0040231C 27391F90 */  addiu $t9, %lo(func_00401F90) # addiu $t9, $t9, 0x1f90
/* 00402320 0320F809 */  jalr  $t9
/* 00402324 8D640000 */   lw    $a0, ($t3)
/* 00402328 10400006 */  beqz  $v0, .LABEL_00402344
/* 0040232C 8FBC0018 */   lw    $gp, 0x18($sp)
/* 00402330 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 00402334 8F84801C */  lw    $a0, %got(RO_10003270)($gp)
/* 00402338 0320F809 */  jalr  $t9
/* 0040233C 24843270 */   addiu $a0, %lo(RO_10003270) # addiu $a0, $a0, 0x3270
/* 00402340 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00402344:
/* 00402344 8FAC003C */  lw    $t4, 0x3c($sp)
/* 00402348 AFA00024 */  sw    $zero, 0x24($sp)
/* 0040234C 8D8D0000 */  lw    $t5, ($t4)
/* 00402350 91AE0000 */  lbu   $t6, ($t5)
/* 00402354 11C00012 */  beqz  $t6, .LABEL_004023A0
/* 00402358 A3AE002B */   sb    $t6, 0x2b($sp)
.LABEL_0040235C:
/* 0040235C 8FB8002C */  lw    $t8, 0x2c($sp)
/* 00402360 8FB90024 */  lw    $t9, 0x24($sp)
/* 00402364 93AF002B */  lbu   $t7, 0x2b($sp)
/* 00402368 03194021 */  addu  $t0, $t8, $t9
/* 0040236C A10F0000 */  sb    $t7, ($t0)
/* 00402370 8FA90024 */  lw    $t1, 0x24($sp)
/* 00402374 8FAB003C */  lw    $t3, 0x3c($sp)
/* 00402378 252A0001 */  addiu $t2, $t1, 1
/* 0040237C AFAA0024 */  sw    $t2, 0x24($sp)
/* 00402380 8D6C0000 */  lw    $t4, ($t3)
/* 00402384 018A6821 */  addu  $t5, $t4, $t2
/* 00402388 91AE0000 */  lbu   $t6, ($t5)
/* 0040238C 11C00004 */  beqz  $t6, .LABEL_004023A0
/* 00402390 A3AE002B */   sb    $t6, 0x2b($sp)
/* 00402394 29410014 */  slti  $at, $t2, 0x14
/* 00402398 1420FFF0 */  bnez  $at, .LABEL_0040235C
/* 0040239C 00000000 */   nop   
.LABEL_004023A0:
/* 004023A0 8FB80030 */  lw    $t8, 0x30($sp)
/* 004023A4 33190200 */  andi  $t9, $t8, 0x200
/* 004023A8 13200024 */  beqz  $t9, .LABEL_0040243C
/* 004023AC 00000000 */   nop   
/* 004023B0 8F998014 */  lw    $t9, %got(func_00402018)($gp)
/* 004023B4 8FAF003C */  lw    $t7, 0x3c($sp)
/* 004023B8 27392018 */  addiu $t9, %lo(func_00402018) # addiu $t9, $t9, 0x2018
/* 004023BC 0320F809 */  jalr  $t9
/* 004023C0 8DE40004 */   lw    $a0, 4($t7)
/* 004023C4 10400006 */  beqz  $v0, .LABEL_004023E0
/* 004023C8 8FBC0018 */   lw    $gp, 0x18($sp)
/* 004023CC 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 004023D0 8F84801C */  lw    $a0, %got(RO_10003290)($gp)
/* 004023D4 0320F809 */  jalr  $t9
/* 004023D8 24843290 */   addiu $a0, %lo(RO_10003290) # addiu $a0, $a0, 0x3290
/* 004023DC 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_004023E0:
/* 004023E0 8FA8003C */  lw    $t0, 0x3c($sp)
/* 004023E4 AFA00024 */  sw    $zero, 0x24($sp)
/* 004023E8 8D090004 */  lw    $t1, 4($t0)
/* 004023EC 912B0000 */  lbu   $t3, ($t1)
/* 004023F0 11600012 */  beqz  $t3, .LABEL_0040243C
/* 004023F4 A3AB002B */   sb    $t3, 0x2b($sp)
.LABEL_004023F8:
/* 004023F8 8FAD002C */  lw    $t5, 0x2c($sp)
/* 004023FC 8FAE0024 */  lw    $t6, 0x24($sp)
/* 00402400 93AC002B */  lbu   $t4, 0x2b($sp)
/* 00402404 01AE5021 */  addu  $t2, $t5, $t6
/* 00402408 A14C001B */  sb    $t4, 0x1b($t2)
/* 0040240C 8FB80024 */  lw    $t8, 0x24($sp)
/* 00402410 8FAF003C */  lw    $t7, 0x3c($sp)
/* 00402414 27190001 */  addiu $t9, $t8, 1
/* 00402418 AFB90024 */  sw    $t9, 0x24($sp)
/* 0040241C 8DE80004 */  lw    $t0, 4($t7)
/* 00402420 01194821 */  addu  $t1, $t0, $t9
/* 00402424 912B0000 */  lbu   $t3, ($t1)
/* 00402428 11600004 */  beqz  $t3, .LABEL_0040243C
/* 0040242C A3AB002B */   sb    $t3, 0x2b($sp)
/* 00402430 2B210004 */  slti  $at, $t9, 4
/* 00402434 1420FFF0 */  bnez  $at, .LABEL_004023F8
/* 00402438 00000000 */   nop   
.LABEL_0040243C:
/* 0040243C 8FAD0030 */  lw    $t5, 0x30($sp)
/* 00402440 31AE0400 */  andi  $t6, $t5, 0x400
/* 00402444 11C00027 */  beqz  $t6, .LABEL_004024E4
/* 00402448 00000000 */   nop   
/* 0040244C 8FAC003C */  lw    $t4, 0x3c($sp)
/* 00402450 8F8F8024 */  lw     $t7, %got(__ctype)($gp)
/* 00402454 8D8A0008 */  lw    $t2, 8($t4)
/* 00402458 91580000 */  lbu   $t8, ($t2)
/* 0040245C 030F4021 */  addu  $t0, $t8, $t7
/* 00402460 91090001 */  lbu   $t1, 1($t0)
/* 00402464 312B0007 */  andi  $t3, $t1, 7
/* 00402468 15600008 */  bnez  $t3, .LABEL_0040248C
/* 0040246C 00000000 */   nop   
/* 00402470 24190030 */  li    $t9, 48
/* 00402474 A1590000 */  sb    $t9, ($t2)
/* 00402478 8F99803C */  lw    $t9, %call16(printf)($gp)
/* 0040247C 8F84801C */  lw    $a0, %got(RO_100032B0)($gp)
/* 00402480 0320F809 */  jalr  $t9
/* 00402484 248432B0 */   addiu $a0, %lo(RO_100032B0) # addiu $a0, $a0, 0x32b0
/* 00402488 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_0040248C:
/* 0040248C 8FAD003C */  lw    $t5, 0x3c($sp)
/* 00402490 8F988024 */  lw     $t8, %got(__ctype)($gp)
/* 00402494 8DAE0008 */  lw    $t6, 8($t5)
/* 00402498 91CC0000 */  lbu   $t4, ($t6)
/* 0040249C 01987821 */  addu  $t7, $t4, $t8
/* 004024A0 91E80001 */  lbu   $t0, 1($t7)
/* 004024A4 31090004 */  andi  $t1, $t0, 4
/* 004024A8 11200005 */  beqz  $t1, .LABEL_004024C0
/* 004024AC 00000000 */   nop   
/* 004024B0 8FB9002C */  lw    $t9, 0x2c($sp)
/* 004024B4 258BFFD0 */  addiu $t3, $t4, -0x30
/* 004024B8 1000000A */  b     .LABEL_004024E4
/* 004024BC A32B001F */   sb    $t3, 0x1f($t9)
.LABEL_004024C0:
/* 004024C0 8FAA003C */  lw    $t2, 0x3c($sp)
/* 004024C4 8F998058 */  lw    $t9, %call16(tolower)($gp)
/* 004024C8 8D4D0008 */  lw    $t5, 8($t2)
/* 004024CC 0320F809 */  jalr  $t9
/* 004024D0 91A40000 */   lbu   $a0, ($t5)
/* 004024D4 8FB8002C */  lw    $t8, 0x2c($sp)
/* 004024D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004024DC 244EFFA9 */  addiu $t6, $v0, -0x57
/* 004024E0 A30E001F */  sb    $t6, 0x1f($t8)
.LABEL_004024E4:
/* 004024E4 8FAF0034 */  lw    $t7, 0x34($sp)
/* 004024E8 24010001 */  li    $at, 1
/* 004024EC 15E10009 */  bne   $t7, $at, .LABEL_00402514
/* 004024F0 00000000 */   nop   
/* 004024F4 8F998074 */  lw    $t9, %call16(swab)($gp)
/* 004024F8 8F84801C */  lw    $a0, %got(B_10003620)($gp)
/* 004024FC 8F85801C */  lw    $a1, %got(B_10003600)($gp)
/* 00402500 24060020 */  li    $a2, 32
/* 00402504 24843620 */  addiu $a0, %lo(B_10003620) # addiu $a0, $a0, 0x3620
/* 00402508 0320F809 */  jalr  $t9
/* 0040250C 24A53600 */   addiu $a1, %lo(B_10003600) # addiu $a1, $a1, 0x3600
/* 00402510 8FBC0018 */  lw    $gp, 0x18($sp)
.LABEL_00402514:
/* 00402514 8F99806C */  lw    $t9, %call16(fseek)($gp)
/* 00402518 8FA40038 */  lw    $a0, 0x38($sp)
/* 0040251C 24050020 */  li    $a1, 32
/* 00402520 0320F809 */  jalr  $t9
/* 00402524 00003025 */   move  $a2, $zero
/* 00402528 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040252C 24050001 */  li    $a1, 1
/* 00402530 24060020 */  li    $a2, 32
/* 00402534 8F99807C */  lw    $t9, %call16(fwrite)($gp)
/* 00402538 8F84801C */  lw    $a0, %got(B_10003600)($gp)
/* 0040253C 8FA70038 */  lw    $a3, 0x38($sp)
/* 00402540 0320F809 */  jalr  $t9
/* 00402544 24843600 */   addiu $a0, %lo(B_10003600) # addiu $a0, $a0, 0x3600
/* 00402548 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040254C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00402550 27BD0030 */  addiu $sp, $sp, 0x30
/* 00402554 03E00008 */  jr    $ra
/* 00402558 00000000 */   nop   
    .type nrdc_patch, @function
    .size nrdc_patch, .-nrdc_patch
    .end nrdc_patch

/* 0040255C 00000000 */  nop   
glabel strupr
    .ent strupr
    # 004011B0 getcode
    # 00402018 func_00402018
/* 00402560 3C1C0FC1 */  .cpload $t9
/* 00402564 279C8D90 */  
/* 00402568 0399E021 */  
/* 0040256C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00402570 AFA40028 */  sw    $a0, 0x28($sp)
/* 00402574 8FAE0028 */  lw    $t6, 0x28($sp)
/* 00402578 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040257C AFBC0018 */  sw    $gp, 0x18($sp)
/* 00402580 AFAE0024 */  sw    $t6, 0x24($sp)
/* 00402584 91CF0000 */  lbu   $t7, ($t6)
/* 00402588 11E0000F */  beqz  $t7, .LABEL_004025C8
/* 0040258C 00000000 */   nop   
.LABEL_00402590:
/* 00402590 8F99805C */  lw    $t9, %call16(toupper)($gp)
/* 00402594 8FB80024 */  lw    $t8, 0x24($sp)
/* 00402598 0320F809 */  jalr  $t9
/* 0040259C 93040000 */   lbu   $a0, ($t8)
/* 004025A0 8FB90024 */  lw    $t9, 0x24($sp)
/* 004025A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004025A8 A3220000 */  sb    $v0, ($t9)
/* 004025AC 8FA80024 */  lw    $t0, 0x24($sp)
/* 004025B0 25090001 */  addiu $t1, $t0, 1
/* 004025B4 AFA90024 */  sw    $t1, 0x24($sp)
/* 004025B8 8FAA0024 */  lw    $t2, 0x24($sp)
/* 004025BC 914B0000 */  lbu   $t3, ($t2)
/* 004025C0 1560FFF3 */  bnez  $t3, .LABEL_00402590
/* 004025C4 00000000 */   nop   
.LABEL_004025C8:
/* 004025C8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004025CC 8FA20028 */  lw    $v0, 0x28($sp)
/* 004025D0 27BD0028 */  addiu $sp, $sp, 0x28
/* 004025D4 03E00008 */  jr    $ra
/* 004025D8 00000000 */   nop   
    .type strupr, @function
    .size strupr, .-strupr
    .end strupr

/* 004025DC 00000000 */  nop   
