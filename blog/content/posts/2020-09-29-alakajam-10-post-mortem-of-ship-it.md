---
title: 'Alakajam 10: Post Mortem of Ship It!'
author: timbeaudet
type: post
date: 2020-09-29T11:27:03+00:00
url: /2020/09/29/alakajam-10-post-mortem-of-ship-it/
sfw_pwd:
  - 1H2WxYYhyK6w
categories:
  - Alakajam
  - Game Development

---
<span style="font-weight: 400;">In the middle of September, game developers all over the world put their lives on hold to build a game in 48 hours during the 10th Alakajam. I was among the many and aimed to test out the custom physics engine that I barely started a few weeks before the jam. It was going to be rough. It was going to throw punches. I was going to get beaten by my own creation! My game development journey is </span>[<span style="font-weight: 400;">streamed live on twitch</span>][1]<span style="font-weight: 400;">, and I was going to bring my best.</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-546" src="/blog/assets/2020/09/alakajam10_idea.jpg" alt="" width="720" height="475" />][2]

**Friday Evening:**

<span style="font-weight: 400;">Other game developers have already been developing their projects for a few hours while I was still work-working away. I did have the chance to mull over theme ideas, but having played a lot of Fall Guys recently I figured an obstacle course â€œrunningâ€ game would be a great test for the physics engine. The theme was not a single but choose one or more of three themes; Maps, Chaos and/or Ships. So my idea was simple; an obstacle course on the docks where the player boards a ship.</span><!--more-->

<span style="font-weight: 400;">The first few hours was spent hooking the game up with my custom Track Builder tool. While this tool is focused on making race tracks it can also create more generic worlds too, and would be used to create the level. The art of the game was also created in this first hour or so with some boxes and spheres created and colored in Blender, while not the most detailed or amazing art &#8211; I do think it looks pretty good for what little effort was put in.</span>

<span style="font-weight: 400;">I got started on the physics by taking the objects loaded from Track Builder and converting them into RigidBodies for the physics system. I was trying something new and allowing objects to be scaled in Track Builder, but I knew the physics system would not support scaling so during load I had to remove the scale from each box/sphere before shoving it into the physical world. The physics engine delivered the first punch by containing only spheres and static-boxes, so the player object was forced to be a sphere.</span>

<span style="font-weight: 400;">The remainder of the evening was spent fighting with camera and player controls, neither of which went to plan. Instead of prolonging a pointless fight with these issues I went to bed to get rested for the following day of development.</span>

**Saturday Morning:**

<span style="font-weight: 400;">While trying to fall asleep I had a breakthrough in how to get the camera to do what I wanted and how the player movement might work out. In less than an hour I had this behaving as desired and was able to start playing around. That is until the physics engine dealt another blow. With the player moving it became apparent there were issues with oriented boxes as the dynamic sphere phased through them.</span>

<span style="font-weight: 400;">During the development of the physics engine, prior to the jam, I had created both visual and unit tests of intersecting the boxes and spheres and found no issues. After an hour of digging into the issue the solution was to avoid the problem by not using oriented boxes that were scaled. Which limited a bit how the level could be designed.</span>

<span style="font-weight: 400;">The first obstacles added were doors/gates that slide up and down and the player had to get the timing correct. Later in the weekend I concluded this obstacle had very little interest because there was nothing rushing the player to get through. While adding all of this to the level I found I was getting annoyed with Track Builder which was dropping the scale of aligned-boxes when duplicating objects.</span>

<span style="font-weight: 400;">During the 15 minutes of digging into code for Track Builder to support duplicating scaled objects without rotation I had a hunch that I did it wrong back when loading the level into the physical world. With a bit of googleâ€™s help I got it solved and fixed the issue with oriented boxes being scaled! Double victory, ramps were possible once again!</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-545" src="/blog/assets/2020/09/20200920131907_screenshot.png" alt="" width="720" height="405" srcset="/blog/assets/2020/09/20200920131907_screenshot.png 1280w, /blog/assets/2020/09/20200920131907_screenshot-300x169.png 300w, /blog/assets/2020/09/20200920131907_screenshot-1024x576.png 1024w, /blog/assets/2020/09/20200920131907_screenshot-768x432.png 768w" sizes="auto, (max-width: 720px) 100vw, 720px" />][3]

**Saturday Afternoon:**

<span style="font-weight: 400;">What shipping docks would be complete without having cannons firing into the harbour? Originally this obstacle was going to be falling crates that push the player around &#8211; but that didnâ€™t test anything new on the physics system. Shooting cannonballs from cannons would prove how dynamic spheres worked in action. I did note an issue with the cannonballs behaving in a â€œstickyâ€ manner where gravity seemed to affect one less as it resolved collision with the other.</span>

<span style="font-weight: 400;">This was clearly something to work around but the theory is the collision response separating the balls from intersecting is overriding the forces of gravity. During this I also had to test removing RigidBodies from the physics world, except that function did not exist. Well it did but some funny guy named it â€œ</span><span style="font-weight: 400;">DisposeOfBody()</span><span style="font-weight: 400;">â€. That got promptly deprecated and replaced by </span><span style="font-weight: 400;">RemoveBody()</span><span style="font-weight: 400;">.Â </span>

<span style="font-weight: 400;">After programming in a language for more than 15 years you would think Iâ€™d be competent at a task as easy as removing elements from a container. Instead I fell directly into the trap of expecting </span><span style="font-weight: 400;">std::remove()</span> <span style="font-weight: 400;">to remove the bodies from the container. In C++ this is not what happens for various reasons. Instead C++ requires the use of the â€œerase remove idiomâ€ to actually destroy the items removed.</span>

<span style="font-weight: 400;">I only discovered this trap because I made the cannons fire at incredible rates of speed compared to how slow the cannonballs got destroyed. That said the physics engine defended well for not having any bounding-volume hierarchies or any broad-phase tests. Using O(n</span><span style="font-weight: 400;">2</span><span style="font-weight: 400;">) for the intersection tests with over 500 cannonballs and lots of boxes, aligned and oriented, in the level. Future work is planned to ensure each cannonball only tests things near it instead of everything in the physics world, but for now, it worked better than expected.</span>

**Saturday Evening:**

<span style="font-weight: 400;">Another mini-game was started that combined two games from Fall Guys, the memory game and tip-toe. The player was expected to memorize the path across as all the tiles looked identical but many would fall without having collision. This was to tie in with the theme of â€œMapsâ€ a little by requiring the player to map out the safe path.</span>

**Sunday Morning:**

<span style="font-weight: 400;">First efforts of the morning were to improve the memory mapping game and create a second, easier, version of it where the tiles would remain fallen. Also got the tiles shaking to warn the player it is unsafe to move onto. This prompted the addition of checkpoints because it would be obnoxious to cross the tiles of doom only to fall into the drink and restart everything again. So safety points were added to the level that would respawn the player at that location again.</span>

<span style="font-weight: 400;">With three obstacle sets and the jam deadline approaching it was time to focus on a finish objective. I quickly modeled a very poor ship and treasure chest for the player to reach and put a victory trigger around it to show their time and how many times they fell into the harbour.</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-544" src="/blog/assets/2020/09/20200920131754_screenshot.png" alt="" width="720" height="405" srcset="/blog/assets/2020/09/20200920131754_screenshot.png 1280w, /blog/assets/2020/09/20200920131754_screenshot-300x169.png 300w, /blog/assets/2020/09/20200920131754_screenshot-1024x576.png 1024w, /blog/assets/2020/09/20200920131754_screenshot-768x432.png 768w" sizes="auto, (max-width: 720px) 100vw, 720px" />][4]

**What Went Well!**

<span style="font-weight: 400;">The physics system worked great, it behaved and performed well, exceeding all expectations. The obstacle course idea was simple to execute and could shrink or grow as necessary for time constraints. The art, although just colored primitive shapes, came out better than imagined andÂ  creating the water effect was quite simple using the ocean generator in Blender.</span>

**What was learned?**

<span style="font-weight: 400;">The major issue with â€œthe physics engineâ€ faced during the event was due to removing the scale while putting objects into the physics world and wasnâ€™t actually the physics engine.</span>

<span style="font-weight: 400;">During Alakajam 10 I was keeping a list of each pain point as it was discovered. This list grew to 35 items and I was able to quickly knock out more than 30 of them in preparation for the next jam this weekend. LudumDare 47 starts on Friday and I will be using it to test the physics engine again. I will of course be streaming my developments.</span>

[<span style="font-weight: 400;">Follow me on twitch</span>][1] <span style="font-weight: 400;">to see a game get developed from idea to release.</span>

 [1]: https://www.twitch.tv/timbeaudet
 [2]: /blog/assets/2020/09/alakajam10_idea.jpg
 [3]: /blog/assets/2020/09/20200920131907_screenshot.png
 [4]: /blog/assets/2020/09/20200920131754_screenshot.png
