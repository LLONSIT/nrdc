.section .rodata
glabel STR_10003010
/* 003010 10003010 */ .asciz ".SRB"
                      .balign 4
/* 003018 10003018 */ .asciz ""
                      .balign 4
/* 00301C 1000301C */ .asciz ""
                      .balign 4


.section .text
/* Generated by spimdisasm 1.11.1 */

glabel getcode # 6


# _gp_disp: 0xFC0A140
.cpload $t9
/* 0011BC 004011BC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0011C0 004011C0 8F998040 */  lw          $t9, %call16(strlen)($gp)
/* 0011C4 004011C4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0011C8 004011C8 AFA40030 */  sw          $a0, 0x30($sp)
/* 0011CC 004011CC AFA50034 */  sw          $a1, 0x34($sp)
/* 0011D0 004011D0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0011D4 004011D4 AFA60038 */  sw          $a2, 0x38($sp)
/* 0011D8 004011D8 0320F809 */  jalr        $t9
/* 0011DC 004011DC 8FA40034 */   lw         $a0, 0x34($sp)
/* 0011E0 004011E0 AFA20020 */  sw          $v0, 0x20($sp)
/* 0011E4 004011E4 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0011E8 004011E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0011EC 004011EC 2DC1000B */  sltiu       $at, $t6, 0xB
/* 0011F0 004011F0 14200006 */  bnez        $at, .L0040120C
/* 0011F4 004011F4 00000000 */   nop
/* 0011F8 004011F8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0011FC 004011FC 8DF80000 */  lw          $t8, 0x0($t7)
/* 001200 00401200 33190004 */  andi        $t9, $t8, 0x4
/* 001204 00401204 17200003 */  bnez        $t9, .L00401214
/* 001208 00401208 00000000 */   nop
.L0040120C:
/* 00120C 0040120C 10000043 */  b           .L0040131C
/* 001210 00401210 2402FFFF */   addiu      $v0, $zero, -0x1
.L00401214:
/* 001214 00401214 8FA80034 */  lw          $t0, 0x34($sp)
/* 001218 00401218 8FA90020 */  lw          $t1, 0x20($sp)
/* 00121C 0040121C 8F998044 */  lw          $t9, %call16(strcpy)($gp)
/* 001220 00401220 27A40024 */  addiu       $a0, $sp, 0x24
/* 001224 00401224 01092821 */  addu        $a1, $t0, $t1
/* 001228 00401228 0320F809 */  jalr        $t9
/* 00122C 0040122C 24A5FFF5 */   addiu      $a1, $a1, -0xB
/* 001230 00401230 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001234 00401234 27A40024 */  addiu       $a0, $sp, 0x24
/* 001238 00401238 8F998098 */  lw          $t9, %call16(strupr)($gp)
/* 00123C 0040123C 0320F809 */  jalr        $t9
/* 001240 00401240 00000000 */   nop
/* 001244 00401244 27AA0024 */  addiu       $t2, $sp, 0x24
/* 001248 00401248 914B0000 */  lbu         $t3, 0x0($t2)
/* 00124C 0040124C 24010055 */  addiu       $at, $zero, 0x55
/* 001250 00401250 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001254 00401254 15610008 */  bne         $t3, $at, .L00401278
/* 001258 00401258 00000000 */   nop
/* 00125C 0040125C 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 001260 00401260 8F85801C */  lw          $a1, %got(STR_10003010)($gp)
/* 001264 00401264 25440007 */  addiu       $a0, $t2, 0x7
/* 001268 00401268 0320F809 */  jalr        $t9
/* 00126C 0040126C 24A53010 */   addiu      $a1, $a1, %lo(STR_10003010)
/* 001270 00401270 10400003 */  beqz        $v0, .L00401280
/* 001274 00401274 8FBC0018 */   lw         $gp, 0x18($sp)
.L00401278:
/* 001278 00401278 10000028 */  b           .L0040131C
/* 00127C 0040127C 2402FFFF */   addiu      $v0, $zero, -0x1
.L00401280:
/* 001280 00401280 8F99804C */  lw          $t9, %call16(strncpy)($gp)
/* 001284 00401284 8F84801C */  lw          $a0, %got(B_100035B0)($gp)
/* 001288 00401288 27A50024 */  addiu       $a1, $sp, 0x24
/* 00128C 0040128C 24A50001 */  addiu       $a1, $a1, 0x1
/* 001290 00401290 24060004 */  addiu       $a2, $zero, 0x4
/* 001294 00401294 0320F809 */  jalr        $t9
/* 001298 00401298 248435B0 */   addiu      $a0, $a0, %lo(B_100035B0)
/* 00129C 0040129C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0012A0 004012A0 27A50024 */  addiu       $a1, $sp, 0x24
/* 0012A4 004012A4 24A50005 */  addiu       $a1, $a1, 0x5
/* 0012A8 004012A8 8F99804C */  lw          $t9, %call16(strncpy)($gp)
/* 0012AC 004012AC 8F84801C */  lw          $a0, %got(B_100035B6)($gp)
/* 0012B0 004012B0 24060001 */  addiu       $a2, $zero, 0x1
/* 0012B4 004012B4 0320F809 */  jalr        $t9
/* 0012B8 004012B8 248435B6 */   addiu      $a0, $a0, %lo(B_100035B6)
/* 0012BC 004012BC 8FAC0030 */  lw          $t4, 0x30($sp)
/* 0012C0 004012C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0012C4 004012C4 8D8D0000 */  lw          $t5, 0x0($t4)
/* 0012C8 004012C8 31AE0200 */  andi        $t6, $t5, 0x200
/* 0012CC 004012CC 15C00005 */  bnez        $t6, .L004012E4
/* 0012D0 004012D0 00000000 */   nop
/* 0012D4 004012D4 8F8F801C */  lw          $t7, %got(B_100035B0)($gp)
/* 0012D8 004012D8 8FB80038 */  lw          $t8, 0x38($sp)
/* 0012DC 004012DC 25EF35B0 */  addiu       $t7, $t7, %lo(B_100035B0)
/* 0012E0 004012E0 AF0F0000 */  sw          $t7, 0x0($t8)
.L004012E4:
/* 0012E4 004012E4 8FB90030 */  lw          $t9, 0x30($sp)
/* 0012E8 004012E8 8F280000 */  lw          $t0, 0x0($t9)
/* 0012EC 004012EC 31090400 */  andi        $t1, $t0, 0x400
/* 0012F0 004012F0 15200005 */  bnez        $t1, .L00401308
/* 0012F4 004012F4 00000000 */   nop
/* 0012F8 004012F8 8F8B801C */  lw          $t3, %got(B_100035B6)($gp)
/* 0012FC 004012FC 8FAA0038 */  lw          $t2, 0x38($sp)
/* 001300 00401300 256B35B6 */  addiu       $t3, $t3, %lo(B_100035B6)
/* 001304 00401304 AD4B0004 */  sw          $t3, 0x4($t2)
.L00401308:
/* 001308 00401308 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00130C 0040130C 00001025 */  move        $v0, $zero
/* 001310 00401310 8D8D0000 */  lw          $t5, 0x0($t4)
/* 001314 00401314 35AE0600 */  ori         $t6, $t5, 0x600
/* 001318 00401318 AD8E0000 */  sw          $t6, 0x0($t4)
.L0040131C:
/* 00131C 0040131C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 001320 00401320 27BD0030 */  addiu       $sp, $sp, 0x30
/* 001324 00401324 03E00008 */  jr          $ra
/* 001328 00401328 00000000 */   nop
/* 00132C 0040132C 00000000 */  nop
