---
title: 'LudumDare 35: Elemental Shift'
author: timbeaudet
type: post
date: 2016-04-29T02:16:43+00:00
url: /2016/04/29/ludumdare-35-elemental-shift/
sfw_pwd:
  - Y5VY2iy6q7Wn
categories:
  - Game Development
  - LudumDare

---
[<img loading="lazy" decoding="async" class="alignleft wp-image-282" src="http://www.timbeaudet.com/blog/wp-content/uploads/2016/04/20160426194038_screenshot.png" alt="20160426194038_screenshot" width="720" height="420" srcset="/blog/assets/2016/04/20160426194038_screenshot.png 1282w, /blog/assets/2016/04/20160426194038_screenshot-300x175.png 300w, /blog/assets/2016/04/20160426194038_screenshot-768x448.png 768w, /blog/assets/2016/04/20160426194038_screenshot-1024x597.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]Making a game in 48-hours is a great way to spend a weekend, it is aÂ short window of timeÂ but generally enough get something small created and, sometimes, polished. For the past few Ludum Dare events I have been participating with a team, usually a musician and an artist, but for LD34Â the team was of 5 people, 2 artists, aÂ musician and a designer, with of course myself being<!--more--> project lead and programmer.

ForÂ LD35, however, things were a bit different and I went solo for theÂ 48 hour event,Â requiring myself to create the art and music/sounds as well as the programming.

Theme announcement, Shape Shifting. A few crazy ideas flying about my head, but most were too large for me to tackle alone, would be difficult to explain to the player or just didn&#8217;t get me excited to work on. I started with a car racing &#8220;shifting&#8221; game that would have wound up being aÂ find and click the right shape quickly. I spent about 90 minutes developing that idea and as it got, not quite playable, I went to sleep.

It was a troubling night, restless, couldn&#8217;t sleep. Kept thinking about how my find and click wouldn&#8217;t be &#8220;fun&#8221;. By the following morning I had rested a little and changed plans, combat. Perhaps from trying Dark Souls 3 at a friendsÂ a few nights before. I figured a simple sword swing and a shape that could change into others, like a Rock, Paper, Scissors game. No need for anything complicated, so I made a playable within a few hours.

It wasn&#8217;t fun.

By now I&#8217;ve committed myself, though, and had been live streaming the entire weekend. I kept searching for fun. It was hard to remember what shape beat what shape, as I was _literally_ using squares, triangles and circles. I modified the control scheme a bit. And then a bit more. Still unhappy with it the first day was starting to wrap itself up so I went for a walk and phoned a friend from college, same friend in fact that showed me DS3. He grabbed the demo and played it and gave some valuable feedback.Â Immediately after implementing those changes the game felt much better.

[<img loading="lazy" decoding="async" class="alignleft wp-image-283" src="http://www.timbeaudet.com/blog/wp-content/uploads/2016/04/20160426193808_screenshot.png" width="720" height="420" srcset="/blog/assets/2016/04/20160426193808_screenshot.png 1282w, /blog/assets/2016/04/20160426193808_screenshot-300x175.png 300w, /blog/assets/2016/04/20160426193808_screenshot-768x448.png 768w, /blog/assets/2016/04/20160426193808_screenshot-1024x597.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][2]Following morningÂ I felt great, this was going to be a good game. So I jumped on making the art, and went with elements, fire, water, earth. Because the shapes were too hard toÂ understand and these have been used before. It turned out much easier to attack the right thingsÂ and avoid scary things. However my morale dropped. The game became too simple. Run away and attack, keep running away. ItÂ was too easy.

Again phone a friend, a fair bit of ideas tossed around and with a bit of work found that 6 of the hardest opposite force actually got a little tricky. With about 4 hours remaining of the 48, I finally got a difficulty ramp setup in the spawning behavior. The game gets progressively harder with a short tutorial stage at the beginning. Onto the title screen, oh, and tutorial/buttons anyone?

While making those graphics I lost track of time andÂ looked at the clock with 5 minutes remaining, there was no code for a title screen! I scrambled that together and finished the build at 48hrs exactly. Was a bit disappointed to have ran out of time on the title screen, first thing a player see&#8217;s and it looks mediocre at best, when compared to the rest of my art/animations which, was my first time really testing animations.

What Could Be Better

  * The title screen was a giant let down due to me running out of time.
  * Control schemeÂ took a lot of time to get right, worth it, but lots of time.
  * Morale was a bit of a roller coaster during theÂ weekend.
  * Time management was lost at the end, causing a lacking title screen view and experience.

WhatÂ Went Well

  * Iterating through thingsÂ allowed the fun to appear.
  * Animations and attack feedback about collision area.
  * A successful difficulty curve after hours of iterating and thought.

 [1]: http://www.timbeaudet.com/blog/wp-content/uploads/2016/04/20160426194038_screenshot.png
 [2]: http://www.timbeaudet.com/blog/wp-content/uploads/2016/04/20160426193808_screenshot.png
