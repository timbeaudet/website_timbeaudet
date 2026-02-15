---
title: Animator Project
author: timbeaudet
type: post
date: 2011-10-07T20:56:35+00:00
url: /2011/10/07/animator-project/
sfw_pwd:
  - 6INWC4d8FhNj
categories:
  - Tools/Editors

---
The weekend after Ludum Dare some of my plans fell through so I decided to work on a simple animation project, a major feature I had to cut from my project.Â  The project was simply joints and bones with simple interpolation between keyframes.Â  The editor, or lack of, consisted of 10 key frames and a stick man with 11 joints and 10 bones.

After getting the mouse to drag a joint it was clear I needed to make the editor smart enough to keep the joint dragged within the length of the bone as the bones would be growing/shrinking during the animation and messing stuff up.Â  After adding the limits, it was starting to act how I wanted; although I had to press digits 0 through 9 quickly to see the animation.

While writing the interpolation from frame X to frame Y I came across a bug where I was accounting for an offset I didn&#8217;t need to and it resulted in something surprising but cool; stickman into spaceship.