---
title: Portal Miner Post Mortem
author: timbeaudet
type: post
date: 2015-04-22T03:33:13+00:00
url: /2015/04/22/portal-miner-post-mortem/
sfw_pwd:
  - KaSAgiplHnyB
categories:
  - LudumDare
  - Programming

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-140" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/04/20150420_210000_portal_miner_title-e1430259030290.png" alt="" width="720" height="404" srcset="/blog/assets/2015/04/20150420_210000_portal_miner_title-e1430259030290.png 1277w, /blog/assets/2015/04/20150420_210000_portal_miner_title-e1430259030290-300x168.png 300w, /blog/assets/2015/04/20150420_210000_portal_miner_title-e1430259030290-1024x575.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

## Play Portal Miner:

  * [Portal MinerÂ LudumDare Page][2]
  * [Portal Miner for Windows][3]
  * [Portal Miner for Mac OS X][4]

Going into LudumDare 32 a team formed, my girlfriend, Dizzy, wanted to help with art using InkScape as she had done during LD27 in our Feeding Time game. Â Mmango had also been interested in doing the audio, sound and music, and I would take point to keep the team together and do the programming. Â This would be the first event where I would

<!--more--> use TurtleBrains under pressure. Â I had made a few small test projects, Mini-LD 58â€™s Basic Pong was the first of such projects. Â I knew that TurtleBrains would have some limitations, but was confident it was ready for debut.

When the theme was announced at 9:00pm local time, my girlfriend and I were slightly disappointed. Â We were hoping for Creatures of the Night or Harvest to make a small racing game, something Iâ€™ve always wanted to do for LudumDare, but have yet to do. Â We put our design hats on and with some help from irc came up with a small racing game in space with portals used by the track/environment as an Unconventional Weapon to lengthen the race. Â The next few hours we spent working out the details, writing a quick document and starting some of the very basic, placeholder art and getting a basic scene put together.

Dizzy and Mmango were a bit busy for a portion of Saturday, and I carried on getting a first interactivity up and running. Â Once the basic player movement focus switched to creating and loading a track. Â TurtleBrains doesnâ€™t yet have any nice editors, but figured I could use InkScape to get a list of points easily enough. Â After making a basic shaped track and attempting to load the svg unsuccessfully for more than an hour I gave up and converted the points into json by hand. Â Sometimes the slow way is faster than the best way.

With a track loaded, trying to follow it was incredibly hard. Â Even though the vacuum of space does not have resistance, I added â€œstabilizersâ€ that would slow/stop rotations and movement. Â This made it much better, and I could indeed get around the track, but it was still too difficult. Â Once Dizzy got back she tried playing it, and as a non-gamer was a bit confused by the controls, but worse showed exactly how difficult it was to play.

The screen didnâ€™t show enough of the track, and Dizzy , and to make it do so would make the spaceship tiny. Â After going back and forth for another hour we made the decision to stop working and go for a walk to consider other ideas. Â We went back and forth over some ideas and wanted to keep the same art, finally we had something good. Â Collecting asteroids for minerals using the same spaceship and portal idea we had started working on.

The code was practically scrapped and started from scratch, the new ship movement was restricted to lanes, there was no racetrack, and we didnâ€™t really have a need for the fake camera system I had spent hours building that morningâ€¦ Â But we had an idea to run with, we updated the documents at 5:15pm Saturday, 20 hours after the theme had been announced. Â Mmango was still busy and we hoped heâ€™d be okay with the new design direction.

I worked quickly and late into the night trying to get the new interactivity up and running. Â Dizzy worked on improving the art for the player ship, added asteroids of various sizes and mineral types. Â Initially we were going to do randomized levels, but Iâ€™ve never liked that those usually had â€œimpossibilitiesâ€ built in, forcing the player to die based on the random seed. Â So we opted for â€˜patternsâ€™ that were randomly selected.

The first sound effects were added late Saturday night when Mmango finally got freed up and the rest of Sunday was spent wrapping up the game, adding the portal, collecting the mineral asteroids, a score, player death. Â Initially we had planned to have a results screen, but opted to use the Title -> Gameplay -> Title loop instead so it could have a little extra polish and was seamless.

Mmango sent more sounds and the music on Monday while Dizzy and I spent some time making patterns in the final two hours of the jam. Â Mmango did a great job on the music and iterating over the sounds quickly to give the right effects and make sure they could be heard. Â Dizzy and I ran out of time editing the patterns, just as we had during the LD27 Feeding Time game with our level design.

  * Programming Time: 14hrs 10min
  * Level Design: 2hrs 30min
  * Play Testing: 2hrs 47min

****Â ****

## What went right:

  * The teamwork went smoothly, everyone had control of their portion of the project.
  * The gameplay actually became fun and exciting at the end.
  * TurtleBrains successfully allowed the game to run on Windows and Mac OS X.
  * Scrapping the initial idea very likely allowed the project to become better than had we pushed forward with the hard to control space racing game.

&nbsp;

## What went wrong:

  * The initial idea was a bit difficult to play and this is something I should have seen coming before we spent most of a day developing the interactivity.
  * Not enough time spent on level design, or patterns. Â This likely resulted in not having the game in a fully interactive (win/lose) conditions until mid/late Sunday day.
  * TurtleBrains has room for improvement, a particle system would have made the game visually impressive, a proper camera system would have saved time on the initial idea, the entity management had to be to created on the fly, and a basic tile system would have allowed us to choose other ideas that we really liked.

****Â ****

## For next time:

  * TurtleBrains will only get better, it allowed me to create the best C++ game in 48 hours that Iâ€™ve done yet, so I look forward to see future results with ParticleSystem, TileSystem, Camera and better Entity Management.
  * Keep the gameplay simple and imagine what it will play like before making the interactivity, this could have possibly saved the time spent on the racing concept.
  * Get the game playable with win/lose conditions as soon as possible. Â This went flawlessly for my compo LD31 game Precise Shot and is critical for iterative game development.
  * Donâ€™t leave level design until the very end. Â Perhaps the next jam will have a level designer added to the team.

 [1]: http://www.timbeaudet.com/blog/2015/04/22/portal-miner-post-mortem/
 [2]: http://ludumdare.com/compo/ludum-dare-32/?action=rate&uid=1888
 [3]: http://www.timbeaudet.com/goods/ludumdare/ld32/portal_miner_windows.zip
 [4]: http://www.timbeaudet.com/goods/ludumdare/ld32/portal_miner_macosx.zip
