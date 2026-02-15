---
title: Working on Artificial Intelligence in Racing Simulations again!
author: timbeaudet
type: post
date: 2016-01-16T02:37:20+00:00
url: /2016/01/16/working-on-artificial-intelligence-in-racing-simulations-again/
sfw_pwd:
  - UPRL55pg1az7
categories:
  - AIRS
  - Game Development
  - Racing Simulator

---
I have started working on the Artificial Intelligence in Racing Simulations project again, still using Live For Speed as the base physics simulation because it is fairly accurate and reasonably accessible. Here is a short recording of the artificial driver, Jared, driving at Fern Bay Club in the XRG. A fantasy car similar to aÂ low powered rear-wheel drive sports car.

The second version/iteration of driving logic was written last year, March 2015, but my PC at the time was getting outdated and overloaded as it tried running everything it needed, plus AIRS logic could use some optimizations. I lost motivation after writing &#8220;Driving Logic version 2&#8221; (DLv2 for short), since it didn&#8217;t behave as well as I had hoped.

The driver got faster than DLv1, and learned<!--more--> a track safely so he could do better in more than a single car, but eventually he would start failing and couldn&#8217;t run endless laps. I lost motivation and gave up. Upon coming back I find it interesting that those issues are gone. Despite not touching any logic related to the learning and reference point modification process, the driverÂ did not fail anymore. I believe this is because the driver can more reliably hit marks with the frame rate boost on the new PC.Â 

_AIRS had been running atÂ **20fps** where it now runs nearlyÂ **1400fps**._

Tonight I have been focusing on getting the driver to launch the car better. The last two nights I had focused on getting the driver to recognizeÂ when the track when live (green lights) more reliably and finally got that downÂ well. Today I got the launch state to not be so jerky, he would nearly, _sometimes actually,_Â stall the car when trying to pull away from the line. I&#8217;ve been sim racing for almost 10 years now, and launching is actually one of my strengths. Trying to teach the artificial driver how to do it however, is a different story.

[cpp]  
//  
// Teach the art of launching a car to an artificial driver.  
//  
if (currentRPM < torqueRPM)  
{  
ApplySmoothThrottle(1.0f, kRateQuickly);  
if (currentRPM < torqueRPM &#8211; 1000)  
{  
ApplySmoothClutch(1.0f, kRateNormal);  
}  
}  
else  
{  
if (mDriver.IsOverThrottle())  
{  
ApplySmoothThrottle(0.2f, kRateQuickly);  
ApplySmoothClutch(0.0f, kRateVerySlowly);  
}  
else  
{  
ApplySmoothThrottle(1.0f, kRateNormal);  
ApplySmoothClutch(0.0f, kRateSlowly);  
}  
}  
[/cpp]

This bit of code basically gives the driver three different conditions to consider, first, if the engine speed is dropping below the speed where most torque lives, apply more throttle!Â **Quickly!**Â IfÂ the engine still slows down, start putting the clutch back in slowly, ride the clutch a little bit for a launch. If the engineÂ rpm is good, check if the drive tires are spinning, and release throttle quickly and slow down the release of the clutch. It may actually be worth applying more clutch slowly in this situation, and again ride it out a bit. Final case is just keep releasing the clutch while applying more throttle because the wheels are not yet spinning.