---
title: Building the TurtleBrains Framework
author: timbeaudet
type: post
date: 2015-04-07T02:46:14+00:00
url: /2015/04/07/building-the-turtlebrains-framework/
sfw_pwd:
  - 6SFT3GkwPpjK
categories:
  - Programming
  - TurtleBrains

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-126" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/04/covered_bridge_structure.jpg" alt="covered_bridge_structure" width="720" height="405" srcset="/blog/assets/2015/04/covered_bridge_structure.jpg 1280w, /blog/assets/2015/04/covered_bridge_structure-300x169.jpg 300w, /blog/assets/2015/04/covered_bridge_structure-1024x576.jpg 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

I started writing a [**C++ game framework**][2] more than two years ago. Â ItÂ is not the first framework I&#8217;ve written,Â my hard-drive is littered withÂ frameworks and engines laying around in various states from incomplete to still working.<!--more--> Â Some DirectX, some OpenGL, a few even supportedÂ both on some basic level or another! Â This however will be the final framework I will beÂ developing for personal usage. Â This is the one I will keep, and if some part bothers me, I will refactor/rewrite that portion if needed, rather than drop it and start a fresh framework all over again. Â TurtleBrains is the one that lives on.

This leads me to put a lot more thought into the preplanning and designing of the framework. Â A good framework is consistent in naming and functionality. Â Don&#8217;t useÂ CreateObject() in one area and then MakeObject() in another. Â The code I write for the TurtleBrains frameworkÂ will strive to be theÂ highest quality, aimingÂ for readability, maintainability andÂ an API that is hard toÂ use wrong.

This should allow TurtleBrains toÂ be easy to learn and us. Â With any luck TurtleBrains willÂ allow myself and others to spend more time creating games rather than worrying about theÂ details regarding the systems those games will run on. Â Although TurtleBrains is focusing on Windows and Mac, Linux is planned for the distant future and it would be great to support iOS and Android devices as well. Â Thinking aboutÂ that scopeÂ becomes overwhelming quickly. Â It is important to remain focused on smaller tasks that build to the big picture.

 [1]: http://www.timbeaudet.com/blog/2015/04/09/building-the-turtlebrains-framework/
 [2]: http://www.timbeaudet.com/turtle_brains/documentation/
