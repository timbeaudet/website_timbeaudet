---
title: Tire Simulation v2
author: timbeaudet
type: post
date: 2010-11-12T02:41:46+00:00
url: /2010/11/12/tire-simulation-v2/
sfw_pwd:
  - Z1Xd6k3sEaXf
categories:
  - Tire Simulation

---
**Originally Posted: November/December 2009**

In December 2008 I started a project to mimic a tire with deformable properties. Within a week or two the project had a deformable mesh, although this mesh was unstable. The project was put on hold due to career and life events until mid October 2009 where work began again.

The tire mesh is created procedurally, then a Point-Mass System is structured in a way that holds the tire together. This allows the contact patch to move separately but also get pulled back into the correct shape. During October many improvements were made including large optimizations. Removed several unnecessary springs, and placed the springs more optimally so that the tire behaved the same with fewer springs. This also allows the tire to have different resistances for lateral and longitudinal forces.

The lateral force is sideways, created when the tire is going around a tight turn and the longitudinal forces are when the throttle/brakes are applied, how the contact patch tends to hold position before bending back in shape. Top fuel dragster tires show longitudinal deformation well, [see here.][1] Check out the You-Tube video for more information.

 [1]: http://www.youtube.com/watch?v=KLtNvSL-ruA&feature=related