/* Generated by spimdisasm 1.11.1 */

glabel func_00401F90 # 16


# _gp_disp: 0xFC09360
.cpload $t9
/* 001F9C 00401F9C 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 001FA0 00401FA0 AFA00000 */  sw          $zero, 0x0($sp)
/* 001FA4 00401FA4 908E0000 */  lbu         $t6, 0x0($a0)
/* 001FA8 00401FA8 AFAE0004 */  sw          $t6, 0x4($sp)
/* 001FAC 00401FAC 8FAF0004 */  lw          $t7, 0x4($sp)
/* 001FB0 00401FB0 11E00016 */  beqz        $t7, .L0040200C
/* 001FB4 00401FB4 00000000 */   nop
.L00401FB8:
/* 001FB8 00401FB8 8FB80004 */  lw          $t8, 0x4($sp)
/* 001FBC 00401FBC 8F998024 */  lw          $t9, %got(__ctype)($gp)
/* 001FC0 00401FC0 03194021 */  addu        $t0, $t8, $t9
/* 001FC4 00401FC4 91090001 */  lbu         $t1, 0x1($t0)
/* 001FC8 00401FC8 312A0057 */  andi        $t2, $t1, 0x57
/* 001FCC 00401FCC 15400009 */  bnez        $t2, .L00401FF4
/* 001FD0 00401FD0 2B0100A1 */   slti       $at, $t8, 0xA1
/* 001FD4 00401FD4 14200007 */  bnez        $at, .L00401FF4
/* 001FD8 00401FD8 2B0100DF */   slti       $at, $t8, 0xDF
/* 001FDC 00401FDC 14200005 */  bnez        $at, .L00401FF4
/* 001FE0 00401FE0 00000000 */   nop
/* 001FE4 00401FE4 240B0001 */  addiu       $t3, $zero, 0x1
/* 001FE8 00401FE8 AFAB0000 */  sw          $t3, 0x0($sp)
/* 001FEC 00401FEC 240C003F */  addiu       $t4, $zero, 0x3F
/* 001FF0 00401FF0 A08C0000 */  sb          $t4, 0x0($a0)
.L00401FF4:
/* 001FF4 00401FF4 908D0001 */  lbu         $t5, 0x1($a0)
/* 001FF8 00401FF8 24840001 */  addiu       $a0, $a0, 0x1
/* 001FFC 00401FFC AFAD0004 */  sw          $t5, 0x4($sp)
/* 002000 00402000 8FAE0004 */  lw          $t6, 0x4($sp)
/* 002004 00402004 15C0FFEC */  bnez        $t6, .L00401FB8
/* 002008 00402008 00000000 */   nop
.L0040200C:
/* 00200C 0040200C 8FA20000 */  lw          $v0, 0x0($sp)
/* 002010 00402010 03E00008 */  jr          $ra
/* 002014 00402014 27BD0008 */   addiu      $sp, $sp, 0x8
