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
Now it has officially been a week since I started the project. I must say I am pleased with the progress made so far, although things need to start moving along a little quicker. I am still knee deep in the editor, although wow, has it come a long ways in a single week. If I must say so, this is likely the best editor I've ever made. It has almost complete undo/redo support. I can't say I am pleased with the code behind the editor. Maintaining this will end up being a nightmare, I can feel it already. A lot of copy/paste code segments for things like add/delete checkpoints / track nodes and other bits of information.

Since I last wrote a progress update, I have added the checkpoint system, which will be used to verify the car went around the track properly, and for timing the lap. I've also added camera control to the editor, which involved making the engine support the mouse wheel for zooming in/out. Also the track nodes now contain a width modifier, that can change the width of the track in a particular area.

Finally I've added a start grid tool, which can create evenly spaced grids for the starting position of the car. Only 9 tasks remain on the editor and track environment and then I will be onto a new task. I still don't have a good name for the project so "TBR: The Best Racer" is sticking for now. Or it could be Tim Beaudet's Racer...

[<img loading="lazy" decoding="async" class="aligncenter" src="http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day7-550x328.png" alt="A current screenshot of the editor with a textured track, checkpoints and starting grid." width="550" height="328" />][1]

My current plan of attack is to add objects / sprites to liven up the environment. Trees, haybales, cones, crowds and other common trackside objects would really liven the place up. After that I need to implement saving/loading of the track, and a car/world editor to assist when I start making the actual gameplay. More to come in the following days. If I have a miracle session tonight, perhaps the editor will be completed? Ahahaha...

 [1]: http://www.ludumdare.com/compo/wp-content/uploads/2010/10/editor_day7.png
