---
title: Project Generation Automation
author: timbeaudet
type: post
date: 2011-08-19T03:12:37+00:00
url: /2011/08/19/project-generation-automation/
sfw_pwd:
  - VaSAOOs5tNBF
categories:
  - Tools/Editors

---
During the last several months or more I've started several projects, only to abandon them at, or soon after, blank screen. Mike "PoV" Kasprzak made a <a href="http://www.toonormal.com/2011/07/31/premake-my-new-best-friend-re-msvc-xcode/" target="_blank">blog post</a> about using [premake][1] to create a project. My process had been copy a template directory, with some basic code to get to blank screen, to where I want my new project, rename as needed - create the Visual Studio project and setup everything; include and library directories, debug working directory, post-build events, etc etc... Two to three hours later I had a blank screen, and rarely had motivation to continue much further.

Enough with that.

I started playing with my ["make.lua"][2] premake script first, and my immediate impression was, 'meh'. But after an hour I realized the potential it had. I copied my template directory and used premake to make the project. During the process I realized it was powerful enough to set include/lib directories, and all the other tedious settings I previously had to do manually. It also occurred to me that I could use a windows batch file "CreateProject.bat" to automate the process _even_ more.

Quickly [CreateProject.bat][3] would copy the template directory to a new location, rename it to the project and call premake to create the project on the spot. This wasn't quite enough, I wanted it to build the project in both Debug and Release, and do some find/replace in files as needed for personal preference. While talking about this automation project with Pekka "pekuja" Kujansuu "sed" was mentioned. Sed is a stream editor on the unix platform which has find and replace capabilities. With great help from Pekka and Mike, I was able to get it to do what I needed with renaming.

&nbsp;

This all took several, eight to twelve, hours but the next, or any future, time I need to make a project, is is a matter of typing  "CreateProject MyNewProject" inside command-line and all the magic happens. My final step will be to setup a script to add the project to a subversion repository, but that will be a few weeks or whenever I get around to it. I am amazed at how rewarding this feels.

The files that do the magic are here, although probably needs quite a bit of work to generate a project that would be useful to your needs:

  * <a href="http://www.timbeaudet.com/goods/autoproj/createproject.bat" target="_blank">CreateProject.bat</a> - This is the main access point that gets the automation rolling.
  * <a href="http://www.timbeaudet.com/goods/autoproj/make.lua" target="_blank">make.lua</a> - This is used by premake to setup the solution and project as needed.
  * <a href="http://www.timbeaudet.com/goods/autoproj/build.bat" target="_blank">build.bat</a> - This is a small bat to build from command-line with VS2010.

 [1]: http://industriousone.com/premake
 [2]: http://www.timbeaudet.com/goods/autoproj/make.lua
 [3]: http://www.timbeaudet.com/goods/autoproj/createproject.bat
