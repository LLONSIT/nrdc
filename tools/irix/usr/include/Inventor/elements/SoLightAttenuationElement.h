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
 |   $Revision: 2.1 $
 |
 |   Description:
 |	This file defines the SoLightAttenuationElement class.
 |
 |   Author(s)		: Paul S. Strauss
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_LIGHT_ATTENUATION_ELEMENT
#define  _SO_LIGHT_ATTENUATION_ELEMENT

#include <Inventor/SbLinear.h>
#include <Inventor/elements/SoReplacedElement.h>

//////////////////////////////////////////////////////////////////////////////
//
//  Class: SoLightAttenuationElement
//
//  Element that stores the light attenuation(s) of the current
//  environment. This used to set up subsequent light sources. The
//  attenuation is stored as an SbVec3f, where the first component of
//  the vector is the quadratic term of the attenuation, the second is
//  the linear term, and the third is the constant.
//
//////////////////////////////////////////////////////////////////////////////

SoEXTENDER class SoLightAttenuationElement : public SoReplacedElement {

    SO_ELEMENT_HEADER(SoLightAttenuationElement);

  public:
    // Initializes element
    virtual void	init(SoState *state);

    // Sets the current light attenuation(s)
    static void		set(SoState *state, SoNode *node,
			    const SbVec3f &attenuation);

    // Returns the current light attenuation from the state
    static const SbVec3f & get(SoState *state);

    // Returns the default light attenuation
    static SbVec3f	getDefault()		{ return SbVec3f(0., 0., 1.); }

    // Create and return a copy of this element
    virtual SoElement	*copyMatchInfo() const;

    // Returns TRUE if the attenuations match in both elements
    virtual SbBool	matches(const SoElement *elt) const;

    // Prints element (for debugging)
    virtual void	print(FILE *fp) const;

  SoINTERNAL public:
    // Initializes the SoLightAttenuationElement class
    static void		initClass();

  protected:
    SbVec3f		attenuation;

    virtual ~SoLightAttenuationElement();
};

#endif /* _SO_LIGHT_ATTENUATION_ELEMENT */
