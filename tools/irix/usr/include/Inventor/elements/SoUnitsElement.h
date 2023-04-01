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
 |   $Revision: 2.5 $
 |
 |   Description:
 |	This file defines the SoUnitsElement class.
 |
 |   Author(s)		: Paul S. Strauss
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_UNITS_ELEMENT
#define  _SO_UNITS_ELEMENT

#include <Inventor/elements/SoInt32Element.h>

//////////////////////////////////////////////////////////////////////////////
//
//  Class: SoUnitsElement
//
//  Element that stores the current units type.
//
//////////////////////////////////////////////////////////////////////////////

SoEXTENDER class SoUnitsElement : public SoInt32Element {

    SO_ELEMENT_HEADER(SoUnitsElement);

  public:
    // These are the available types of units:
    enum Units {
	METERS,
	CENTIMETERS,
	MILLIMETERS,
	MICROMETERS,
	MICRONS,
	NANOMETERS,
	ANGSTROMS,
	KILOMETERS,
	FEET,
	INCHES,
	POINTS,
	YARDS,
	MILES,
	NAUTICAL_MILES
    };

    // Initializes element
    virtual void	init(SoState *state);

    // Sets the current units in the state
    static void		set(SoState *state, Units units)
	{ SoInt32Element::set(classStackIndex, state, (int32_t)units); }

#ifndef IV_STRICT
    static void         set(SoState *state, SoNode *, Units units)
        { set(state, units); }
#endif

    // Returns current units from the state
    static Units	get(SoState *state)
	{ return (Units)SoInt32Element::get(classStackIndex, state); }

    // Returns the default units
    static Units	getDefault()		{ return METERS; }

    // Prints element (for debugging)
    virtual void	print(FILE *fp) const;

  SoINTERNAL public:
    // Initializes the SoUnitsElement class
    static void		initClass();

  protected:
    virtual ~SoUnitsElement();
};

#endif /* _SO_UNITS_ELEMENT */
