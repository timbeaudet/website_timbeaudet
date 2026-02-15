---
title: Automated Build System Progress
author: timbeaudet
type: post
date: 2016-11-02T23:21:12+00:00
url: /2016/11/02/automated-build-system-progress/
sfw_pwd:
  - A8HuMge5J1v4
categories:
  - Code Quality
  - Game Development
  - Programming
  - Tools/Editors

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-356 size-full" src="/blog/assets/2016/10/logistics-852936_1280_falco_pixabay-e1478128813442.jpg" alt="logistics-852936_1280_falco_pixabay" width="720" height="540" />][1]

I&#8217;ve been building up to this for years, and still have someÂ cogs to put into place, but I&#8217;ve finally got a major part working; the master script. The master script is something I started about 6 months ago now, wow, and ran into some issues. First I needed it to recursively search directories and run a set of scripts that would be part of the auto build process. These scripts have been<!--more--> part of my 

[template project][2]Â forÂ many years waiting.

Just searching and calling the scripts, if they exist, was not enough though. If one of the steps failed, say there are no updates, or the build failed, then the rest of the scripts should not be called, so I neededÂ the ability to pass back a value to theÂ master script to halt that process if needed. I finally have this working, for batch scripts, and amÂ that much closer to having a fully automated build system, <span style="text-decoration: underline;">of my own</span>.

It was relatively easy to send a return value back in batch, but the difficult part was doing it within a loop. See, batch scripts don&#8217;t work like C++ or other languages, instead the FOR command contains ALL the commands within. What this means is when the interpreter reads &#8220;FOR &#8230;&#8221; anything in the &#8230; gets expanded and then executed multiple times as needed for the loop.

[cpp]  
@ECHO off  
SET list=auto\_clean.bat auto\_build.bat auto_deploy.bat  
FOR %%f IN (%list%) DO (  
IF EXIST %%f (  
SET auto\_return\_value=0  
CALL %%f  
ECHO Returned value: %auto\_return\_value%  
IF 0==%auto\_return\_value% (  
REM Continue like normal  
) ELSE (  
GOTO BreakForLoop  
)  
) ELSE (  
REM echo no %%i file here  
)  
)  
[/cpp]

This bit of code will alwaysÂ continue like normal because of the above reasons. Instead what is needed it a way to delay the expansion so that it happens when the command is executed vs when it is read.Â Batch scripts actually have a way to do this, though turned off by default. Enter the commandÂ &#8220;help set&#8221; in command prompt and read about delayedÂ environment variable expansion. Essentially, one must use the command SETLOCAL ENABLEDELAYEDEXPANSION to allow this. In addition to enabling that behavior the variable must be treated with exclamation ! marks. !variable!

[cpp]  
@ECHO off  
SETLOCAL ENABLEDELAYEDEXPANSION  
SET list=auto\_clean.bat auto\_build.bat auto_deploy.bat

REM Searching the current directory ./ before searching the child directories.  
FOR %%f IN (%list%) DO (  
IF EXIST %%f (  
SET auto\_return\_value=0  
CALL %%f  
ECHO Returned value: !auto\_return\_value!  
IF 0==!auto\_return\_value! (  
REM Continue like normal  
) ELSE (  
GOTO BreakForLoop  
)  
) ELSE (  
REM echo no %%i file here  
)  
)  
[/cpp]

ThisÂ allowed theÂ loop to process the return value correctly and if one of the scripts returns a non-zero value the rest of the scripts will get skipped from the early break out of the loop. I&#8217;d like to thankÂ JÃ¯n Muhjo ofÂ [Ayphix Entertainment][3]Â for helping create the recursive search and call, and g12345 fromÂ [LudumDare IRC][4] for helping me figure out the delayed expansion issue.

If the automated build system seems like it would be useful for you, [grab it from GitHub!][5]

 [1]: https://www.timbeaudet.com/blog/2016/11/02/automated-build-system-progress/
 [2]: https://www.timbeaudet.com/blog/2015/05/17/template-project/
 [3]: http://www.ayphix.com
 [4]: http://ludumdare.com/compo/irc/
 [5]: https://github.com/timbeaudet/build_automation
