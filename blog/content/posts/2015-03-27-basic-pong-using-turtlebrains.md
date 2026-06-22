---
title: Basic Pong using TurtleBrains
author: timbeaudet
type: post
date: 2015-03-27T18:28:56+00:00
url: /2015/03/27/basic-pong-using-turtlebrains/
sfw_pwd:
  - EmwwVtQzMQMM
categories:
  - LudumDare
  - Programming
  - TurtleBrains

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-101" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/03/20150325_195700_basic_pong-e1430259212410.png" alt="" width="720" height="418" srcset="/blog/assets/2015/03/20150325_195700_basic_pong-e1430259212410.png 1276w, /blog/assets/2015/03/20150325_195700_basic_pong-e1430259212410-300x174.png 300w, /blog/assets/2015/03/20150325_195700_basic_pong-e1430259212410-1024x594.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Basic Pong was the first game <!--more--> created and released with the TurtleBrains framework during Mini LudumDare #58. It does run on both Windows and Mac, however on Mac you need to run from terminal. I need to sort that out a bit. It was a great test, I've been testing TurtleBrains in a few long going projects, adding to it here and there, but I decided to start Pong from scratch, not even using my premake scripts. Attempting to put myself in the shoes of potential developers using TurtleBrains.

The experience was great, for me as the developer of TurtleBrains. It would have been a poor experience for someone who wanted to use a simple framework. First, a few defines in my premake files need to happen automatically, the source in the documentation directory needs to have #ifdefs around it and the general process needs a little cleaning.

But this was good. I will try creating more small "from scratch" projects as time moves forward so that I improve this process. A driving force behind TurtleBrains was to make things easier. Start a project, add TurtleBrains source, make a scene, and game running. It is nearly there, and will get there as time continues.

If you want to try the never ending, extremely simple, two player version of Pong, you can download them at [Basic Pong on Mac][2] or [Basic Pong on Windows][3] and enjoy!

&nbsp;

 [1]: http://www.timbeaudet.com/blog/2015/03/27/basic-pong-using-turtlebrains/
 [2]: http://www.timbeaudet.com/goods/mld58/basic_pong_mac.zip "Basic Pong on Mac"
 [3]: http://www.timbeaudet.com/goods/mld58/basic_pong_windows.zip "Basic Pong on Windows"
