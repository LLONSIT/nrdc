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
 |   $Revision: 2.4 $
 |
 |   Description:
 |	This file defines the RotateSpherical dragger class.
 |	This is a simple dragger that returns a rotation
 |	based on vectors from the center of the sphere to its surface.
 |
 |	The mouse position is projected onto a sphere determined
 |	by a center and the radius. The radius is determined from
 |	the distance from the center to the initial hit point.
 |
 | NOTE TO DEVELOPERS:
 |     For info about the structure of SoRotateSphericalDragger:
 |     [1] compile: /usr/share/src/Inventor/samples/ivNodeKitStructure
 |     [2] type:    ivNodeKitStructure SoRotateSphericalDragger.
 |     [3] The program prints a diagram of the scene graph and a table with 
 |         information about each part.
 |
 |  The following parts in this dragger are created at construction time.
 |  'ResourceName' corresponds to the name of the default geometry for the
 |  part. The dragger's constructor gets the scene graph for 'ResourceName'
 |  by querying the global dictionary ( SoDB::getByName("ResourceName"); ).  
 |
 |  Resource Name:                           Part Name:
 |
 |  rotateSphericalRotator                 - rotator
 |  rotateSphericalRotatorActive           - rotatorActive
 |  rotateSphericalFeedback                - feedback
 |  rotateSphericalFeedbackActive          - feedbackActive
 |
 |   Author(s): Paul Isaacs, Howard Look
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_ROTATE_SPHERICAL_DRAGGER_
#define  _SO_ROTATE_SPHERICAL_DRAGGER_

#include <Inventor/SbLinear.h>
#include <Inventor/draggers/SoDragger.h>
#include <Inventor/fields/SoSFRotation.h>
#include <Inventor/sensors/SoSensor.h>


class SbDict;
class SbSphereProjector;
class SoFieldSensor;

class SoRotateSphericalDragger : public SoDragger
{
    SO_KIT_HEADER(SoRotateSphericalDragger);

    SO_KIT_CATALOG_ENTRY_HEADER(rotatorSwitch);
    SO_KIT_CATALOG_ENTRY_HEADER(rotator);
    SO_KIT_CATALOG_ENTRY_HEADER(rotatorActive);
    SO_KIT_CATALOG_ENTRY_HEADER(feedbackSwitch);
    SO_KIT_CATALOG_ENTRY_HEADER(feedback);
    SO_KIT_CATALOG_ENTRY_HEADER(feedbackActive);

  public:
    // Constructors
    SoRotateSphericalDragger();

    SoSFRotation rotation;

    // Set/get a different sphere projector. The default uses an
    // SbSpherePlaneProjector. 
    // Pasing in NULL will cause the default type of projector to be used.
    // The projector will be deleted by this dragger when this dragger
    // is deleted.
    // Note that the center and radius of the sphere used by the
    // projector are determined by the dragger during dragStart.
    void			setProjector(SbSphereProjector *p);
    const SbSphereProjector *	getProjector() const	 { return sphereProj; }

  SoINTERNAL public:
    static void		initClass();	// initialize the class

  protected:

    SbMatrix        prevMotionMatrix; // used during interaction
    SbVec3f         prevWorldHitPt; // used during interaction
    SbSphereProjector	*sphereProj;	// Sphere projector to use.
    SbBool		userProj;	// using a user defined projector?

    // Redefines this to also copy the projector.
    // The projector needs to be copied since the user can set it.
    virtual void	copyContents(const SoFieldContainer *fromFC,
				     SbBool copyConnections);

    static void startCB( void *, SoDragger * );
    static void motionCB( void *, SoDragger * );
    static void doneCB( void *, SoDragger * );

    SoFieldSensor *fieldSensor;
    static void fieldSensorCB( void *, SoSensor * );
    static void valueChangedCB( void *, SoDragger * );

    void	dragStart();
    void	drag();
    void	dragFinish();

    // detach/attach any sensors, callbacks, and/or field connections.
    // Called by:            start/end of SoBaseKit::readInstance
    // and on new copy by:   start/end of SoBaseKit::copy.
    // Classes that redefine must call setUpConnections(TRUE,TRUE) 
    // at end of constructor.
    // Returns the state of the node when this was called.
    virtual SbBool setUpConnections( SbBool onOff, SbBool doItAlways = FALSE );

    virtual ~SoRotateSphericalDragger();

  private:
    // Default geometry
    static const char geomBuffer[];
};    


#endif  /* _SO_ROTATE_SPHERICAL_DRAGGER_ */


