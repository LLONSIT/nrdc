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
 |   $Revision: 1.2 $
 |
 |   Classes:
 |	SoMFEngine
 |
 |   Author(s)		: Paul S. Strauss
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_MF_ENGINE_
#define  _SO_MF_ENGINE_

class SoEngine;

#include <Inventor/fields/SoSubField.h>

//////////////////////////////////////////////////////////////////////////////
//
//  SoMFEngine subclass of SoMField. Each field value is a pointer to an
//  SoEngine. The field automatically maintains references to the engines
//  it points to and propagates notification from the engines.
//
//////////////////////////////////////////////////////////////////////////////

class SoMFEngine : public SoMField {

    // Use standard field stuff
    SO_MFIELD_HEADER(SoMFEngine, SoEngine *, SoEngine *);

  SoINTERNAL public:
    static void		initClass();

    // Update a copied field to use the copy of each engine if there is one
    virtual void	fixCopy(SbBool copyConnections);

    // Override this to also check the stored engines
    virtual SbBool	referencesCopy() const;

  private:
    // Override this to maintain write-references in engines
    virtual void	countWriteRefs(SoOutput *out) const;

    // Changes value in field without doing other notification stuff.
    // Keeps track of references and auditors.
    void		setVal(int index, SoEngine *newValue);
};

#endif /* _SO_MF_ENGINE_ */
