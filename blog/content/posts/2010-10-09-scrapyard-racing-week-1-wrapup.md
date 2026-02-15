---
title: Scrapyard Racing! Week 1 Wrapup
author: timbeaudet
type: post
date: 2010-10-09T02:13:17+00:00
url: /2010/10/09/scrapyard-racing-week-1-wrapup/
sfw_pwd:
  - ertLawekvbDW
categories:
  - Scrapyard Racing
  - Tools/Editors

---
Now it has officially been a week since I started the project.Â  I must say I am pleased with the progress made so far, although things need to start moving along a little quicker.Â  I am still knee deep in the editor, although wow, has it come a long ways in a single week.Â  If I must say so, this is likely the best editor Iâ€™ve ever made.Â  It has almost complete undo/redo support.Â  I canâ€™t say I am pleased with the code behind the editor.Â  Maintaining this will end up being a nightmare, I can feel it already.Â  A lot of copy/paste code segments for things like add/delete checkpoints / track nodes and other bits of information.

Since I last wrote a progress update, I have added the checkpoint system, which will be used to verify the car went around the track properly, and for timing the lap.Â  Iâ€™ve also added camera control to the editor, which involved making the engine support the mouse wheel for zooming in/out.Â  Also the track nodes now contain a width modifier, that can change the width of the track in a particular area.

Finally Iâ€™ve added a start grid tool, which can create evenly spaced grids for the starting position of the car.Â  Only 9 tasks remain on the editor and track environment and then I will be onto a new task.Â  I still donâ€™t have a good name for the project so â€œTBR: The Best Racerâ€ is sticking for now.Â  Or it could be Tim Beaudetâ€™s Racerâ€¦

[<img loading="lazy" decoding="async" class="aligncenter" src="http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day7-550x328.png" alt="A current screenshot of the editor with a textured track, checkpoints and starting grid." width="550" height="328" />][1]

My current plan of attack is to add objects / sprites to liven up the environment.Â  Trees, haybales, cones, crowds and other common trackside objects would really liven the place up.Â  After that I need to implement saving/loading of the track, and a car/world editor to assist when I start making the actual gameplay.Â  More to come in the following days.Â  If I have a miracle session tonight, perhaps the editor will be completed?Â  Ahahahaâ€¦

 [1]: http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day7.png