#if 0 

    Copyright (c) 1991 SGI   All Rights Reserved
    THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF SGI
    The copyright notice above does not evidence any
    actual or intended publication of such source code,
    and is an unpublished work by Silicon Graphics, Inc.
    This material contains CONFIDENTIAL INFORMATION that
    is the property of Silicon Graphics, Inc. Any use,
    duplication or disclosure not specifically authorized
    by Silicon Graphics is strictly prohibited.
    
    RESTRICTED RIGHTS LEGEND:
    
    Use, duplication or disclosure by the Government is
    subject to restrictions as set forth in subdivision
    (c)(1)(ii) of the Rights in Technical Data and Computer
    Software clause at DFARS 52.227-7013, and/or in similar
    or successor clauses in the FAR, DOD or NASA FAR
    Supplement.  Unpublished- rights reserved under the
    Copyright Laws of the United States.  Contractor is
    SILICON GRAPHICS, INC., 2011 N. Shoreline Blvd.,
    Mountain View, CA 94039-7311

#endif
#ifndef _iflTypeNames_h_
#define _iflTypeNames_h_

#include <ifl/iflTypes.h>

#ifdef __cplusplus
extern "C" {
#endif


char* iflDataTypeName(iflDataType type);

char* iflOrientationName(iflOrientation orientation);

char* iflOrderName(iflOrder order);

char* iflColorModelName(iflColorModel cm);

char* iflCompressionName(iflCompression compress);

#ifdef __cplusplus
}
#endif
#endif
