---
title: Template Project
author: timbeaudet
type: post
date: 2015-05-17T00:13:26+00:00
url: /2015/05/17/template-project/
sfw_pwd:
  - GO1EoKoTVolJ
categories:
  - Code Quality
  - OneHourGameJam
  - Programming

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-166" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/project_template_blog.png" alt="project_template_blog" width="720" height="323" srcset="/blog/assets/2015/05/project_template_blog.png 1025w, /blog/assets/2015/05/project_template_blog-300x135.png 300w, /blog/assets/2015/05/project_template_blog-1024x460.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

During the last few weeks I&#8217;ve been working on a template project to kick off a new project quickly and efficiently. Â After it took 17 minutes to get the project to blank screen for my first [OneHourGameJame entry][2], it was time to improve the pipeline of starting a fresh project. Â The adventure started by <!--more-->creating the directory structure, something I&#8217;ve been tweaking for many years and finding it hasÂ become fairly stable,Â looking like the following:

  * ProjectName _(Primary Working Directory)_ 
      * build _(contains premake4 script which makes the vs/xcode project in platform sub-dir)_ 
          * <span style="line-height: 1.5;">automated <em>(contains scripts including post_build and auto_build to automate processes)</em></span>
          * platform _(named windows or macosx, contains vs/xcode project)_
      * documentation _(for frameworks generateÂ documentation here, or place game design doc etc)_
      * run _(contains the files and structure of the shipped project)_ 
          * data _(contains the final art, sound and other assets for the game or project, to be shipped)_
      * source _(contains all source code, including headers)_

In a few long term projects I have even been known to add a source\_art directory, and I&#8217;ve contemplated changing source to source\_code for this ambiguity but haven&#8217;t really felt the need.

The template project has several scripts to automate processes, including auto\_clean and auto\_build. Â My hope is to eventually create aÂ master script thatÂ recursively goes down through my entire development directory stopping at each project with an auto_clean to clean them all. Â This will save on harddrive space. Â I did this manually a while back, deleting all obj, debug, releaseÂ directories and other build generated files and saved **over 2gb** of space, so _an automated process has been in my mind. Â _The master script would also check if a project has anyÂ modifications within the last 24 hours, and if it does, build both debug and release versions with the auto_build script.

To be safe_r_, this master script would only call auto_ scripts from within an automated directory. Â So automated/auto\_* and it could theoretically have an auto\_deploy or auto_test that generates a report. Â For now, the master script is only in my mind, but the template projectÂ is prepared for the day it is written.

### **About the scripts**

TheÂ contents of the [template_project.zip][3] are to be used at your own risk. Â I am not to be held liable if they delete all your files or tweak something on your system. Â They were not designed to any of the above, and I&#8217;ve found them immensely useful. Â **YouÂ will need to tweak the scripts.** Â The directory structure and scripts are working as I intended for my work-flow, _your experiences will likely be different._Â  For starters the scripts are pulling TurtleBrains, require [Premake4 from industriousone.com][4] and Windows needed sed.exe installed and added to environment path. Â The main script: _createproject_tb_ will ask two questions, ProjectName and project_name. Â One being the display name, and the other for files.

My [personal coding standards][5] do not allow me to use spaces or uppercase characters in my filenames. Â I do not know how these scripts will behave with spaces in either thoseÂ answers or in directories leading to where you run the script and create the project at. Â This is not a problem for my setup, I tried to make sure to use &#8220;quotes&#8221; around all areas of the scripts, but found that sed did not like spaces inÂ DisplayName of file_name parameters.

If you do find this useful, please let me know, the scripts work on both Windows (.bat) and Mac OS X (.sh). Â I highly recommend you setup a template project of your own, itÂ reduces the redundancy of the setup task, and once working, can allow you to create throw away projects which are actually quite helpful for testing and learning.

### **Too Long To Read?**

  * [DownloadÂ the template_project.zip][3] _(andÂ use at your own risk)_ 
      * _Note there may beÂ significant issues with spaces in directory paths or parameters._
  * This template projectÂ fits my personal development structure using; 
      * Premake4 to build VisualStudio / XCode projects
      * Latest revision of my TurtleBrains C++ game development framework
  * The createproject_tb script, and all other scripts are written in and supported for; 
      * .bat files for windows
      * .sh files for mac osx

 [1]: http://www.timbeaudet.com/blog/2015/05/17/template-project/
 [2]: http://www.timbeaudet.com/blog/2015/04/29/1hgj-entry-bouncing-boxes/
 [3]: http://www.timbeaudet.com/goods/project_template.zip
 [4]: http://industriousone.com/premake-quick-start
 [5]: http://www.timbeaudet.com/coding_standards.pdf
