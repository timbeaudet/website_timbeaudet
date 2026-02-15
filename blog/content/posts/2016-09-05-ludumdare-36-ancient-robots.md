---
title: 'LudumDare 36: Ancient Robots'
author: timbeaudet
type: post
date: 2016-09-05T18:02:24+00:00
url: /2016/09/05/ludumdare-36-ancient-robots/
sfw_pwd:
  - kUhB8FNXtwXx
categories:
  - Game Development
  - LudumDare

---
[<img loading="lazy" decoding="async" class="alignleft wp-image-295 size-full" src="/blog/assets/2016/09/20160828195856_screenshot-e1473095247128.png" alt="20160828195856_screenshot" width="720" height="422" />][1]

What a weekend project this one proved to be, I spent most ofÂ my Friday looking through the themes to get basic ideas, something I usually avoid. Prior to theme announcement I was assuming the theme would be unfavorable, since I had great ideas for othersÂ and so-so ideas for the rest. Ancient Technology was a so-so idea that<!--more-->initially had me going with a small &#8220;1D&#8221; defending game. Kinda like a tug-o-war.

I immediatelyÂ created files and started running with the idea before thinking upon it some more. Within about 5 minutesÂ the brilliant idea of punch cards entered my head, but I had no direction to it and 10 or so minutes after I finally put it together, programming ancient robots with the ancient technology of punch cards. It plays very similar to the game Robo Rally, which I have in my personal collection and obviously gave me some inspiration.

Within about an hour I had the robot moving from pre-plannedÂ instructions that the punch cards would represent, and with that I went offline to design and think about how to structure the code for another two hours before sleeping. In the morning I started creating the deck, hand and discard piles and got the gameplay of cards being played to the robot doneÂ within just a couple hours,Â pretty quick. I had win and lose conditions and environmental effectsÂ about 17 hours after announcement. Then things slid backwards a bit.

[<img loading="lazy" decoding="async" class="alignleft wp-image-296 size-full" src="/blog/assets/2016/09/20160828211446_screenshot-e1473098188248.png" alt="20160828211446_screenshot" width="719" height="403" srcset="/blog/assets/2016/09/20160828211446_screenshot-e1473098188248.png 719w, /blog/assets/2016/09/20160828211446_screenshot-e1473098188248-300x168.png 300w" sizes="auto, (max-width: 719px) 100vw, 719px" />][2]

The cards on screen really needed toÂ give the player information about what is happening, so I attempted to write that, twice, giving up. It was too hacky. I can write better code than spaghetti. I spent the rest of the night working on first pass graphics for cards, wow what a difference, and a lot of time (3 hours) was spent on the water animation hacks. TurtleBrains definitely needs better support for animated tiles.

In typical fashion I went to bed for the second stint of sleep and have an &#8220;aha&#8221; momentÂ regarding the sliding cards. Luckily I managed to get to sleep anyway, with a bit of effort. In the morning I went to make that fix and wound up in another fit of spaghetti.Â Having spent too much time, IÂ turned off the &#8220;good code&#8221; side of my brain andÂ &#8220;just got it done&#8221;.Â Hoping what I write was:

  1. Going to work as expected
  2. Not break and cost me more time later

Because it was awful. But it wound up working and allowing me to slide cards around how I had wanted, even able to add a nice shuffling effect. Most of this second day was spentÂ polishing the art, fixing little gameplay bugs, adding sounds and showing the health of the robot on the ui. This time I made a title screen higher priority after my disappointment in LD35, unfortunately this caused me to run out of time for designing levels.

I did manage to write a level progression bit in the final 15 minutes,Â **including**,Â _designing_ two levels. Design is used very lightly. I randomly clicked around and hit save/export. I didn&#8217;t even test the game, because LudumDare time wasÂ up. I double checked the spelling matched and packaged the game for deployment on both Windows and Mac. This wasn&#8217;t without issue though, the last 15 minute addition caused a lot of level resetting issues, that I found the next morning when I went to play through the final game. Whoops! I got those game breaking bugs fixed in just a few minutes and repackaged another, final, build forÂ Windows and Mac.

[<img loading="lazy" decoding="async" class="aligncenter wp-image-297" src="/blog/assets/2016/09/20160827172634_screenshot.png" alt="20160827172634_screenshot" width="589" height="443" srcset="/blog/assets/2016/09/20160827172634_screenshot.png 589w, /blog/assets/2016/09/20160827172634_screenshot-300x226.png 300w" sizes="auto, (max-width: 589px) 100vw, 589px" />][3]Of course #GameDevPet Sara cat and Monky bird had helped a lot and spent most of the weekend streaming which has been useful for myself to watch after the fact just so I can see where I can improve my development methods, even improvedÂ #TurtleBrains a bit including finally supporting Linux. The first ever experimental Linux build has also been deployed and feedback so far has been great!

## What Went Right

  * The idea.Â I was super excited about the idea
  * The card sliding effects reallyÂ brought the game to life, showing what happens and reducing confusion.
  * Quickly reached playable state, and win/lose.

## WhatÂ Could be Better

  * Code for card movement effects took a long time and still a giant mess, luckily it worked.
  * Code for environment / water effect took a lot longer than expected, and added less. Probably better to have dropped feature.
  * Water art and animation effects took painfully long.
  * Skipped out on music, thought it was unneeded after adding sounds,Â feedback says otherwise.
  * Completely ran out of time to design levels.

## [<img loading="lazy" decoding="async" class="alignleft size-full wp-image-298" src="/blog/assets/2016/09/20160905134542_screenshot.png" alt="20160905134542_screenshot" width="992" height="266" />][4]

&nbsp;

## Closing Thoughts

It was a great weekend, and a fun idea. I think spending a few hours designing some actual levels might be worth doing, but at the same time I&#8217;ve always left my LudumDare games as they are at the end. I had many otherÂ ideas for environmental effects, such as maybe an elephant/hippo that would keep walking straight until it hit and obstacle and then would turn left. It would hurt and push the robot around. But time ran out and I knew this was a feature creep thought among others.

## Play Ancient Robots

[Ancient Robots (Windows)][5]

[Ancient Robots (Mac OS X)][6]

[Ancient Robots (Linux)][7]

 [1]: https://www.timbeaudet.com/blog/2016/09/05/ludumdare-36-ancient-robots/
 [2]: /blog/assets/2016/09/20160828211446_screenshot-e1473095280336.png
 [3]: /blog/assets/2016/09/20160827172634_screenshot.png
 [4]: /blog/assets/2016/09/20160905134542_screenshot.png
 [5]: https://www.timbeaudet.com/goods/ludumdare/ld36/ancient_robots_windows.zip
 [6]: https://www.timbeaudet.com/goods/ludumdare/ld36/ancient_robots_macosx.zip
 [7]: https://www.timbeaudet.com/goods/ludumdare/ld36/ancient_robots_linux.zip
