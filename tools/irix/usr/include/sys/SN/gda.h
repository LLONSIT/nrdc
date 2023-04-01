/**************************************************************************
 *                                                                        *
 *               Copyright (C) 1992-1997, Silicon Graphics, Inc.          *
 *                                                                        *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *                                                                        *
 **************************************************************************/

/*
 * gda.h -- Contains the data structure for the global data area,
 * 	The GDA contains information communicated between the
 *	PROM, SYMMON, and the kernel. 
 */

#ifndef __SYS_SN_GDA_H__
#define __SYS_SN_GDA_H__

#include <sys/SN/addrs.h>

#define GDA_MAGIC	0x58464552
#define GDA_PEMAGIC	0x5045626b

/*
 * GDA Version History
 *
 * Version #	| Change
 * -------------+-------------------------------------------------------
 * 	1	| Initial SN0 version 
 * 	2	| Prom sets g_partid field to the partition number. 0 IS
 *		| a valid partition #. 
 */

#define GDA_VERSION	2	/* Current GDA version # */

#define G_MAGICOFF	0
#define G_VERSIONOFF	4
#define G_PROMOPOFF	6
#define G_MASTEROFF	8
#define G_VDSOFF	12
#define G_HKDNORMOFF	16
#define G_HKDUTLBOFF	24
#define G_HKDXUTLBOFF	32
#define G_PARTIDOFF	40
#define G_TABLEOFF	128

#ifdef _LANGUAGE_C

typedef struct gda {
	uint	g_magic;	/* GDA magic number */
	ushort	g_version;	/* Version of this structure */
	ushort	g_masterid;	/* The NASID:CPUNUM of the master cpu */
	uint	g_promop;	/* Passes requests from the kernel to prom */
	uint	g_vds;		/* Store the virtual dipswitches here */
	inst_t	**g_hooked_norm;/* ptr to pda loc for norm hndlr */
	inst_t	**g_hooked_utlb;/* ptr to pda loc for utlb hndlr */
	inst_t  **g_hooked_xtlb;/* ptr to pda loc for xtlb hndlr */
	int	g_partid;	/* partition id */
	int	g_symmax;	/* Max symbols in name table. */
	struct dbstbl
		*g_dbstab;	/* Address of idbg symbol table */
	char	*g_nametab;	/* Address of idbg name table */
	cpumask_t *g_ktext_repmask;
				/* Pointer to a mask of nodes with copies
				 * of the kernel. */
	char	g_padding[56];	/* pad out to 128 bytes */
	nasid_t	g_nasidtable[MAX_COMPACT_NODES+1]; /* NASID of each node,
						* indexed by cnodeid. */
#if	SN1
	uint	g_pemagic;	/* magic number for start of pebricks */
	struct pebricktable_s {
		nasid_t pe_nasid;
		nasid_t host_nasid;
	} g_pebricktable[MAX_PEBRICKS]; /* NASID of each pebrick */
#endif
} gda_t;


#define GDA ((gda_t*) GDA_ADDR(get_nasid()))

#endif /* __LANGUAGE_C */
/*
 * Define:	PART_GDA_VERSION
 * Purpose:	Define the minimum version of the GDA required, lower 
 *		revisions assume GDA is NOT set up, and read partition
 *		information from the board info.
 */
#define	PART_GDA_VERSION	2

/*
 * The following requests can be sent to the PROM during startup.
 */

#define PROMOP_MAGIC		0x0ead0000
#define PROMOP_MAGIC_MASK	0x0fff0000

#define PROMOP_BIST_SHIFT       11
#define PROMOP_BIST_MASK        (0x3 << 11)

#ifdef SN0
#define PROMOP_REG		PI_ERR_STACK_ADDR_A
#else
#define PROMOP_REG		LB_SCRATCH_REG2
#endif

#define PROMOP_INVALID		(PROMOP_MAGIC | 0x00)
#define PROMOP_HALT             (PROMOP_MAGIC | 0x10)
#define PROMOP_POWERDOWN        (PROMOP_MAGIC | 0x20)
#define PROMOP_RESTART          (PROMOP_MAGIC | 0x30)
#define PROMOP_REBOOT           (PROMOP_MAGIC | 0x40)
#define PROMOP_IMODE            (PROMOP_MAGIC | 0x50)

#define PROMOP_CMD_MASK		0x00f0
#define PROMOP_OPTIONS_MASK	0xfff0

#define PROMOP_SKIP_DIAGS	0x0100		/* don't bother running diags */
#define PROMOP_SKIP_MEMINIT	0x0200		/* don't bother initing memory */
#define PROMOP_SKIP_DEVINIT	0x0400		/* don't bother initing devices */
#define PROMOP_BIST1		0x0800		/* keep track of which BIST ran */
#define PROMOP_BIST2		0x1000		/* keep track of which BIST ran */

#endif /* __SYS_SN_GDA_H__ */
