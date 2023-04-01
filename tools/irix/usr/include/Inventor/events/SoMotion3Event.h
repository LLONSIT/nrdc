/*
 * Copyright 1991-1996, Silicon Graphics, Inc.
 * ALL RIGHTS RESERVED
 *
 * UNPUBLISHED -- Rights reserved under the copyright laws of the United
 * States.   Use of a copyright notice is precautionary only and does not
 * imply publication or disclosure.
 *
 * U.S. GOVERNMENT RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to restrictions
 * as set forth in FAR 52.227.19(c)(2) or subparagraph (c)(1)(ii) of the Rights
 * in Technical Data and Computer Software clause at DFARS 252.227-7013 and/or
 * in similar or successor clauses in the FAR, or the DOD or NASA FAR
 * Supplement.  Contractor/manufacturer is Silicon Graphics, Inc.,
 * 2011 N. Shoreline Blvd. Mountain View, CA 94039-7311.
 *
 * THE CONTENT OF THIS WORK CONTAINS CONFIDENTIAL AND PROPRIETARY
 * INFORMATION OF SILICON GRAPHICS, INC. ANY DUPLICATION, MODIFICATION,
 * DISTRIBUTION, OR DISCLOSURE IN ANY FORM, IN WHOLE, OR IN PART, IS STRICTLY
 * PROHIBITED WITHOUT THE PRIOR EXPRESS WRITTEN PERMISSION OF SILICON
 * GRAPHICS, INC.
 */
//  -*- C++ -*-

/*
 *
 _______________________________________________________________________
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 |
 |   $Revision: 2.0 $
 |
 |   Classes:
 |	SoMotion3Event - 3d change in value (relative, not absolute)
 |
 |   Author(s): David Mott
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_MOTION3_EVENT_
#define  _SO_MOTION3_EVENT_

#include <Inventor/SbBasic.h>
#include <Inventor/SbLinear.h>
#include <Inventor/events/SoSubEvent.h>


class SoMotion3Event : public SoEvent {

    SO_EVENT_HEADER();
    
  public:
  
    // constructor
    SoMotion3Event();
    virtual ~SoMotion3Event();
    
    // set/get the change in translation
    void		setTranslation(const SbVec3f &t)    { translation = t; }
    const SbVec3f &	getTranslation() const		    { return translation; }
    
    // set/get the change in rotation
    void		setRotation(const SbRotation &r)    { rotation = r; }
    const SbRotation &	getRotation() const		    { return rotation; }
    
    
  SoINTERNAL public:
    static void	    initClass();
    
  private:
    SbVec3f	    translation;    // translation value
    SbRotation	    rotation;	    // rotation value
};


#endif /* _SO_MOTION3_EVENT_ */