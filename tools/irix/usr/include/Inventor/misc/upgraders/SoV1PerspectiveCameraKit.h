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
 |      Defines the SoV1PerspectiveCameraKit class. 
 |      Subclassed off of SoV1CameraKit, this class adds an SoPerspectiveCamera
 |      node to the catalog.
 |
 |   Author(s)          : Paul Isaacs
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
*/

#ifndef  _SO_V1_PERSPECTIVE_CAMERA_KIT_
#define  _SO_V1_PERSPECTIVE_CAMERA_KIT_

#include <Inventor/misc/upgraders/SoV1CameraKit.h>

////////////////////////////////////////////////////////////////////
//    Class: SoV1PerspectiveCameraKit
//
//    New nodes in this subclass are:
//         perspectiveCamera
//
//      A parent node that manages a collection of child nodes 
//      into a unit with the following structure:
//
//                            this
//                              |
//        -------------------------------------------------------------
//        |        |           |       |    |                         |
//     "label"     |      "appearance" |"transform"                   |
//            "callbackList"           |                            "childList"
//                                  "camera"
//                                           
////////////////////////////////////////////////////////////////////

SoEXTENDER class SoV1PerspectiveCameraKit : public SoV1CameraKit {

    // Define typeId and name stuff
    SO_NODE_HEADER(SoV1PerspectiveCameraKit);

    // Define catalog for children
    SO_V1_SUBKIT_CATALOG_HEADER(SoV1PerspectiveCameraKit);

  public:
    // constructor
    SoV1PerspectiveCameraKit();

    virtual SoNode *createNewNode();
    
    SoINTERNAL public:
    static void initClass();

  protected:
    virtual ~SoV1PerspectiveCameraKit();
};
#endif  /* _SO_V1_PERSPECTIVE_CAMERA_KIT_ */