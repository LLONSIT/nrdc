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
 |   Description:
 |	Data sensor that is attached to a node in a scene graph. The
 |	sensor is scheduled when a change is made to the node or to any
 |	node below it in the graph.
 |
 |   Author(s)		: Nick Thompson, Paul Strauss
 |
 ______________  S I L I C O N   G R A P H I C S   I N C .  ____________
 _______________________________________________________________________
 */

#ifndef  _SO_NODE_SENSOR_
#define  _SO_NODE_SENSOR_

#include <Inventor/sensors/SoDataSensor.h>

class SoNodeSensor : public SoDataSensor {

  public:
    // Constructors. The second form takes standard callback function and data
    SoNodeSensor();
    SoNodeSensor(SoSensorCB *func, void *data);

    // Destructor
    virtual ~SoNodeSensor();

    // Attaches the sensor to the given node
    void		attach(SoNode *node);

    // Detaches the sensor if it is attached to a node
    void		detach();

    // Returns the node to which the sensor is attached, or NULL if it
    // is not attached.
    SoNode *		getAttachedNode() const		{ return node; }

  private:
    SoNode *		node;		// Node sensor is attached to

    // Called by the attached node when it (the node) is about to be deleted
    virtual void	dyingReference();
};

#endif  /* _SO_NODE_SENSOR_ */
