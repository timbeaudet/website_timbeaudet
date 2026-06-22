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

I started writing a [**C++ game framework**][2] more than two years ago. It is not the first framework I've written, my hard-drive is littered with frameworks and engines laying around in various states from incomplete to still working.<!--more--> Some DirectX, some OpenGL, a few even supported both on some basic level or another! This however will be the final framework I will be developing for personal usage. This is the one I will keep, and if some part bothers me, I will refactor/rewrite that portion if needed, rather than drop it and start a fresh framework all over again. TurtleBrains is the one that lives on.

This leads me to put a lot more thought into the preplanning and designing of the framework. A good framework is consistent in naming and functionality. Don't use CreateObject() in one area and then MakeObject() in another. The code I write for the TurtleBrains framework will strive to be the highest quality, aiming for readability, maintainability and an API that is hard to use wrong.

This should allow TurtleBrains to be easy to learn and us. With any luck TurtleBrains will allow myself and others to spend more time creating games rather than worrying about the details regarding the systems those games will run on. Although TurtleBrains is focusing on Windows and Mac, Linux is planned for the distant future and it would be great to support iOS and Android devices as well. Thinking about that scope becomes overwhelming quickly. It is important to remain focused on smaller tasks that build to the big picture.

 [1]: http://www.timbeaudet.com/blog/2015/04/09/building-the-turtlebrains-framework/
 [2]: http://www.timbeaudet.com/turtle_brains/documentation/
