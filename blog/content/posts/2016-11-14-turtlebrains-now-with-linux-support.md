---
title: TurtleBrains now with Linux Support
author: timbeaudet
type: post
date: 2016-11-14T02:12:31+00:00
url: /2016/11/14/turtlebrains-now-with-linux-support/
sfw_pwd:
  - hiql63Ox9PWH
categories:
  - Game Development
  - Programming
  - TurtleBrains

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-362 size-full" src="/blog/assets/2016/10/turtlebrains_on_linux.png" alt="turtlebrains_on_linux" width="720" height="400" srcset="/blog/assets/2016/10/turtlebrains_on_linux.png 720w, /blog/assets/2016/10/turtlebrains_on_linux-300x167.png 300w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Upon starting [TurtleBrains][2] it was planned to support many major platforms. _Not so_ recently Linux support was added, actuallyÂ TurtleBrainsÂ had been compiling on Linux, and even running with <span style="font-family: 'Lucida Console', monospace;">#define tb_legacy_gl_forced</span> in tbi_renderer.h (or compilation settings). This of course is not very<!--more--> user friendly, and it seemed to have a few issues with text so a game was never actually released, nor support claimed.

The issue for several months (probably close to 9 of them) was an inability to create the the OpenGL 3.2 Core context. After combing through the code for two days, and comparing against several tutorials and having help from the [#LudumDare irc][3] channel, the issue finally emerged.

[cpp]  
int contextAttributes[] = {  
GLX\_CONTEXT\_PROFILE\_MASK\_ARB, contextProfileBit,  
GLX\_CONTEXT\_MAJOR\_VERSION\_ARB, glVersion.mMajor,  
GLX\_CONTEXT\_MINOR\_VERSION\_ARB, glVersion.mMinor,  
GLX_NONE //Incorrect. This should be: None, or 0  
};  
[/cpp]

Not being super familiar with the platform/GLX I had unknowingly used GLX\_NONE to represent the end of the contextAttributes array that would be passed to create the 3.2 Core context. The value of GLX\_NONE is <span style="text-decoration: underline;"><strong>NOT</strong></span> zero.

I repeat; NOT ZERO

This actually caused a really weird crash that, with CodeLite IDE debugger, (aka GDB),Â appeared to be an issue calling the glXCreateContextAttribsARB function, and I got hung up thinking the function pointer was invalid.Â _The actual error was attempting to access memory out of bounds since GLX_NONE was not signifying the end of the attributes array._

After fixing this issue I was able to make an experimental Linux build of my LD36 game, [Ancient Robots][4].

 [1]: https://www.timbeaudet.com/blog/2016/11/14/turtlebrains-now-with-linux-support/
 [2]: https://www.turtlebrains.com
 [3]: http://ludumdare.com/compo/irc/
 [4]: https://www.timbeaudet.com/blog/2016/09/05/ludumdare-36-ancient-robots/
