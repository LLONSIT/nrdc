/* Generated by spimdisasm 1.11.1 */

glabel strupr # 20


# _gp_disp: 0xFC08D90
.cpload $t9
/* 00256C 0040256C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 002570 00402570 AFA40028 */  sw          $a0, 0x28($sp)
/* 002574 00402574 8FAE0028 */  lw          $t6, 0x28($sp)
/* 002578 00402578 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00257C 0040257C AFBC0018 */  sw          $gp, 0x18($sp)
/* 002580 00402580 AFAE0024 */  sw          $t6, 0x24($sp)
/* 002584 00402584 91CF0000 */  lbu         $t7, 0x0($t6)
/* 002588 00402588 11E0000F */  beqz        $t7, .L004025C8
/* 00258C 0040258C 00000000 */   nop
.L00402590:
/* 002590 00402590 8F99805C */  lw          $t9, %call16(toupper)($gp)
/* 002594 00402594 8FB80024 */  lw          $t8, 0x24($sp)
/* 002598 00402598 0320F809 */  jalr        $t9
/* 00259C 0040259C 93040000 */   lbu        $a0, 0x0($t8)
/* 0025A0 004025A0 8FB90024 */  lw          $t9, 0x24($sp)
/* 0025A4 004025A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0025A8 004025A8 A3220000 */  sb          $v0, 0x0($t9)
/* 0025AC 004025AC 8FA80024 */  lw          $t0, 0x24($sp)
/* 0025B0 004025B0 25090001 */  addiu       $t1, $t0, 0x1
/* 0025B4 004025B4 AFA90024 */  sw          $t1, 0x24($sp)
/* 0025B8 004025B8 8FAA0024 */  lw          $t2, 0x24($sp)
/* 0025BC 004025BC 914B0000 */  lbu         $t3, 0x0($t2)
/* 0025C0 004025C0 1560FFF3 */  bnez        $t3, .L00402590
/* 0025C4 004025C4 00000000 */   nop
.L004025C8:
/* 0025C8 004025C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0025CC 004025CC 8FA20028 */  lw          $v0, 0x28($sp)
/* 0025D0 004025D0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0025D4 004025D4 03E00008 */  jr          $ra
/* 0025D8 004025D8 00000000 */   nop
/* 0025DC 004025DC 00000000 */  nop
