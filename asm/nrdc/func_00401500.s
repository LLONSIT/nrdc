.section .rodata
glabel STR_10003114
/* 003114 10003114 */ .asciz "-h"
                      .balign 4

glabel STR_10003118
/* 003118 10003118 */ .asciz "-?"
                      .balign 4

glabel STR_1000311C
/* 00311C 1000311C */ .asciz "-c"
                      .balign 4

glabel STR_10003120
/* 003120 10003120 */ .asciz "-d"
                      .balign 4

glabel STR_10003124
/* 003124 10003124 */ .asciz "-p"
                      .balign 4

glabel STR_10003128
/* 003128 10003128 */ .asciz "-b"
                      .balign 4

glabel STR_1000312C
/* 00312C 1000312C */ .asciz "-l"
                      .balign 4

glabel STR_10003130
/* 003130 10003130 */ .asciz "-t"
                      .balign 4

glabel STR_10003134
/* 003134 10003134 */ .asciz "-i"
                      .balign 4

glabel STR_10003138
/* 003138 10003138 */ .asciz "-v"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.11.1 */

glabel func_00401500 # 11


# _gp_disp: 0xFC09DF0
.cpload $t9
/* 00150C 0040150C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 001510 00401510 AFA40038 */  sw          $a0, 0x38($sp)
/* 001514 00401514 8FAE0038 */  lw          $t6, 0x38($sp)
/* 001518 00401518 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00151C 0040151C AFBC0020 */  sw          $gp, 0x20($sp)
/* 001520 00401520 29C10002 */  slti        $at, $t6, 0x2
/* 001524 00401524 AFA5003C */  sw          $a1, 0x3C($sp)
/* 001528 00401528 AFB1001C */  sw          $s1, 0x1C($sp)
/* 00152C 0040152C 10200006 */  beqz        $at, .L00401548
/* 001530 00401530 AFB00018 */   sw         $s0, 0x18($sp)
/* 001534 00401534 8F998014 */  lw          $t9, %got(func_00401390)($gp)
/* 001538 00401538 27391390 */  addiu       $t9, $t9, %lo(func_00401390)
/* 00153C 0040153C 0320F809 */  jalr        $t9
/* 001540 00401540 00000000 */   nop
/* 001544 00401544 8FBC0020 */  lw          $gp, 0x20($sp)
.L00401548:
/* 001548 00401548 8F91801C */  lw          $s1, %got(RO_10003110)($gp)
/* 00154C 0040154C 8F8F801C */  lw          $t7, %got(B_100035C0)($gp)
/* 001550 00401550 8F98801C */  lw          $t8, %got(B_100035C0)($gp)
/* 001554 00401554 8F99801C */  lw          $t9, %got(B_100035C0)($gp)
/* 001558 00401558 26313110 */  addiu       $s1, $s1, %lo(RO_10003110)
/* 00155C 0040155C 25EF35C0 */  addiu       $t7, $t7, %lo(B_100035C0)
/* 001560 00401560 ADF10008 */  sw          $s1, 0x8($t7)
/* 001564 00401564 02208025 */  move        $s0, $s1
/* 001568 00401568 271835C0 */  addiu       $t8, $t8, %lo(B_100035C0)
/* 00156C 0040156C AF100004 */  sw          $s0, 0x4($t8)
/* 001570 00401570 273935C0 */  addiu       $t9, $t9, %lo(B_100035C0)
/* 001574 00401574 AF300000 */  sw          $s0, 0x0($t9)
/* 001578 00401578 8FA80038 */  lw          $t0, 0x38($sp)
/* 00157C 0040157C 01008025 */  move        $s0, $t0
/* 001580 00401580 2509FFFF */  addiu       $t1, $t0, -0x1
/* 001584 00401584 1200008C */  beqz        $s0, .L004017B8
/* 001588 00401588 AFA90038 */   sw         $t1, 0x38($sp)
.L0040158C:
/* 00158C 0040158C 8F8A801C */  lw          $t2, %got(D_100032F0)($gp)
/* 001590 00401590 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 001594 00401594 8FAB003C */  lw          $t3, 0x3C($sp)
/* 001598 00401598 8D4A32F0 */  lw          $t2, %lo(D_100032F0)($t2)
/* 00159C 0040159C 8F85801C */  lw          $a1, %got(STR_10003114)($gp)
/* 0015A0 004015A0 AFAA0034 */  sw          $t2, 0x34($sp)
/* 0015A4 004015A4 8D640000 */  lw          $a0, 0x0($t3)
/* 0015A8 004015A8 0320F809 */  jalr        $t9
/* 0015AC 004015AC 24A53114 */   addiu      $a1, $a1, %lo(STR_10003114)
/* 0015B0 004015B0 10400009 */  beqz        $v0, .L004015D8
/* 0015B4 004015B4 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0015B8 004015B8 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 0015BC 004015BC 8FAC003C */  lw          $t4, 0x3C($sp)
/* 0015C0 004015C0 8F85801C */  lw          $a1, %got(STR_10003118)($gp)
/* 0015C4 004015C4 8D840000 */  lw          $a0, 0x0($t4)
/* 0015C8 004015C8 0320F809 */  jalr        $t9
/* 0015CC 004015CC 24A53118 */   addiu      $a1, $a1, %lo(STR_10003118)
/* 0015D0 004015D0 14400006 */  bnez        $v0, .L004015EC
/* 0015D4 004015D4 8FBC0020 */   lw         $gp, 0x20($sp)
.L004015D8:
/* 0015D8 004015D8 8F998014 */  lw          $t9, %got(func_00401390)($gp)
/* 0015DC 004015DC 27391390 */  addiu       $t9, $t9, %lo(func_00401390)
/* 0015E0 004015E0 0320F809 */  jalr        $t9
/* 0015E4 004015E4 00000000 */   nop
/* 0015E8 004015E8 8FBC0020 */  lw          $gp, 0x20($sp)
.L004015EC:
/* 0015EC 004015EC 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 0015F0 004015F0 8FAD003C */  lw          $t5, 0x3C($sp)
/* 0015F4 004015F4 8F85801C */  lw          $a1, %got(STR_1000311C)($gp)
/* 0015F8 004015F8 8DA40000 */  lw          $a0, 0x0($t5)
/* 0015FC 004015FC 0320F809 */  jalr        $t9
/* 001600 00401600 24A5311C */   addiu      $a1, $a1, %lo(STR_1000311C)
/* 001604 00401604 14400006 */  bnez        $v0, .L00401620
/* 001608 00401608 8FBC0020 */   lw         $gp, 0x20($sp)
/* 00160C 0040160C 8F8E801C */  lw          $t6, %got(D_100032F0)($gp)
/* 001610 00401610 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 001614 00401614 8DCE32F0 */  lw          $t6, %lo(D_100032F0)($t6)
/* 001618 00401618 35CF0001 */  ori         $t7, $t6, 0x1
/* 00161C 0040161C AC2F32F0 */  sw          $t7, %lo(D_100032F0)($at)
.L00401620:
/* 001620 00401620 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 001624 00401624 8FB8003C */  lw          $t8, 0x3C($sp)
/* 001628 00401628 8F85801C */  lw          $a1, %got(STR_10003120)($gp)
/* 00162C 0040162C 8F040000 */  lw          $a0, 0x0($t8)
/* 001630 00401630 0320F809 */  jalr        $t9
/* 001634 00401634 24A53120 */   addiu      $a1, $a1, %lo(STR_10003120)
/* 001638 00401638 14400006 */  bnez        $v0, .L00401654
/* 00163C 0040163C 8FBC0020 */   lw         $gp, 0x20($sp)
/* 001640 00401640 8F99801C */  lw          $t9, %got(D_100032F0)($gp)
/* 001644 00401644 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 001648 00401648 8F3932F0 */  lw          $t9, %lo(D_100032F0)($t9)
/* 00164C 0040164C 37280002 */  ori         $t0, $t9, 0x2
/* 001650 00401650 AC2832F0 */  sw          $t0, %lo(D_100032F0)($at)
.L00401654:
/* 001654 00401654 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 001658 00401658 8FA9003C */  lw          $t1, 0x3C($sp)
/* 00165C 0040165C 8F85801C */  lw          $a1, %got(STR_10003124)($gp)
/* 001660 00401660 8D240000 */  lw          $a0, 0x0($t1)
/* 001664 00401664 0320F809 */  jalr        $t9
/* 001668 00401668 24A53124 */   addiu      $a1, $a1, %lo(STR_10003124)
/* 00166C 0040166C 14400006 */  bnez        $v0, .L00401688
/* 001670 00401670 8FBC0020 */   lw         $gp, 0x20($sp)
/* 001674 00401674 8F8A801C */  lw          $t2, %got(D_100032F0)($gp)
/* 001678 00401678 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 00167C 0040167C 8D4A32F0 */  lw          $t2, %lo(D_100032F0)($t2)
/* 001680 00401680 354B0004 */  ori         $t3, $t2, 0x4
/* 001684 00401684 AC2B32F0 */  sw          $t3, %lo(D_100032F0)($at)
.L00401688:
/* 001688 00401688 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 00168C 0040168C 8FAC003C */  lw          $t4, 0x3C($sp)
/* 001690 00401690 8F85801C */  lw          $a1, %got(STR_10003128)($gp)
/* 001694 00401694 8D840000 */  lw          $a0, 0x0($t4)
/* 001698 00401698 0320F809 */  jalr        $t9
/* 00169C 0040169C 24A53128 */   addiu      $a1, $a1, %lo(STR_10003128)
/* 0016A0 004016A0 14400006 */  bnez        $v0, .L004016BC
/* 0016A4 004016A4 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0016A8 004016A8 8F8D801C */  lw          $t5, %got(D_100032F0)($gp)
/* 0016AC 004016AC 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 0016B0 004016B0 8DAD32F0 */  lw          $t5, %lo(D_100032F0)($t5)
/* 0016B4 004016B4 35AE0010 */  ori         $t6, $t5, 0x10
/* 0016B8 004016B8 AC2E32F0 */  sw          $t6, %lo(D_100032F0)($at)
.L004016BC:
/* 0016BC 004016BC 8F998048 */  lw          $t9, %call16(strcmp)($gp)
/* 0016C0 004016C0 8FAF003C */  lw          $t7, 0x3C($sp)
/* 0016C4 004016C4 8F85801C */  lw          $a1, %got(STR_1000312C)($gp)
/* 0016C8 004016C8 8DE40000 */  lw          $a0, 0x0($t7)
/* 0016CC 004016CC 0320F809 */  jalr        $t9
/* 0016D0 004016D0 24A5312C */   addiu      $a1, $a1, %lo(STR_1000312C)
/* 0016D4 004016D4 14400006 */  bnez        $v0, .L004016F0
/* 0016D8 004016D8 8FBC0020 */   lw         $gp, 0x20($sp)
/* 0016DC 004016DC 8F98801C */  lw          $t8, %got(D_100032F0)($gp)
/* 0016E0 004016E0 8F81801C */  lw          $at, %got(D_100032F0)($gp)
/* 0016E4 004016E4 8F1832F0 */  lw          $t8, %lo(D_100032F0)($t8)
/* 0016E8 004016E8 37190020 */  ori         $t9, $t8, 0x20
/* 0016EC 004016EC AC3932F0 */  sw          $t9, %lo(D_100032F0)($at)
.L004016F0:
/* 0016F0 004016F0 8F998014 */  lw          $t9, %got(func_004013E0)($gp)
/* 0016F4 004016F4 8F86801C */  lw          $a2, %got(STR_10003130)($gp)
/* 0016F8 004016F8 27A40038 */  addiu       $a0, $sp, 0x38
/* 0016FC 004016FC 273913E0 */  addiu       $t9, $t9, %lo(func_004013E0)
/* 001700 00401700 27A5003C */  addiu       $a1, $sp, 0x3C
/* 001704 00401704 00003825 */  move        $a3, $zero
/* 001708 00401708 0320F809 */  jalr        $t9
/* 00170C 0040170C 24C63130 */   addiu      $a2, $a2, %lo(STR_10003130)
/* 001710 00401710 8FBC0020 */  lw          $gp, 0x20($sp)
/* 001714 00401714 27A40038 */  addiu       $a0, $sp, 0x38
/* 001718 00401718 27A5003C */  addiu       $a1, $sp, 0x3C
/* 00171C 0040171C 8F998014 */  lw          $t9, %got(func_004013E0)($gp)
/* 001720 00401720 8F86801C */  lw          $a2, %got(STR_10003134)($gp)
/* 001724 00401724 24070001 */  addiu       $a3, $zero, 0x1
/* 001728 00401728 273913E0 */  addiu       $t9, $t9, %lo(func_004013E0)
/* 00172C 0040172C 0320F809 */  jalr        $t9
/* 001730 00401730 24C63134 */   addiu      $a2, $a2, %lo(STR_10003134)
/* 001734 00401734 8FBC0020 */  lw          $gp, 0x20($sp)
/* 001738 00401738 27A40038 */  addiu       $a0, $sp, 0x38
/* 00173C 0040173C 27A5003C */  addiu       $a1, $sp, 0x3C
/* 001740 00401740 8F998014 */  lw          $t9, %got(func_004013E0)($gp)
/* 001744 00401744 8F86801C */  lw          $a2, %got(STR_10003138)($gp)
/* 001748 00401748 24070002 */  addiu       $a3, $zero, 0x2
/* 00174C 0040174C 273913E0 */  addiu       $t9, $t9, %lo(func_004013E0)
/* 001750 00401750 0320F809 */  jalr        $t9
/* 001754 00401754 24C63138 */   addiu      $a2, $a2, %lo(STR_10003138)
/* 001758 00401758 8FBC0020 */  lw          $gp, 0x20($sp)
/* 00175C 0040175C 8FA80034 */  lw          $t0, 0x34($sp)
/* 001760 00401760 8F89801C */  lw          $t1, %got(D_100032F0)($gp)
/* 001764 00401764 8D2932F0 */  lw          $t1, %lo(D_100032F0)($t1)
/* 001768 00401768 1509000B */  bne         $t0, $t1, .L00401798
/* 00176C 0040176C 00000000 */   nop
/* 001770 00401770 8FAA0038 */  lw          $t2, 0x38($sp)
/* 001774 00401774 11400008 */  beqz        $t2, .L00401798
/* 001778 00401778 00000000 */   nop
/* 00177C 0040177C 8F99803C */  lw          $t9, %call16(printf)($gp)
/* 001780 00401780 8F84801C */  lw          $a0, %got(RO_1000313C)($gp)
/* 001784 00401784 8FAB003C */  lw          $t3, 0x3C($sp)
/* 001788 00401788 2484313C */  addiu       $a0, $a0, %lo(RO_1000313C)
/* 00178C 0040178C 0320F809 */  jalr        $t9
/* 001790 00401790 8D650000 */   lw         $a1, 0x0($t3)
/* 001794 00401794 8FBC0020 */  lw          $gp, 0x20($sp)
.L00401798:
/* 001798 00401798 8FAE0038 */  lw          $t6, 0x38($sp)
/* 00179C 0040179C 8FAC003C */  lw          $t4, 0x3C($sp)
/* 0017A0 004017A0 01C08025 */  move        $s0, $t6
/* 0017A4 004017A4 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 0017A8 004017A8 258D0004 */  addiu       $t5, $t4, 0x4
/* 0017AC 004017AC AFAF0038 */  sw          $t7, 0x38($sp)
/* 0017B0 004017B0 1600FF76 */  bnez        $s0, .L0040158C
/* 0017B4 004017B4 AFAD003C */   sw         $t5, 0x3C($sp)
.L004017B8:
/* 0017B8 004017B8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0017BC 004017BC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0017C0 004017C0 8FB1001C */  lw          $s1, 0x1C($sp)
/* 0017C4 004017C4 03E00008 */  jr          $ra
/* 0017C8 004017C8 27BD0038 */   addiu      $sp, $sp, 0x38