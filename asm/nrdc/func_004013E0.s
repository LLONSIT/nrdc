/* Generated by spimdisasm 1.11.1 */

glabel func_004013E0 # 9


# _gp_disp: 0xFC09F10
.cpload $t9
/* 0013EC 004013EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0013F0 004013F0 AFA50024 */  sw          $a1, 0x24($sp)
/* 0013F4 004013F4 8FAE0024 */  lw          $t6, 0x24($sp)
/* 0013F8 004013F8 8F998054 */  lw          $t9, %call16(strncmp)($gp)
/* 0013FC 004013FC AFBF001C */  sw          $ra, 0x1C($sp)
/* 001400 00401400 AFBC0018 */  sw          $gp, 0x18($sp)
/* 001404 00401404 AFA40020 */  sw          $a0, 0x20($sp)
/* 001408 00401408 AFA60028 */  sw          $a2, 0x28($sp)
/* 00140C 0040140C AFA7002C */  sw          $a3, 0x2C($sp)
/* 001410 00401410 8DCF0000 */  lw          $t7, 0x0($t6)
/* 001414 00401414 8FA50028 */  lw          $a1, 0x28($sp)
/* 001418 00401418 24060002 */  addiu       $a2, $zero, 0x2
/* 00141C 0040141C 0320F809 */  jalr        $t9
/* 001420 00401420 8DE40000 */   lw         $a0, 0x0($t7)
/* 001424 00401424 14400028 */  bnez        $v0, .L004014C8
/* 001428 00401428 8FBC0018 */   lw         $gp, 0x18($sp)
/* 00142C 0040142C 8F98801C */  lw          $t8, %got(D_100032F0)($gp)
/* 001430 00401430 8FB9002C */  lw          $t9, 0x2C($sp)
/* 001434 00401434 24080100 */  addiu       $t0, $zero, 0x100
/* 001438 00401438 8F1832F0 */  lw          $t8, %lo(D_100032F0)($t8)
/* 00143C 0040143C 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 001440 00401440 03284804 */  sllv        $t1, $t0, $t9
/* 001444 00401444 8FAC0024 */  lw          $t4, 0x24($sp)
/* 001448 00401448 352A0004 */  ori         $t2, $t1, 0x4
/* 00144C 0040144C 030A5825 */  or          $t3, $t8, $t2
/* 001450 00401450 AC2B32F0 */  sw          $t3, %lo(D_100032F0)($at)
/* 001454 00401454 8D8D0000 */  lw          $t5, 0x0($t4)
/* 001458 00401458 8DAE0000 */  lw          $t6, 0x0($t5)
/* 00145C 0040145C 91CF0002 */  lbu         $t7, 0x2($t6)
/* 001460 00401460 11E00008 */  beqz        $t7, .L00401484
/* 001464 00401464 00000000 */   nop
/* 001468 00401468 8F98801C */  lw          $t8, %got(B_100035C0)($gp)
/* 00146C 0040146C 00194880 */  sll         $t1, $t9, 2
/* 001470 00401470 25C80002 */  addiu       $t0, $t6, 0x2
/* 001474 00401474 271835C0 */  addiu       $t8, $t8, %lo(B_100035C0)
/* 001478 00401478 01385021 */  addu        $t2, $t1, $t8
/* 00147C 0040147C 10000012 */  b           .L004014C8
/* 001480 00401480 AD480000 */   sw         $t0, 0x0($t2)
.L00401484:
/* 001484 00401484 8FAB0024 */  lw          $t3, 0x24($sp)
/* 001488 00401488 8F88801C */  lw          $t0, %got(B_100035C0)($gp)
/* 00148C 0040148C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 001490 00401490 250835C0 */  addiu       $t0, $t0, %lo(B_100035C0)
/* 001494 00401494 258D0004 */  addiu       $t5, $t4, 0x4
/* 001498 00401498 AD6D0000 */  sw          $t5, 0x0($t3)
/* 00149C 0040149C 8FAF0024 */  lw          $t7, 0x24($sp)
/* 0014A0 004014A0 8FA9002C */  lw          $t1, 0x2C($sp)
/* 0014A4 004014A4 8DEE0000 */  lw          $t6, 0x0($t7)
/* 0014A8 004014A8 0009C080 */  sll         $t8, $t1, 2
/* 0014AC 004014AC 03085021 */  addu        $t2, $t8, $t0
/* 0014B0 004014B0 8DD90000 */  lw          $t9, 0x0($t6)
/* 0014B4 004014B4 AD590000 */  sw          $t9, 0x0($t2)
/* 0014B8 004014B8 8FAC0020 */  lw          $t4, 0x20($sp)
/* 0014BC 004014BC 8D8D0000 */  lw          $t5, 0x0($t4)
/* 0014C0 004014C0 25ABFFFF */  addiu       $t3, $t5, -0x1
/* 0014C4 004014C4 AD8B0000 */  sw          $t3, 0x0($t4)
.L004014C8:
/* 0014C8 004014C8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0014CC 004014CC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0014D0 004014D0 03E00008 */  jr          $ra
/* 0014D4 004014D4 00000000 */   nop