---
title: Scrapyard Racing! Track Editor and Tools
author: timbeaudet
type: post
date: 2010-10-05T02:08:53+00:00
url: /2010/10/05/scrapyard-racing-track-editor-and-tools/
sfw_pwd:
  - VmMKWF3sfV6t
categories:
  - Scrapyard Racing
  - Tools/Editors

---
Well progress has been coming since I last posted the Splash screen.Â  I have been working on some tools, in particular the track editor.Â  I remain vague about my game idea for the current time, but it will be a racing game; for all intent and purposes.Â  I am focusing efforts on being unique, and a thorough google search only brought up 2 other â€œpersonalâ€ projects/attempts at what I am doing.Â  I am hoping that serves to my advantage, but I am happy to know I have an idea that is more original than just making an Pac-Man clone with different theme.

So about this track editor; I spent my day Sunday working on starting it, and Monday night after work I lost about 3 hours of productivity.Â  I was beat, muscles aching, etcâ€¦ and couldnâ€™t concentrate.Â  However I did manage to get a few productive hours and managed more than I expected for the night.Â  Undo/Redo capabilities for all current actions:Â  Add/Delete TrackNodes as well as the ability to Move/Edit the node.Â  This editor is within the game*, however it will likely be stripped from the release build.

[<img loading="lazy" decoding="async" class="aligncenter" src="http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day1-550x329.PNG" alt="An editor under development for my Sell-a-Game Challenge." width="550" height="329" />][1]

I have been wondering quite a bit whether or not I should implement undo/redo.Â  I estimate it will take 3x or so longer to maintain the actions, but I also believe it will save time when designing/developing more tracks.Â  I plan on a minimum of 5 tracks, but hope for more than that.

Tonight Iâ€™ve started by writing this post, soon I will begin working on building the actual track from the nodes above.Â  I am hoping that doesnâ€™t take me all night.Â  I want to do more than just that, but at this time I have nothing else planned, as I canâ€™t think what comes next.

*Although it is within game, I have an EditorFramework that acts as an external editor; giving me advantages of a professional looking interface, menus and more.

**A few hours later. . .**

Well, I did manage to get somewhere tonight.Â  Even further than just getting the track surface built from the nodes.Â  Although, I didnâ€™t get the track textured, yet, I did manage to build it quickly.Â  Also I sent it off to a partner of mine, and fixed several small editor â€˜issuesâ€™.Â  Added saving/loading of editor settings for convenience , undo/redo still fully working.Â  (Redo for the move action was previously broke!)Â  Here is a small image of the track being built from the nodes:

[<img loading="lazy" decoding="async" class="aligncenter" src="http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day2.PNG" alt="A track being built from the nodes!" width="550" height="329" />][2]

 [1]: http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day1.PNG
 [2]: http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day2.PNG