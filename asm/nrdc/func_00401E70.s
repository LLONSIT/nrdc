.section .rodata
glabel STR_10003200
/* 003200 10003200 */ .asciz "ROM ADDR"
                      .balign 4

glabel STR_1000320C
/* 00320C 1000320C */ .asciz " +%x"
                      .balign 4

glabel STR_10003214
/* 003214 10003214 */ .asciz "\n%08lx"
                      .balign 4

glabel STR_1000321C
/* 00321C 1000321C */ .asciz " %02x"
                      .balign 4

glabel STR_10003224
/* 003224 10003224 */ .asciz "\n%08lx"
                      .balign 4

glabel STR_1000322C
/* 00322C 1000322C */ .asciz " %02x"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.11.1 */

glabel func_00401E70 # 15


# _gp_disp: 0xFC09480
.cpload $t9
/* 001E7C 00401E7C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 001E80 00401E80 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001E84 00401E84 AFA40028 */  sw          $a0, 0x28($sp)
/* 001E88 00401E88 8F84801C */  lw          $a0, %got(STR_10003200)($gp)
/* 001E8C 00401E8C AFBF001C */  sw          $ra, 0x1C($sp)
/* 001E90 00401E90 AFBC0018 */  sw          $gp, 0x18($sp)
/* 001E94 00401E94 0320F809 */  jalr        $t9
/* 001E98 00401E98 24843200 */   addiu      $a0, $a0, %lo(STR_10003200)
/* 001E9C 00401E9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001EA0 00401EA0 AFA00024 */  sw          $zero, 0x24($sp)
.L00401EA4:
/* 001EA4 00401EA4 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001EA8 00401EA8 8F84801C */  lw          $a0, %got(STR_1000320C)($gp)
/* 001EAC 00401EAC 8FA50024 */  lw          $a1, 0x24($sp)
/* 001EB0 00401EB0 0320F809 */  jalr        $t9
/* 001EB4 00401EB4 2484320C */   addiu      $a0, $a0, %lo(STR_1000320C)
/* 001EB8 00401EB8 8FAE0024 */  lw          $t6, 0x24($sp)
/* 001EBC 00401EBC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001EC0 00401EC0 25CF0001 */  addiu       $t7, $t6, 0x1
/* 001EC4 00401EC4 29E10010 */  slti        $at, $t7, 0x10
/* 001EC8 00401EC8 1420FFF6 */  bnez        $at, .L00401EA4
/* 001ECC 00401ECC AFAF0024 */   sw         $t7, 0x24($sp)
/* 001ED0 00401ED0 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001ED4 00401ED4 8F84801C */  lw          $a0, %got(STR_10003214)($gp)
/* 001ED8 00401ED8 24050020 */  addiu       $a1, $zero, 0x20
/* 001EDC 00401EDC 0320F809 */  jalr        $t9
/* 001EE0 00401EE0 24843214 */   addiu      $a0, $a0, %lo(STR_10003214)
/* 001EE4 00401EE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001EE8 00401EE8 AFA00024 */  sw          $zero, 0x24($sp)
.L00401EEC:
/* 001EEC 00401EEC 8FB80028 */  lw          $t8, 0x28($sp)
/* 001EF0 00401EF0 8FB90024 */  lw          $t9, 0x24($sp)
/* 001EF4 00401EF4 8F84801C */  lw          $a0, %got(STR_1000321C)($gp)
/* 001EF8 00401EF8 03194021 */  addu        $t0, $t8, $t9
/* 001EFC 00401EFC 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001F00 00401F00 91050000 */  lbu         $a1, 0x0($t0)
/* 001F04 00401F04 2484321C */  addiu       $a0, $a0, %lo(STR_1000321C)
/* 001F08 00401F08 0320F809 */  jalr        $t9
/* 001F0C 00401F0C 00000000 */   nop
/* 001F10 00401F10 8FA90024 */  lw          $t1, 0x24($sp)
/* 001F14 00401F14 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001F18 00401F18 252A0001 */  addiu       $t2, $t1, 0x1
/* 001F1C 00401F1C 29410010 */  slti        $at, $t2, 0x10
/* 001F20 00401F20 1420FFF2 */  bnez        $at, .L00401EEC
/* 001F24 00401F24 AFAA0024 */   sw         $t2, 0x24($sp)
/* 001F28 00401F28 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001F2C 00401F2C 8F84801C */  lw          $a0, %got(STR_10003224)($gp)
/* 001F30 00401F30 24050030 */  addiu       $a1, $zero, 0x30
/* 001F34 00401F34 0320F809 */  jalr        $t9
/* 001F38 00401F38 24843224 */   addiu      $a0, $a0, %lo(STR_10003224)
/* 001F3C 00401F3C 240B0010 */  addiu       $t3, $zero, 0x10
/* 001F40 00401F40 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001F44 00401F44 AFAB0024 */  sw          $t3, 0x24($sp)
.L00401F48:
/* 001F48 00401F48 8FAC0028 */  lw          $t4, 0x28($sp)
/* 001F4C 00401F4C 8FAD0024 */  lw          $t5, 0x24($sp)
/* 001F50 00401F50 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001F54 00401F54 8F84801C */  lw          $a0, %got(STR_1000322C)($gp)
/* 001F58 00401F58 018D7021 */  addu        $t6, $t4, $t5
/* 001F5C 00401F5C 91C50000 */  lbu         $a1, 0x0($t6)
/* 001F60 00401F60 0320F809 */  jalr        $t9
/* 001F64 00401F64 2484322C */   addiu      $a0, $a0, %lo(STR_1000322C)
/* 001F68 00401F68 8FAF0024 */  lw          $t7, 0x24($sp)
/* 001F6C 00401F6C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001F70 00401F70 25F80001 */  addiu       $t8, $t7, 0x1
/* 001F74 00401F74 2B010020 */  slti        $at, $t8, 0x20
/* 001F78 00401F78 1420FFF3 */  bnez        $at, .L00401F48
/* 001F7C 00401F7C AFB80024 */   sw         $t8, 0x24($sp)
/* 001F80 00401F80 8FBF001C */  lw          $ra, 0x1C($sp)
/* 001F84 00401F84 27BD0028 */  addiu       $sp, $sp, 0x28
/* 001F88 00401F88 03E00008 */  jr          $ra
/* 001F8C 00401F8C 00000000 */   nop