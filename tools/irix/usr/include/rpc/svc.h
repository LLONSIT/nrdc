#ifndef __RPC_SVC_H__
#define __RPC_SVC_H__
#ident "$Revision: 2.39 $"
/*
 *
 * Copyright 1992 - 2001, Silicon Graphics, Inc.
 * All Rights Reserved.
 *
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics, Inc.;
 * the contents of this file may not be disclosed to third parties, copied or
 * duplicated in any form, in whole or in part, without the prior written
 * permission of Silicon Graphics, Inc.
 *
 * RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to restrictions
 * as set forth in subdivision (c)(1)(ii) of the Rights in Technical Data
 * and Computer Software clause at DFARS 252.227-7013, and/or in similar or
 * successor clauses in the FAR, DOD or NASA FAR Supplement. Unpublished -
 * rights reserved under the Copyright Laws of the United States.
 */

#ifdef __cplusplus
extern "C" {
#endif

/*	@(#)svc.h	1.3 90/07/19 4.1NFSSRC SMI	*/

/*
 * Copyright (c) 1990 by Sun Microsystems, Inc.
 *      @(#)svc.h 1.20 88/02/08 SMI      *
 */


/*
 * svc.h, Server-side remote procedure call interface.
 */


#include <netinet/in.h>
#include <rpc/rpc_com.h>

/*
 * This interface must manage two items concerning remote procedure calling:
 *
 * 1) An arbitrary number of transport connections upon which rpc requests
 * are received.  The two most notable transports are TCP and UDP;  they are
 * created and registered by routines in svc_tcp.c and svc_udp.c, respectively;
 * they in turn call xprt_register and xprt_unregister.
 *
 * 2) An arbitrary number of locally registered services.  Services are
 * described by the following four data: program number, version number,
 * "service dispatch" function, a transport handle, and a boolean that
 * indicates whether or not the exported program should be registered with a
 * local binder service;  if true the program's number and version and the
 * port number from the transport handle are registered with the binder.
 * These data are registered with the rpc svc system via svc_register.
 *
 * A service's dispatch function is called whenever an rpc request comes in
 * on a transport.  The request's program and version numbers must match
 * those of the registered service.  The dispatch function is passed two
 * parameters, struct svc_req * and SVCXPRT *, defined below.
 */

/*
 *	Service control requests; new in 6.5.23
 */
#define	SVCGET_XID		4	/* uint32_t: udp,tcp */

enum xprt_stat {
	XPRT_DIED,
	XPRT_MOREREQS,
	XPRT_IDLE
};

enum xprt_type {
    XPRT_TCP,
    XPRT_UDP
};

struct rpc_msg;
struct __svcxprt_s;
struct xp_ops {
	/* receive incomming requests */
	bool_t (*xp_recv)(struct __svcxprt_s *, struct rpc_msg *);

	/* get transport status */
	enum xprt_stat (*xp_stat)(struct __svcxprt_s *);

	/* get arguments */
	bool_t (*xp_getargs)(struct __svcxprt_s *, xdrproc_t, void *);

	/* send reply */
	bool_t (*xp_reply)(struct __svcxprt_s *, struct rpc_msg *);

	/* free mem allocated for args */
	bool_t (*xp_freeargs)(struct __svcxprt_s *, xdrproc_t, void *);

	/* destroy this struct */
	void (*xp_destroy)(struct __svcxprt_s *);
	
	/* New in 6.5.23 */
	/* catch-all control function */
	bool_t	(*xp_control)(struct __svcxprt_s *, u_int, void *);
};

/*
 * Server side transport handle
 */
#ifndef _KERNEL

typedef struct __svcxprt_s{
	int		xp_fd;
#define xp_sock xp_fd

	u_short		xp_port;	 /* associated port number */
	struct xp_ops  *xp_ops;
	int		xp_addrlen;	 /* length of remote address */

#ifdef _BSD_TIRPC
    	/*
	 * Note that BSD TI-RPC has all the same fields as SVR4 TI-RPC
	 * but in a different order, so that the xp_raddr field can be
	 * at the same location for Binary Compatibility.
	 */
	struct sockaddr_in  xp_raddr;	 /* IPV4 address, obsolete */
	char		*xp_tp;		 /* transport provider device name */
	char		*xp_netid;	 /* network token */
	struct netbuf	xp_ltaddr;	 /* local transport address */
	struct netbuf	xp_rtaddr;	 /* remote transport address */
#elif !defined(_SVR4_TIRPC)
    	union {
	    struct sockaddr_in	    xpau_in4;	/* IPV4 address */
#define xp_raddr xp_addru.xpau_in4

    	    unsigned char   	    xpau_pad[16+4*(_MIPS_SZINT/8)+4*(_MIPS_SZPTR/8)];
	} xp_addru; 	    	    	 /* union of remote addresses */
#else /* _SVR4_TIRPC */
	char		*xp_tp;		 /* transport provider device name */
	char		*xp_netid;	 /* network token */
	struct netbuf	xp_ltaddr;	 /* local transport address */
	struct netbuf	xp_rtaddr;	 /* remote transport address */
	char		xp_raddr[16];	 /* "obsolete" in TIRPC */
#endif /* _SVR4_TIRPC */

    	/*
	 * The padding in the xp_addru union is chosen carefully to
	 * align all branches of the SVCXPRT structure at this point.
	 * This allows xp_verf et al to be accessed easily by code
	 * that is shared between libc and libnsl.
	 */
	struct opaque_auth xp_verf;	 /* raw response verifier */
	void *		xp_p1;		 /* private: for use by svc ops */
	void *		xp_p2;		 /* private: for use by svc ops */
	void *		xp_p3;		 /* private: for use by svc lib */
} SVCXPRT;


#else /*  _KERNEL */

/*
 * The kernel-side SVCXPRT structure is defined separately from
 * the userspace because it's significantly different and will
 * evolve in a separate direction.
 */
typedef struct __svcxprt_s{
	enum xprt_type	xp_type;
	struct socket 	*xp_so;		/* only used for tcp */
	mutex_t		*xp_sosndlock;	/* locked on snd on xp_so */
	u_short		xp_port;	 /* associated port number */
	struct xp_ops  *xp_ops;
	int		xp_addrlen;	 /* length of remote address */
	struct sockaddr_in xp_raddr;	 /* remote address */
	struct opaque_auth xp_verf;	 /* raw response verifier */
	void *		xp_p1;		 /* private: for use by svc ops */
	void *		xp_p2;		 /* private: for use by svc ops */
	void *		xp_p3;		 /* private: for use by svc lib */
	struct mbuf *	xp_ipattr;	 /* ip security attributes */
} SVCXPRT;

#endif /* _KERNEL */

/*
 *  Approved way of getting address of caller
 */
#if defined(_SVR4_TIRPC) || defined(_BSD_TIRPC)
#define svc_getrpccaller(x) (&(x)->xp_rtaddr)
#else
/* IPv4 address only */
#define svc_getcaller(x) (&(x)->xp_raddr)
#endif

/*
 * Operations defined on an SVCXPRT handle
 *
 * SVCXPRT		*xprt;
 * struct rpc_msg	*msg;
 * xdrproc_t		 xargs;
 * void *		 argsp;
 */
#define SVC_RECV(xprt, msg)				\
	(*(xprt)->xp_ops->xp_recv)((xprt), (msg))
#define svc_recv(xprt, msg)				\
	(*(xprt)->xp_ops->xp_recv)((xprt), (msg))

#define SVC_STAT(xprt)					\
	(*(xprt)->xp_ops->xp_stat)(xprt)
#define svc_stat(xprt)					\
	(*(xprt)->xp_ops->xp_stat)(xprt)

#define SVC_GETARGS(xprt, xargs, argsp)			\
	(*(xprt)->xp_ops->xp_getargs)((xprt), (xargs), (argsp))
#define svc_getargs(xprt, xargs, argsp)			\
	(*(xprt)->xp_ops->xp_getargs)((xprt), (xargs), (argsp))

#define SVC_REPLY(xprt, msg)				\
	(*(xprt)->xp_ops->xp_reply) ((xprt), (msg))
#define svc_reply(xprt, msg)				\
	(*(xprt)->xp_ops->xp_reply) ((xprt), (msg))

#define SVC_FREEARGS(xprt, xargs, argsp)		\
	(*(xprt)->xp_ops->xp_freeargs)((xprt), (xargs), (argsp))
#define svc_freeargs(xprt, xargs, argsp)		\
	(*(xprt)->xp_ops->xp_freeargs)((xprt), (xargs), (argsp))

#define SVC_DESTROY(xprt)				\
	(*(xprt)->xp_ops->xp_destroy)(xprt)
#define svc_destroy(xprt)				\
	(*(xprt)->xp_ops->xp_destroy)(xprt)

/* New in 6.5.23 */
#define	SVC_CONTROL(xprt, rq, in) \
	(*(xprt)->xp_ops->xp_control)((xprt), (rq), (in))
/*
 * svc_control() is defined as a function rather than a macro
 * so that it can be declared optional.  svc_control() appeared
 * in IRIX 6.5.23; applications wishing to use svc_control should
 * use the _MIPS_SYMBOL_PRESENT() macro to check for the symbol
 * and fail gracefully if it's not present.
 */
extern bool_t svc_control(struct __svcxprt_s *, u_int, void *);

/*
 * Service request
 */
struct svc_req {
	rpcprog_t	rq_prog;	/* service program number */
	rpcvers_t	rq_vers;	/* service protocol version */
	rpcproc_t	rq_proc;	/* the desired procedure */
	struct opaque_auth rq_cred;	/* raw creds from the wire */
#ifdef _SVR4_TIRPC
	char 		*rq_clntcred;	/* read only cooked cred */
#else
	void 		*rq_clntcred;	/* read only cooked cred */
#endif
	SVCXPRT		*rq_xprt;	/* associated transport */
};


/*
 * Service registration
 *
 * svc_register(xprt, prog, vers, dispatch, protocol)
 *	protocol = IPPROTO_TCP, IPPROTO_UDP, 
 *		   or 0 (do not register with portmapper)
 *  	Calls portmap v2; IPv4 only.
 *
 * registerrpc(prog, vers, proc, routine, inproc, outproc)
 * 	returns 0 upon success, -1 if error.
 *  	Calls portmap v2; IPv4 only.
 */
extern bool_t	svc_register(SVCXPRT *, rpcprog_t, rpcvers_t, 
			void(*)(struct svc_req *,SVCXPRT *), int);

extern int registerrpc(rpcprog_t, rpcvers_t, rpcproc_t, void *(*)(void *),
			xdrproc_t, xdrproc_t);

/*
 * Service un-registration
 *
 * svc_unregister(prog, vers)
 */
extern void	svc_unregister(rpcprog_t, rpcvers_t);

/*
 * Transport registration.
 */
extern void	xprt_register(SVCXPRT *);
extern char	*inet_ntoa(struct in_addr);

#ifndef _KERNEL

#if defined(_SVR4_TIRPC) || defined(_BSD_TIRPC)

/*
 * rpc_reg(prog, vers, proc, routine, inproc, outproc, nettype)
 * 	returns 0 upon success, -1 if error.
 *  	Calls rpcbind v3 protocol; can be used with IPv4 and IPv6.
 */
extern bool_t	rpc_reg(rpcprog_t, rpcvers_t, rpcproc_t,
			void *(*)(void *), xdrproc_t, xdrproc_t,
			const char *);

/*
 * Service registration
 *
 * svc_reg(xprt, prog, vers, dispatch, nconf)
 *	SVCXPRT *xprt;
 *	rpcprog_t prog;
 *	rpcvers_t vers;
 *	void (*dispatch)(struct svc_req *, SVCXPRT *);
 *	struct netconfig *nconf;
 *
 *	nconf = netconfig from getnetconfigent() or NULL (do not
 *  	    	register with rpcbind).
 *  	Calls rpcbind v3 protocol; can be used with IPv4 and IPv6.
 *
 */
extern bool_t	svc_reg(SVCXPRT *, rpcprog_t, rpcvers_t,
			void (*)(struct svc_req *, SVCXPRT *),
			struct netconfig *);
/*
 * Service un-registration
 *
 * svc_unreg(prog, vers)
 *	rpcprog_t prog;
 *	rpcvers_t vers;
 */
extern void	svc_unreg(rpcprog_t, rpcvers_t);

#endif

/*
 * Transport un-register
 */
extern void	xprt_unregister(SVCXPRT *);
#endif /* !_KERNEL */


/*
 * When the service routine is called, it must first check to see if it
 * knows about the procedure;  if not, it should call svcerr_noproc
 * and return.  If so, it should deserialize its arguments via
 * SVC_GETARGS (defined above).  If the deserialization does not work,
 * svcerr_decode should be called followed by a return.  Successful
 * decoding of the arguments should be followed the execution of the
 * procedure's code and a call to svc_sendreply.
 *
 * Also, if the service refuses to execute the procedure due to too-
 * weak authentication parameters, svcerr_weakauth should be called.
 * Note: do not confuse access-control failure with weak authentication!
 *
 * NB: In pure implementations of rpc, the caller always waits for a reply
 * msg.  This message is sent when svc_sendreply is called.
 * Therefore pure service implementations should always call
 * svc_sendreply even if the function logically returns void;  use
 * xdr.h - xdr_void for the xdr routine.  HOWEVER, tcp based rpc allows
 * for the abuse of pure rpc via batched calling or pipelining.  In the
 * case of a batched call, svc_sendreply should NOT be called since
 * this would send a return message, which is what batching tries to avoid.
 * It is the service/protocol writer's responsibility to know which calls are
 * batched and which are not.  Warning: responding to batch calls may
 * deadlock the caller and server processes!
 */

extern bool_t	svc_sendreply(SVCXPRT *, xdrproc_t, void *);
extern void	svcerr_decode(SVCXPRT *);
extern void	svcerr_weakauth(SVCXPRT *);
extern void	svcerr_noproc(SVCXPRT *);
extern void	svcerr_progvers(SVCXPRT *, rpcvers_t, rpcvers_t);
extern void	svcerr_auth(SVCXPRT *, enum auth_stat);
extern void	svcerr_noprog(SVCXPRT *);
#ifndef _KERNEL
extern void	svcerr_systemerr(SVCXPRT *);
extern void	svc_versquiet(SVCXPRT *);
#endif

/*
 * Lowest level dispatching -OR- who owns this process anyway.
 * Somebody has to wait for incoming requests and then call the correct
 * service routine.  The routine svc_run does infinite waiting; i.e.,
 * svc_run never returns.
 * Since another (co-existant) package may wish to selectively wait for
 * incoming calls or other events outside of the rpc architecture, the
 * routine svc_getreq is provided.  It must be passed readfds, the
 * "in-place" results of a select system call (see select, section 2).
 */

#ifndef _KERNEL
/*
 * Global keeper of rpc service descriptors in use
 * dynamic; must be inspected before each call to select
 */
extern fd_set svc_fdset;
#define svc_fds svc_fdset.fds_bits[0]		/* compatibility */
extern void	svc_getreqset(fd_set *);	/* takes fdset instead of int */
extern void	svc_getreq(int);
extern void	svc_run(void);			/* never returns */

#endif /* !_KERNEL */


/*
 * Socket to use on svcxxx_create call to get default socket
 */
#define	RPC_ANYSOCK	-1

/*
 * These are the existing service side transport implementations
 */

#ifndef _KERNEL

/*
 * Memory based rpc for testing and timing.
 */
extern SVCXPRT *svcraw_create(void);

/*
 * UDP-based rpc.
 */
extern SVCXPRT *svcudp_create(int);
extern SVCXPRT *svcudp_bufcreate(int, u_int, u_int);

/*
 * TCP-based rpc.
 */
extern SVCXPRT *svctcp_create(int, u_int, u_int);

/*
 * Like svtcp_create(), except the routine takes any *open* UNIX file
 * descriptor as its first input.
 */
SVCXPRT *svcfd_create(int, u_int, u_int);

#if defined(_SVR4_TIRPC) || defined(_BSD_TIRPC)

/*
 * These are the existing service side transport implementations
 */
/*
 * Transport independent svc_create routine.
 */
extern int
svc_create(
	void (*dispatch)(struct svc_req *, SVCXPRT *),
	    	    	    	    	/* dispatch routine	*/
	rpcprog_t prognum,		/* program number	*/
	rpcvers_t versnum,		/* version number	*/
	const char *nettype);		/* network type		*/

/*
 * Generic server creation routine. It takes a netconfig structure
 * instead of a nettype.
 */
extern SVCXPRT	*
svc_tp_create(
	void (*dispatch)(struct svc_req *, SVCXPRT *),
	    	    	    	    	/* dispatch routine	*/
	rpcprog_t prognum,		/* program number	*/
	rpcvers_t versnum,		/* version number	*/
	struct netconfig *nconf);	/* netconfig structure	*/

/*
 * Generic TLI create routine
 */
extern SVCXPRT *
svc_tli_create(
	int fd,			 	/* connection end point	*/
	struct netconfig *nconf,	/* netconfig structure for network */
	struct t_bind *bindaddr,	/* local bind address	*/
	u_int sendsz,			/* max sendsize		*/
	u_int recvsz);			/* max recvsize		*/

/*
 * Connectionless and connectionful create routines
 */
extern SVCXPRT	*
svc_vc_create(
	int fd,				/* open connection end point	*/
	u_int sendsize,			/* max send size	*/
	u_int recvsize);		/* max recv size	*/

extern SVCXPRT	*
svc_dg_create(
	int fd,				/* open connection end point	*/
	u_int sendsize,			/* max send size	*/
	u_int recvsize);		/* max recv size	*/

/*
 * the routine takes any *open* TLI file (_SVR4_TIRPC) or socket (_BSD_TIRPC)
 * descriptor as its first input and is used for open connections.  Do not
 * mix sockets with _SVR4_TIRPC or TLI endpoints with _BSD_TIRPC.
 */
extern SVCXPRT *
svc_fd_create(
	int fd,				/* open connection end point	*/
	u_int sendsize,			/* max send size	*/
	u_int recvsize);		/* max recv size	*/

/*
 * Memory based rpc (for speed check and testing)
 */
extern SVCXPRT *
svc_raw_create( void );

#ifdef PORTMAP
/* For backward compatibility */
#include <rpc/svc_soc.h>	/* COMPATIBILITY */
#endif
#endif /* _SVR4_TIRPC */

#endif /* _KERNEL */

/*
 * For user level MT hot server functions
 */
#ifndef _KERNEL

/*
 * Different MT modes
 */
#define RPC_SVC_MT_NONE	 0	/* default, single-threaded */
#define RPC_SVC_MT_AUTO	 1	/* automatic MT mode */
#define RPC_SVC_MT_USER	 2	/* user MT mode */

#ifdef __STDC__
void svc_done(SVCXPRT *);
#else
void svc_done();
#endif

#endif /* ! _KERNEL */

/* like xdrproc_t but with an ANSI argument prototype */
typedef bool_t (*xdrproc_ansi_t)(XDR *, caddr_t); 


#ifndef _SGI_COMPILING_LIBC
#pragma optional svc_control
#ifdef _BSD_TIRPC
#pragma optional rpc_reg
#pragma optional svc_reg
#pragma optional svc_unreg
#pragma optional svc_create
#pragma optional svc_tp_create
#pragma optional svc_tli_create
#pragma optional svc_vc_create
#pragma optional svc_dg_create
#pragma optional svc_fd_create
#pragma optional svc_raw_create
#endif /* _BSD_TIRPC */
#endif /* !_SGI_COMPILING_LIBC */

#ifdef __cplusplus
}
#endif

#endif /* !__RPC_SVC_H__ */
