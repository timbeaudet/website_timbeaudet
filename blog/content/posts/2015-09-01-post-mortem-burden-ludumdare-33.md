---
title: 'Post-Mortem: Burden (LudumDare #33)'
author: timbeaudet
type: post
date: 2015-09-01T02:02:17+00:00
url: /2015/09/01/post-mortem-burden-ludumdare-33/
sfw_pwd:
  - WXtEuI7KxnLL
categories:
  - LudumDare
  - OneGameAMonth

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-205" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150824_210646_burden.png" alt="20150824_210646_burden" width="720" height="404" srcset="/blog/assets/2015/09/20150824_210646_burden.png 1279w, /blog/assets/2015/09/20150824_210646_burden-300x168.png 300w, /blog/assets/2015/09/20150824_210646_burden-1024x574.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

BurdenÂ follows a womanâ€™s journey through her past, as she is chased by her traumatic and guilt-ridden memories of the plane crash that killed her family. She was the only survivor.

The game was made for LudumDare #33 as a Jam entry. Â A team of three with less than 72 hours, Jeremy &#8220;mmango&#8221; Bell doing audio, Daniel &#8220;MechanicalLife&#8221;Â Akesson doing visuals and myself doingÂ the programming.<!--more-->

## Development Story

Theme was announced, YouÂ Are The Monster, and the team got busy brainstorming ideas, after a few initial rejections and combining a few elements we had the idea to do a not so endless running game with jumping and sliding mechanics. Â The small scope would allow us to get the game playable quickly,Â and we knew the challenge was going to be portraying theÂ story/mood behind the game without a giant wall of text.

After design we all essentially went forÂ the first round of sleep with little work. Â Having just arrived backÂ home from a business trip, an hour before theme was announced, I was quite tired and ended up over sleeping in the morning slightly. Â I brushed it off, threw some food down the hatch and got to work. Â Playable in 4 hours with win and lose&#8230; or not. Â MyÂ development pace was actually much slower than expected. Â DanielÂ and Jeremy were doing great tossing the art and sounds in the source control repository, but I was operating about 25% the speed I would have expected of myself.

Got the background in with the parallax effect first, then the player running, jumping and sliding over some very fake obstacles. Â Tweaked this for a few hours until it felt good. Â HackedÂ inÂ a very crude crossfade effect for the music from titleÂ to gameplay. Â The real obstacles started coming inÂ from Daniel andÂ soon after were added in game, which I had to play with the collision bounds for eachÂ obstacle individually.

The next day the shadow/ghost was added to chase the player, andÂ some more tweaking to theÂ game difficulty, howÂ much tripping on an obstacle costs. Â Thanks to theÂ others on the team, we were also able to find and remove some exploits that could have otherwise been used, like forever sliding through the level. Â Instead of fiddling with a randomÂ obstacle spawner, we decided to go with aÂ designed level, so I implemented a very simple way to place obstacles by json &#8216;script&#8217; andÂ wrapping up theÂ second full day we decided on a distance of 1000 meters and that the audio track could be custom length to fit.

The final day I had to work, but was able to find a little time to add the win sequence and a much better lose sequence to the game. Â Didn&#8217;t have time to make the intro sequence better though as the death sequence was finished 5 minutes before time ended. Â Daniel took on the role of level designer for the most part, sacrificing a nice title image for our main screen as I was busy with the win/lose sequences and Jeremy busy onÂ resizing the music track.

Package. Upload. Complete.

## What went right:

  * The scope of the game was sized appropriately, had room to add polish effects.
  * Flawless team work, communication and effort from everyone.
  * TurtleBrainsÂ allowed rapid development of the gameÂ on Mac/Windows.

## Things to improve next time:

  * Shorter level,Â 5 minutes was too much to fill with obstacles.
  * Leave more time for level design and testing, it was too rushed and too hard.
  * More animation iteration/polish, some didn&#8217;tÂ readÂ asÂ desired.
  * My personal development speed was slower thanÂ my own expectations.
  * TurtleBrains OpenGL/OpenAL crash issues for Daniel, and other players.

## Play the game:

[Play / Rate on LudumDare][2]

[Play Burden on Windows][3]

[Play Burden on Mac OS/X][4]

[Watch Play-through on YouTube][5]

 [1]: http://www.timbeaudet.com/blog/2015/09/01/post-mortem-burden-ludumdare-33/
 [2]: http://ludumdare.com/compo/ludum-dare-33/?action=rate&uid=1888
 [3]: http://www.timbeaudet.com/goods/ludumdare/ld33/burden_windows.zip
 [4]: http://www.timbeaudet.com/goods/ludumdare/ld33/burden_mac.zip
 [5]: https://www.youtube.com/watch?v=WVw5kxBhKOw
