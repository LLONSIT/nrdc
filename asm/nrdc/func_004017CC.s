/* Generated by spimdisasm 1.11.1 */

glabel func_004017CC # 12


# _gp_disp: 0xFC09B24
.cpload $t9
/* 0017D8 004017D8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0017DC 004017DC AFA40048 */  sw          $a0, 0x48($sp)
/* 0017E0 004017E0 AFA5004C */  sw          $a1, 0x4C($sp)
/* 0017E4 004017E4 8FAE004C */  lw          $t6, 0x4C($sp)
/* 0017E8 004017E8 8FAF0048 */  lw          $t7, 0x48($sp)
/* 0017EC 004017EC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0017F0 004017F0 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0017F4 004017F4 AFB00014 */  sw          $s0, 0x14($sp)
/* 0017F8 004017F8 AFAE0044 */  sw          $t6, 0x44($sp)
/* 0017FC 004017FC AFAF0040 */  sw          $t7, 0x40($sp)
/* 001800 00401800 91D80000 */  lbu         $t8, 0x0($t6)
/* 001804 00401804 25D90001 */  addiu       $t9, $t6, 0x1
/* 001808 00401808 AFB90044 */  sw          $t9, 0x44($sp)
/* 00180C 0040180C 03008025 */  move        $s0, $t8
/* 001810 00401810 12000080 */  beqz        $s0, .L00401A14
/* 001814 00401814 A3B8003F */   sb         $t8, 0x3F($sp)
.L00401818:
/* 001818 00401818 93A8003F */  lbu         $t0, 0x3F($sp)
/* 00181C 0040181C 2401005C */  addiu       $at, $zero, 0x5C
/* 001820 00401820 11010007 */  beq         $t0, $at, .L00401840
/* 001824 00401824 00000000 */   nop
/* 001828 00401828 8FA90040 */  lw          $t1, 0x40($sp)
/* 00182C 0040182C A1280000 */  sb          $t0, 0x0($t1)
/* 001830 00401830 8FAA0040 */  lw          $t2, 0x40($sp)
/* 001834 00401834 254B0001 */  addiu       $t3, $t2, 0x1
/* 001838 00401838 1000006F */  b           .L004019F8
/* 00183C 0040183C AFAB0040 */   sw         $t3, 0x40($sp)
.L00401840:
/* 001840 00401840 8FAC0044 */  lw          $t4, 0x44($sp)
/* 001844 00401844 2401005C */  addiu       $at, $zero, 0x5C
/* 001848 00401848 918D0000 */  lbu         $t5, 0x0($t4)
/* 00184C 0040184C 15A1000A */  bne         $t5, $at, .L00401878
/* 001850 00401850 00000000 */   nop
/* 001854 00401854 8FAF0040 */  lw          $t7, 0x40($sp)
/* 001858 00401858 A1ED0000 */  sb          $t5, 0x0($t7)
/* 00185C 0040185C 8FB90044 */  lw          $t9, 0x44($sp)
/* 001860 00401860 8FB80040 */  lw          $t8, 0x40($sp)
/* 001864 00401864 27280001 */  addiu       $t0, $t9, 0x1
/* 001868 00401868 270E0001 */  addiu       $t6, $t8, 0x1
/* 00186C 0040186C AFAE0040 */  sw          $t6, 0x40($sp)
/* 001870 00401870 10000061 */  b           .L004019F8
/* 001874 00401874 AFA80044 */   sw         $t0, 0x44($sp)
.L00401878:
/* 001878 00401878 8F998058 */  lw          $t9, %call16(tolower)($gp)
/* 00187C 0040187C 8FA90044 */  lw          $t1, 0x44($sp)
/* 001880 00401880 0320F809 */  jalr        $t9
/* 001884 00401884 91240000 */   lbu        $a0, 0x0($t1)
/* 001888 00401888 24010078 */  addiu       $at, $zero, 0x78
/* 00188C 0040188C 14410036 */  bne         $v0, $at, .L00401968
/* 001890 00401890 8FBC0018 */   lw         $gp, 0x18($sp)
/* 001894 00401894 AFA00030 */  sw          $zero, 0x30($sp)
/* 001898 00401898 AFA00034 */  sw          $zero, 0x34($sp)
/* 00189C 0040189C AFA00038 */  sw          $zero, 0x38($sp)
.L004018A0:
/* 0018A0 004018A0 8FAA0044 */  lw          $t2, 0x44($sp)
/* 0018A4 004018A4 8F8D8024 */  lw          $t5, %got(__ctype)($gp)
/* 0018A8 004018A8 254B0001 */  addiu       $t3, $t2, 0x1
/* 0018AC 004018AC AFAB0044 */  sw          $t3, 0x44($sp)
/* 0018B0 004018B0 916C0000 */  lbu         $t4, 0x0($t3)
/* 0018B4 004018B4 018D7821 */  addu        $t7, $t4, $t5
/* 0018B8 004018B8 91F80001 */  lbu         $t8, 0x1($t7)
/* 0018BC 004018BC 330E0080 */  andi        $t6, $t8, 0x80
/* 0018C0 004018C0 11C0001C */  beqz        $t6, .L00401934
/* 0018C4 004018C4 00000000 */   nop
/* 0018C8 004018C8 8FB90038 */  lw          $t9, 0x38($sp)
/* 0018CC 004018CC 24090001 */  addiu       $t1, $zero, 0x1
/* 0018D0 004018D0 AFA90030 */  sw          $t1, 0x30($sp)
/* 0018D4 004018D4 00194100 */  sll         $t0, $t9, 4
/* 0018D8 004018D8 AFA80038 */  sw          $t0, 0x38($sp)
/* 0018DC 004018DC 916A0000 */  lbu         $t2, 0x0($t3)
/* 0018E0 004018E0 014D6021 */  addu        $t4, $t2, $t5
/* 0018E4 004018E4 918F0001 */  lbu         $t7, 0x1($t4)
/* 0018E8 004018E8 31F80004 */  andi        $t8, $t7, 0x4
/* 0018EC 004018EC 13000003 */  beqz        $t8, .L004018FC
/* 0018F0 004018F0 00000000 */   nop
/* 0018F4 004018F4 10000007 */  b           .L00401914
/* 0018F8 004018F8 2550FFD0 */   addiu      $s0, $t2, -0x30
.L004018FC:
/* 0018FC 004018FC 8F998058 */  lw          $t9, %call16(tolower)($gp)
/* 001900 00401900 8FAE0044 */  lw          $t6, 0x44($sp)
/* 001904 00401904 0320F809 */  jalr        $t9
/* 001908 00401908 91C40000 */   lbu        $a0, 0x0($t6)
/* 00190C 0040190C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 001910 00401910 2450FFA9 */  addiu       $s0, $v0, -0x57
.L00401914:
/* 001914 00401914 8FA90034 */  lw          $t1, 0x34($sp)
/* 001918 00401918 8FB90038 */  lw          $t9, 0x38($sp)
/* 00191C 0040191C 252B0001 */  addiu       $t3, $t1, 0x1
/* 001920 00401920 29610002 */  slti        $at, $t3, 0x2
/* 001924 00401924 03304021 */  addu        $t0, $t9, $s0
/* 001928 00401928 AFA80038 */  sw          $t0, 0x38($sp)
/* 00192C 0040192C 1420FFDC */  bnez        $at, .L004018A0
/* 001930 00401930 AFAB0034 */   sw         $t3, 0x34($sp)
.L00401934:
/* 001934 00401934 8FAD0030 */  lw          $t5, 0x30($sp)
/* 001938 00401938 11A0002F */  beqz        $t5, .L004019F8
/* 00193C 0040193C 00000000 */   nop
/* 001940 00401940 8FAC0038 */  lw          $t4, 0x38($sp)
/* 001944 00401944 8FAF0040 */  lw          $t7, 0x40($sp)
/* 001948 00401948 A1EC0000 */  sb          $t4, 0x0($t7)
/* 00194C 0040194C 8FAE0044 */  lw          $t6, 0x44($sp)
/* 001950 00401950 8FB80040 */  lw          $t8, 0x40($sp)
/* 001954 00401954 25D90001 */  addiu       $t9, $t6, 0x1
/* 001958 00401958 270A0001 */  addiu       $t2, $t8, 0x1
/* 00195C 0040195C AFAA0040 */  sw          $t2, 0x40($sp)
/* 001960 00401960 10000025 */  b           .L004019F8
/* 001964 00401964 AFB90044 */   sw         $t9, 0x44($sp)
.L00401968:
/* 001968 00401968 AFA00024 */  sw          $zero, 0x24($sp)
/* 00196C 0040196C AFA00028 */  sw          $zero, 0x28($sp)
/* 001970 00401970 AFA0002C */  sw          $zero, 0x2C($sp)
.L00401974:
/* 001974 00401974 8F998014 */  lw          $t9, %got(func_004014D8)($gp)
/* 001978 00401978 8FA80044 */  lw          $t0, 0x44($sp)
/* 00197C 0040197C 273914D8 */  addiu       $t9, $t9, %lo(func_004014D8)
/* 001980 00401980 0320F809 */  jalr        $t9
/* 001984 00401984 91040000 */   lbu        $a0, 0x0($t0)
/* 001988 00401988 10400012 */  beqz        $v0, .L004019D4
/* 00198C 0040198C 8FBC0018 */   lw         $gp, 0x18($sp)
/* 001990 00401990 8FA9002C */  lw          $t1, 0x2C($sp)
/* 001994 00401994 8FAC0044 */  lw          $t4, 0x44($sp)
/* 001998 00401998 240D0001 */  addiu       $t5, $zero, 0x1
/* 00199C 0040199C 000958C0 */  sll         $t3, $t1, 3
/* 0019A0 004019A0 AFAB002C */  sw          $t3, 0x2C($sp)
/* 0019A4 004019A4 AFAD0024 */  sw          $t5, 0x24($sp)
/* 0019A8 004019A8 8FB90028 */  lw          $t9, 0x28($sp)
/* 0019AC 004019AC 918F0000 */  lbu         $t7, 0x0($t4)
/* 0019B0 004019B0 258E0001 */  addiu       $t6, $t4, 0x1
/* 0019B4 004019B4 27280001 */  addiu       $t0, $t9, 0x1
/* 0019B8 004019B8 016FC021 */  addu        $t8, $t3, $t7
/* 0019BC 004019BC 270AFFD0 */  addiu       $t2, $t8, -0x30
/* 0019C0 004019C0 29010003 */  slti        $at, $t0, 0x3
/* 0019C4 004019C4 AFAA002C */  sw          $t2, 0x2C($sp)
/* 0019C8 004019C8 AFA80028 */  sw          $t0, 0x28($sp)
/* 0019CC 004019CC 1420FFE9 */  bnez        $at, .L00401974
/* 0019D0 004019D0 AFAE0044 */   sw         $t6, 0x44($sp)
.L004019D4:
/* 0019D4 004019D4 8FA90024 */  lw          $t1, 0x24($sp)
/* 0019D8 004019D8 11200007 */  beqz        $t1, .L004019F8
/* 0019DC 004019DC 00000000 */   nop
/* 0019E0 004019E0 8FAD002C */  lw          $t5, 0x2C($sp)
/* 0019E4 004019E4 8FAB0040 */  lw          $t3, 0x40($sp)
/* 0019E8 004019E8 A16D0000 */  sb          $t5, 0x0($t3)
/* 0019EC 004019EC 8FAF0040 */  lw          $t7, 0x40($sp)
/* 0019F0 004019F0 25F80001 */  addiu       $t8, $t7, 0x1
/* 0019F4 004019F4 AFB80040 */  sw          $t8, 0x40($sp)
.L004019F8:
/* 0019F8 004019F8 8FAA0044 */  lw          $t2, 0x44($sp)
/* 0019FC 004019FC 914C0000 */  lbu         $t4, 0x0($t2)
/* 001A00 00401A00 254E0001 */  addiu       $t6, $t2, 0x1
/* 001A04 00401A04 AFAE0044 */  sw          $t6, 0x44($sp)
/* 001A08 00401A08 01808025 */  move        $s0, $t4
/* 001A0C 00401A0C 1600FF82 */  bnez        $s0, .L00401818
/* 001A10 00401A10 A3AC003F */   sb         $t4, 0x3F($sp)
.L00401A14:
/* 001A14 00401A14 8FBF001C */  lw          $ra, 0x1C($sp)
/* 001A18 00401A18 8FA20048 */  lw          $v0, 0x48($sp)
/* 001A1C 00401A1C 8FB00014 */  lw          $s0, 0x14($sp)
/* 001A20 00401A20 03E00008 */  jr          $ra
/* 001A24 00401A24 27BD0048 */   addiu      $sp, $sp, 0x48
