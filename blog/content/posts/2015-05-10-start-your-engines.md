---
title: Start your engines!
author: timbeaudet
type: post
date: 2015-05-10T04:13:05+00:00
url: /2015/05/10/start-your-engines/
sfw_pwd:
  - 1lNIdeQ1wDNO
categories:
  - Programming
  - Racing Simulator
  - Zoom Car World 3

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-154" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150509_235700_progress.png" alt="20150509_235700_progress" width="720" height="392" srcset="/blog/assets/2015/05/20150509_235700_progress.png 1279w, /blog/assets/2015/05/20150509_235700_progress-300x163.png 300w, /blog/assets/2015/05/20150509_235700_progress-1024x558.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Not quite started, but tonight work began on Zoom Car World 3, the demo and learning project I will be using as a stepping stone to write a full blown racing simulator. Â For years this project has been placed on the sidelines, but withÂ the current goal to work towards it for an hour a day every day, I am confident things will keep moving.

Current progress wasÂ getting back into the old ZCW3 project that was started last summer just before Sonia and I went off to PeruÂ to hike the Salkantay-Inca trail. Â The project has some form of very basicÂ track editor in the works, although ultimately a lot more work is still needed. Â Currently the efforts are being focused on giving the car an engine that is simulated, at least on a basic level, physically.

This means taking several things in consideration, the inertia of the engine. Â All those rotating parts resist changes to theÂ rotation. Â If they are not yet rotating, they willÂ fightÂ to remain stationary, and if they areÂ rotating they will fight the urge to slow or speed up. Â A torque will be applied to the engine to increase, or decrease if needed, the speed of these rotations. Â However I must have some units wrong or have yet to combine all the parts in the code correctly.

[cpp]  
angularAcceleration = outputTorque / engineInertia;  
angularVelocity = angularVelocity + angularAcceleration * deltaTime;  
engineSpeedRPM = angularVelocity / tbMath::kTwoPi * 60.0f;  
[/cpp]

That is essentially what I believe I need to do. Â _angularVelocity_Â should be in radians a second from everything I understand, and _outputTorque_ and _engineInertia_ in Newton-meters (Nm). Â This would makeÂ _engineSpeedRPM_, in revolutions-per-minute to be 60 times angularVelocity over a full rotation (two-pi). Â This does make sense to my brain, however the results,Â rate at which the engine speed increases / decreases is not quite what I was expected with no clutch or drive train. Â It takes a good 3 seconds to go from 1000rpm to 8000rpm and I would be expecting this to be like a second. Â Will continue tweaking, so stay tuned for updates.

 [1]: http://www.timbeaudet.com/blog/2015/05/10/start-your-engines/
