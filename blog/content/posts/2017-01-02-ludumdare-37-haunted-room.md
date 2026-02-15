---
title: 'LudumDare 37: Haunted Room'
author: timbeaudet
type: post
date: 2017-01-02T16:44:53+00:00
url: /2017/01/02/ludumdare-37-haunted-room/
sfw_pwd:
  - 5f6Y493CP7Qo
categories:
  - Game Development
  - LudumDare

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-378" src="/blog/assets/2017/01/20161211204453_screenshot.png" alt="20161211204453_screenshot" width="720" height="404" srcset="/blog/assets/2017/01/20161211204453_screenshot.png 1279w, /blog/assets/2017/01/20161211204453_screenshot-300x168.png 300w, /blog/assets/2017/01/20161211204453_screenshot-768x431.png 768w, /blog/assets/2017/01/20161211204453_screenshot-1024x575.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]During the ramp up of the LudumDare weekend I didn&#8217;t actually pay much attention to the themes I was voting on, or which was popular or not.Â I didn&#8217;t even take the top 20 list and try thinking ofÂ different ideas like I&#8217;ve done in the past. One Room was announced as the theme and immediately I wasÂ at a loss. Like normal everybody<!--more--> in irc complaining about the theme, so I just left that alone for the time.

Over the last year I&#8217;ve been playing more and moreÂ tabletop / boardgames andÂ I guess the &#8216;success&#8217; of my LD36 entry, Ancient Robots lured me into doing another tabletop like game. I mashed together the mechanics of Dungeon Roll with the theme of The Big Book of Madness which is our current favorite. How hard could it be, roll some dice to getÂ things that can attack, have enemy types that match the dice to BE attacked, and some form of scoring.

### Not quite that simple

The following morning I got onto making a SpellBook to define and contain the different effects, Fire, Water, Earth and Mind were theÂ types I choose. The spellbook would randomize the contents at game start, and allow a spell to be clicked on/be used. ThenÂ created the HauntedRoom object which held all the baddies, skeleton, slimy ooze and goblins, eachÂ weak to a certain magic school and all weak to mind attacks.Â I couldn&#8217;t really put my finger on it, but this process took much longer than I expected it to.

It also lacked feedback, it was now Sunday morning sometime like 12 hours remaining, and the enemies just popped off screen. I couldn&#8217;t worry about that since I had to make a results, win/lose, screen and let the game restart and all. Still I was worried about the lack of feedback. With a few hours left I finallyÂ thought of a way to add some that wasn&#8217;t terribly time consuming and it actually went faster than expected &#8211; if only I had thought of it earlier.

[<img loading="lazy" decoding="async" class="aligncenter wp-image-379" src="/blog/assets/2017/01/20161211204613_screenshot.png" alt="20161211204613_screenshot" width="720" height="405" srcset="/blog/assets/2017/01/20161211204613_screenshot.png 1277w, /blog/assets/2017/01/20161211204613_screenshot-300x169.png 300w, /blog/assets/2017/01/20161211204613_screenshot-768x432.png 768w, /blog/assets/2017/01/20161211204613_screenshot-1024x576.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][2]

The feedback still wasn&#8217;t great, and it remains a bit difficult to understand what is happening. The most common complaintÂ was not figure out what spells attacked which enemies the best. I thought color coding would help, green earth for instance will kill ALL green skeletons or 1 of any other type, same with the others (mind kills all of 1 type). HoweverÂ after watching a playthrough, I found that the first few &#8220;hours&#8221; spent in the room really don&#8217;t show this very well since there are only 1-3 enemies and randomly chosen soÂ there is no feedback/exploration of the spells until at least day 3 or 4 where the game is about over.

Also the only way to win is to leave the room by choice, something a lot of people seemed to miss, but again that is from my lack of feedback to them.

### Wrapping it up:

I think the theme of the game really resonated with me, being a magic student and being dared to enter and remain in the schools haunted room, a room teachers have placed off limits to all students, and attempting to stay in as long as possible while still comingÂ out alive.Â Threats increasing with each hour passed.

You can [play my entryÂ here][3].

 [1]: https://www.timbeaudet.com/blog/2017/01/02/ludumdare-37-haunted-room/
 [2]: /blog/assets/2017/01/20161211204613_screenshot.png
 [3]: http://ludumdare.com/compo/ludum-dare-37/?action=rate&uid=1888
