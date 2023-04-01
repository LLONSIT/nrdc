/*	Copyright (c) 1990, 1991 UNIX System Laboratories, Inc.	*/
/*	Copyright (c) 1984, 1986, 1987, 1988, 1989, 1990 AT&T	*/
/*	  All Rights Reserved  	*/

/*	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF     	*/
/*	UNIX System Laboratories, Inc.                     	*/
/*	The copyright notice above does not evidence any   	*/
/*	actual or intended publication of such source code.	*/

#ifndef	_NET_NETCONFIG_H	/* wrapper symbol for kernel use */
#define	_NET_NETCONFIG_H	/* subject to change without notice */

#ifdef __cplusplus
extern "C" {
#endif

#ident	"@(#)uts-comm:net/netconfig.h	1.2"

#define NETCONFIG "/etc/netconfig"
#define NETPATH   "NETPATH"

struct  netconfig {
	char 	       *nc_netid;	/* network identifier         */
	unsigned long   nc_semantics;	/* defined below              */
	unsigned long   nc_flag;	/* defined below              */
	char   	       *nc_protofmly;	/* protocol family name	      */
	char   	       *nc_proto;	/* protocol name	      */
	char           *nc_device;	/* device name for network id */
	unsigned long   nc_nlookups;	/* # of entries in nc_lookups */
	char          **nc_lookups;	/* list of lookup directories */
	unsigned long   nc_unused[8];
};

typedef struct {
	struct netconfig **nc_head;
	struct netconfig **nc_curr;
} NCONF_HANDLE;

/*
 *	Values of nc_semantics
 */

#ifndef _STYPES_LATER
#define NC_TPI_CLTS	1
#define NC_TPI_COTS	2
#define NC_TPI_COTS_ORD	3
#define NC_TPI_RAW	4

#else

#define NC_TPI_COTS	1	/* values agree with old IRIX 4 ABI */
#define NC_TPI_CLTS	2
#define NC_TPI_RAW	3
#define NC_TPI_COTS_ORD	4

#endif

/*
 *	Values of nc_flag
 */

#define NC_NOFLAG	00
#define NC_VISIBLE	01
#define NC_BROADCAST	02

/*
 *	Values of nc_protofmly
 */

#define NC_NOPROTOFMLY	"-"
#define NC_LOOPBACK	"loopback"
#define NC_INET		"inet"
#define NC_INET6	"inet6"
#define NC_IMPLINK	"implink"
#define NC_PUP		"pup"
#define NC_CHAOS	"chaos"
#define NC_NS		"ns"
#define NC_NBS		"nbs"
#define NC_ECMA		"ecma"
#define NC_DATAKIT	"datakit"
#define NC_CCITT	"ccitt"
#define NC_SNA		"sna"
#define NC_DECNET	"decnet"
#define NC_DLI		"dli"
#define NC_LAT		"lat"
#define NC_HYLINK	"hylink"
#define NC_APPLETALK	"appletalk"
#define NC_NIT		"nit"
#define NC_IEEE802	"ieee802"
#define NC_OSI		"osi"
#define NC_X25		"x25"
#define NC_OSINET	"osinet"
#define NC_GOSIP	"gosip"

/*
 *	Values for nc_proto
 */

#define NC_NOPROTO	"-"
#define NC_TCP		"tcp"
#define NC_UDP		"udp"
#define NC_ICMP		"icmp"


extern void 		 *setnetconfig(void);
extern int   		  endnetconfig(void *);
extern struct netconfig  *getnetconfig(void *);
extern struct netconfig  *getnetconfigent(char *);
extern void  		  freenetconfigent(struct netconfig *);
extern void 		 *setnetpath(void);
extern int   		  endnetpath(void *);
extern struct netconfig  *getnetpath(void *);
extern char 	    	 *nc_sperror(void);
extern void 	    	  nc_perror(const char *);

/*
 * As of 6.5.20, these functions are available in libc versions
 * as well as libnsl versions, to support BSD-style TIRPC.  The
 * IRIX Binary Compatibilty policy means they have to be marked
 * as optional symbols.   
 */
#if !defined(_SGI_COMPILING_LIBC) && defined(_BSD_TIRPC)
#pragma optional endnetconfig
#pragma optional endnetpath
#pragma optional freenetconfigent
#pragma optional getnetconfig
#pragma optional getnetconfigent
#pragma optional getnetpath
#pragma optional nc_perror
#pragma optional nc_sperror
#pragma optional setnetconfig
#pragma optional setnetpath
#endif

#ifdef __cplusplus
}
#endif

#endif /* _NET_NETCONFIG_H */
