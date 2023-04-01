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
 |      Defines the SoV1ShapeKit class. 
 |      Subclassed off of SoV1GroupKit, this class adds a set of binding
 |      nodes to the catalog, since (almost) all shapes may want to set
 |      values for the various bindings.
 |
 |   Author(s)          : Paul Isaacs
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
*/

#ifndef  _SO_V1_SHAPE_KIT_
#define  _SO_V1_SHAPE_KIT_

#include <Inventor/misc/upgraders/SoV1GroupKit.h>

////////////////////////////////////////////////////////////////////
//    Class: SoV1ShapeKit
//
//    New nodes in this subclass are:
//         materialBinding, normalBinding,                 
//         and textureCoordinateBinding
//
//      A parent node that manages a collection of child nodes 
//      into a unit with the following structure:
//
//                            this
//        |---------------------|
//     "label"     |      "topSeparator"
//            "callbackList"    |
//      ---------------------------------------------------------------
//      |       |           |     |         |          |              |
//  "pickStyle" |    "transform"  |         |          |              | 
//     "appearance"  "texture2Transform"    |          |              |
//                                          |          |              |
//                                          |          |              |
//                                          |          |              |
//                                          |          |           "childList"
//                                          |       "shape"
//          ---------------------------------                   
//          |         |                  |  |                   
// "materialBinding"  |                  |  |                     
//            "normalBinding"            |  |                     
//           "textureCoordinateFunctionList"|                     
//                            "textureCoordinateBinding"          
//
////////////////////////////////////////////////////////////////////
SoEXTENDER class SoV1ShapeKit : public SoV1GroupKit {

    // Define typeId and name stuff
    SO_NODE_HEADER(SoV1ShapeKit);

    // Define catalog for children
    SO_V1_SUBKIT_CATALOG_HEADER(SoV1ShapeKit);

  public:
    // constructor
    SoV1ShapeKit();

    virtual SoNode *createNewNode();
    
    // If tryToSetPartInNewNode fails, then this routine is called.
    // It will fail for the parts:
    // "textureCoordinateFunctionList".
    // This part has been changed to "textureCoordinateFunction" which is not
    // a list.  This routine will take the last function from the list
    // and set it as the part "textureCoordinateFunnction" in the new node.
    // It will also print a warning.
    virtual SbBool dealWithUpgradedPart( SoBaseKit *newNode,
				  SoNode *newPart, const SbName &newPartName );
    SoINTERNAL public:
    static void initClass();

  protected:
    virtual ~SoV1ShapeKit();
};
#endif  /* _SO_V1_SHAPE_KIT_ */
