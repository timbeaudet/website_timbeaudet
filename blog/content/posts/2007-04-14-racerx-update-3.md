---
title: RacerX (Update 3)
author: timbeaudet
type: post
date: 2007-04-14T22:13:17+00:00
url: /2007/04/14/racerx-update-3/
sfw_pwd:
  - 3vnvRcMFULIl
categories:
  - RacerX

---
(Historic Post: April 14th 2007)

Well its been a while since I have been working on my project.Â  But I have some surprises for everyone who is interested.Â  TREES!Â  Wow, the possibility of making the world feel more three-dimensional.Â  Currently the car cannot collide with the trees so instead you fly right through them but the visual effect was worth the effort.Â  Since the trees are transparent they need to be drawn to the screen in a special way.Â  Basically needing to be drawn last and in a special order from farthest away from the camera to the nearest.Â  So I needed to write a function to sort the list of trees.Â  I decided to use MergeSort since it is faster then QuickSort on the worst case, and uses less memory.Â  Though this proved troublesome.Â  Miguel De La Cruz helped me for the last couple of hours debugging the code, reading it carefully and finally I found that I wasn&#8217;t adding the trees to the end of the list; instead I was adding them to the beginning of the list&#8230;Â  So thatÂ was the bug for the day and trees are now on the screen.Â  I plan to work a little more on the interface and possibly networking or physics code shortly.