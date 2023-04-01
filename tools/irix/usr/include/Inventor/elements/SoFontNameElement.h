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
 |	This file defines the SoFontNameElement class.
 |
 |   Author(s)		: Paul S. Strauss, Nick Thompson, Thad Beier
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_FONT_NAME_ELEMENT
#define  _SO_FONT_NAME_ELEMENT

#include <Inventor/SbString.h>
#include <Inventor/elements/SoReplacedElement.h>

//////////////////////////////////////////////////////////////////////////////
//
//  Class: SoFontNameElement
//
//  Element storing the current font name
//
//////////////////////////////////////////////////////////////////////////////

SoEXTENDER class SoFontNameElement : public SoReplacedElement {

    SO_ELEMENT_HEADER(SoFontNameElement);

  public:
    // Initializes element
    virtual void	init(SoState *state);

    // set the current font name
    static void		set(SoState *state, SoNode *node,
			    const SbName &fontName);

    // return the current font name from the state
    static const SbName	&get(SoState *state);

    // Returns the default font name
    static SbName	getDefault()	{ return SbName("defaultFont"); }

    // Returns TRUE if the font name matches given element
    virtual SbBool	matches(const SoElement *elt) const;

    // Create and return a copy of this element
    virtual SoElement	*copyMatchInfo() const;

    virtual void	print(FILE *fp) const;

  SoINTERNAL public:
    // Initializes the SoNormalBindingElement class
    static void		initClass();

  protected:
    SbName	 		fontName;

    virtual ~SoFontNameElement();
};

#endif /* _SO_FONT_NAME_ELEMENT */
