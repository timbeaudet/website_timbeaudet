---
title: '#1HGJ Entry – Flight'
author: timbeaudet
type: post
date: 2015-05-15T21:20:44+00:00
url: /2015/05/15/1hgj-entry-flight/
sfw_pwd:
  - yFuF77Jmcfpb
categories:
  - Game Development
  - LudumDare
  - OneHourGameJam

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-162" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150515_flight_gameplay.png" alt="20150515_flight_gameplay" width="720" height="421" srcset="/blog/assets/2015/05/20150515_flight_gameplay.png 1286w, /blog/assets/2015/05/20150515_flight_gameplay-300x175.png 300w, /blog/assets/2015/05/20150515_flight_gameplay-1024x599.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Here is a game I made in a single hour for OneHourGameJam the theme, and thus title is: Flight

[Flight (for Mac OS X)][2]

[Flight (for Windows)][3]

Working on a game in an hour is a great way to learn the weaknesses about your development pipeline, be it in coding, art or audio. Â TheÂ result is almost always a project that will get thrown away, seriously it took 60 minutes to make, but the experience is certain to teach you something and sharpen game development skills.

This was the third time I had tried the experiment and the first time that TurtleBrains had a working entity manager. Â In both previous attempts I had to spend far too much timeÂ making sure the entities were cleaned up,Â so last week I worked on entity management and behavior system, but was unable to really test it until now. Â The great thing is this produces a real-world test on these systems.

The art from this project was taken from voxel&#8217;s MiniLD sheet just moments before theÂ jam started, and so was not done within the hour. Â Immediately had a problem with the template project but with a slight script edit, and some copy/pasting of the concept_kit I had things ready to go. Â Flight immediately put Flappy Bird into my mind, and I decided to run with a clone of that due to scope.

Created a blockÂ object that would remove itself from the entity manager once it gets too far off screen, and has a constant velocity toward the right with collision. Â The player object waits for the user to press either the up or space key to start flying, which increases score and tells the gameplay scene to begin spawning blocks. Â Add in a score and best score and the game was actually fairly complete.

**Things learned during this hour:**

  * NeedÂ to add a template_entity to the template project.
  * The collision and entity management added to TurtleBrains was **simplyÂ amazing and powerful**.
  * Audio failed when using bfxr on the Mac, perhaps endianness?

 [1]: http://www.timbeaudet.com/blog/2015/05/15/1hgj-entry-flight/
 [2]: http://www.timbeaudet.com/goods/ludumdare/hour_games/20150515_flight_mac.zip
 [3]: http://www.timbeaudet.com/goods/ludumdare/hour_games/20150515_flight_windows.zip
