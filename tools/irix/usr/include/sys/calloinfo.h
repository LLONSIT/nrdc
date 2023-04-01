/**************************************************************************
 *									  *
 * 		 Copyright (C) 1996 Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/
#ifndef _CALLOINFO_H
#define _CALLOINFO_H

#ident	"$Revision: 1.12 $"

/*
 * callout_info
 *
 * There is one callout_info_t structure for each callout list in the
 * system.  Currently, there is one such list per-CPU as well as for
 * the fast callout handling on non-EVEREST, RACER, and SN  machines.
 * This structure contains the head of both the todo list and the ithread
 * service list.  It also contains the semaphore used to park the ithreads
 * servicing the list as well as a ptr to the list of per-ithread info
 * structure.
 */

/*
 * This is used to keep track of any callout currently being
 * executed on the interrupt stack.  The first 2 fields need
 * to be kept the same size and alignment as struct callout.
 * When such a callout runs it changes the status to C_INUSE.
 * When it completes, it atomically changes it to CS_INACTIVE.
 * Any caller of untimeout_wait() may wait for completion by
 * atomically changing the CS_INUSE to CS_WAITING and blocking
 * on the sync variable before the callout completes.
 */
struct ci_stack {
	__int64_t	c_status;	/* Callout status */
	struct callout	*_c_next;	/* DO NOT TOUCH */
	union c_tid	c_tid;		/* Current callout ID */
	sv_t		cs_sync;	/* Wait for callout to complete */
	int		cs_id_next;	/* Next ID in ToDo list */
};

#define CS_INACTIVE	0	/* No current callout being processed */
#define CS_INUSE	1	/* Callout in progress & c_tid is valid */
#define CS_WAITING	2	/* kthread(s) waiting on callout completion */

/*
 * ci_itinfo_t
 * 
 * There is one of these allocated for each ithread servicing a
 * single callout list.  The use of this structure is currently
 * for use in blocking untimeout_wait requests.
 */
struct callout_info;
typedef struct callout_itinfo {
	toid_t		cit_toid;		/* id we're executing */
	struct xthread	*cit_ithread;		/* ithreads address */
	struct callout_info	*cit_calloinfo;	/* back ptr to calloinfo */
	int		cit_flags;		/* flags */
	sv_t		cit_sync;		/* untimeout sync var */
	struct callout *cit_to;			/* timeout being directly */
						/* executed */
} ci_itinfo_t;

/* flags bits */
#define CIT_WAITING		0x01		/* waiter on cbi_toid */

struct zone;

typedef struct callout_info {
	struct zone		*ci_free_zone;		/* free zone */
	lock_t		ci_listlock;		/* protect this todo list */
	struct callout	ci_todo;		/* list of all callouts */

	union {
		struct callout ci_pending;	/* Callouts waiting for threads */
		struct ci_stack ci_current;	/* Current on-stack callout */
	} ci_progressing;			/* Fired callout info */

	ci_itinfo_t	*ci_ithrdinfo;		/* untimeout block structs */
	int		ci_flags;		/* flag bits */
	int		ci_ithrd_cnt;		/* number of callout ithrds */
	sema_t		ci_sema;		/* ithrd(s) sema */
} callout_info_t;

/* flag bits - we keep cpu in high 16bits */
#define CA_ENABLED		0x00000001	/* handling enabled on cpu */
#define	CA_ITHRD_CREATING	0x00000002	/* creating new ithrd */
#define CA_CPU_MASK		0xffff0000	/* store cpu in high short */
#define CA_CPU_SHIFT		16		/* shift macro */

#if defined(CLOCK_CTIME_IS_ABSOLUTE)
#define	CALLTODO(x)	pdaindr[x].pda->p_calltodo
#else
extern	callout_info_t *calltodo;	/* per-cpu table of callout info */
#define CALLTODO(x)	calltodo[x]
#endif /* CLOCK_CTIME_IS_ABSOLUTE */

/* convenience macros for callout_info_t accesses */
#define CI_LISTLOCK(x)		((x)->ci_listlock)
#define CI_FREE_ZONE(x)		((x)->ci_free_zone)
#define CI_TODO(x)		&((x)->ci_todo)
#define CI_TODO_NEXT(x)		((x)->ci_todo).c_next
#define CI_PENDING(x)		&((x)->ci_progressing.ci_pending)
#define CI_PENDING_NEXT(x)	((x)->ci_progressing.ci_pending).c_next
#define CI_STATUS(x)		((x)->ci_progressing.ci_current).c_status
#define CS_NEXT_ID(x)		((x)->ci_progressing.ci_current).cs_id_next
#define CI_SEMA(x)		&((x)->ci_sema)
#define CI_CPU(x)		(((x)->ci_flags & CA_CPU_MASK) >> CA_CPU_SHIFT)
#define CI_FLAGS(x)		((x)->ci_flags)

/* some extra nasty ones */
#define CIT_TO_CPU(x)		CI_CPU(((x)->cit_calloinfo))
#define CIT_GET_SEMA(x)		CI_SEMA(((x)->cit_calloinfo))

/* ithread tunables */
#define CA_ITHRDS_PER_LIST	6		/* # of ithrds per callout */

#endif /* _CALLOINFO_H */
