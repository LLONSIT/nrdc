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
 |   $Revision: 1.3 $
 |
 |   Classes:
 |	SoMFInt32
 |
 |   Author(s)		: Paul S. Strauss
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_MF_INT32_
#define  _SO_MF_INT32_

#include <Inventor/fields/SoSubField.h>

//////////////////////////////////////////////////////////////////////////////
//
//  SoMFInt32 subclass of SoMField.
//
//////////////////////////////////////////////////////////////////////////////

class SoMFInt32 : public SoMField {

    // Use standard field stuff
    SO_MFIELD_HEADER(SoMFInt32, int32_t, int32_t);

  SoINTERNAL public:
#ifndef IV_STRICT
#if (_MIPS_SZLONG == 32)
//
//  If the system long has exactly 32 bits, support methods that have "long" 
//  in the argument list.
//
    int   find(long targetValue,SbBool addIfNotFound = FALSE)	  // System long
		{ return find ((int32_t)targetValue, addIfNotFound);}
    void  setValues(int start, int num, const long *newValues)    // System long
	    	{ setValues(start, num, (const int32_t *)newValues);}
    void  set1Value(int index, long newValue)			  // System long
		{ set1Value(index, (int32_t)newValue); }
    long  operator =(long newValue)				  // System long
		{ setValue((int32_t)newValue); return (newValue); }
    void  setValue(long newValue)				  // System long
		{ setValue((int32_t)newValue); }
#endif
#endif

    static void		initClass();

  private:
    // Returns number of ASCII values to write per output line
    virtual int		getNumValuesPerLine() const;

    // Write/Read the values as a block of data
    virtual void	writeBinaryValues(SoOutput *out) const;
    virtual SbBool	readBinaryValues(SoInput *in, int numToRead);
};

#endif /* _SO_MF_INT32_ */
