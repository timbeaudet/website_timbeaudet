---
title: LD31 Post Mortem of Precise Shot
author: timbeaudet
type: post
date: 2015-01-02T18:30:00+00:00
url: /2015/01/02/ld31-post-mortem/
sfw_pwd:
  - zFDsMXoV1vev
categories:
  - LudumDare
  - OneGameAMonth
  - Programming

---
[<img loading="lazy" decoding="async" class="alignnone wp-image-79" src="http://www.timbeaudet.com/blog/wp-content/uploads/2014/12/precise_shot_title.png" alt="precise_shot_title" width="720" height="404" srcset="/blog/assets/2014/12/precise_shot_title.png 799w, /blog/assets/2014/12/precise_shot_title-300x168.png 300w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

It has been nearly a month and the ratings are out. Â IÂ am pretty happy to find out I placed #210 of 1365 compo entries in the category of FUN, arguably the most important category for a game. Â That is very close toÂ the top 15%, and although I&#8217;d be happier in the top 10% after my failure during LD30 I am certainly stoked.

There were many ups and downs during theÂ development of Precise Shot, and some time that could have beenÂ utilized moreÂ efficiently.

&nbsp;

## What Happened

When the theme, _Entire Game on One Screen_,Â was first announced I had a minor moment of negativityÂ since this is a technical limitation. Â Quickly I started brainstorming ideas and had 3 or 5 games that fit the technical limitation. Â Playing with the word screen, myÂ runner up idea wasÂ controlling an ant/bug in a puzzle environment on a screen door. Â I decided to sleep on the idea since none of them were really pulling too strongly.

After sleeping forÂ **8 hours 18 minutes 58 seconds**Â it became time toÂ eat, while multitasking with a bit of design, before deciding to startÂ working onÂ an arrow shootingÂ gameÂ that was becoming quite exciting. Â It wasÂ **10 hours 40 minutes**Â since the compo had begun and Inkscape opened for the first time to create a very basic bow shape. Â Five minutes later the precreated (splash logo / blackscreen) project was opened up in FlashDevelop and the bow was added. Â Over the next two hoursÂ art for theÂ basic arrow and target were created, aiming and firing the bow and arrows flying through the air colliding into the targets.

With onlyÂ **4 hours 27 minutes** from the time development started the first playable was shared and a **15 minute**Â lunch break required to stop the rumbling stomach. Â Immediately after lunch randomized target positions was added to make it feel moreÂ like a game, next a limited amount of ammo, and the number of targets hit were tracked. Â The final addition of a quick results screen and Precise shot was game complete,Â **16 hours 59 minutesÂ **after the compo began withÂ just overÂ **6 hours** of active development, not including design.

The background was bland. Â Dark gray. Â With the gameplay completeÂ effort wasÂ redirected into making it a better experience. Â It tookÂ **29 minutes**Â toÂ create the first, possibly even theÂ final, version of the background image with the hills and trees. Â The bow image was actually pretty good as is, but the arrow needed to pop more, so time was spent on the arrow. Â The target needed new art completely.

The initial designÂ of the game had a huge feature thatÂ would be extremely tough to pull off, Â especially within theÂ **48 hour** deadline. Â TheÂ feature would be amazing andÂ an idea occurred thatÂ took exactly **15 minutes** to implement, test, see the failure and remove. Â Unfortunately it just didn&#8217;t work quite that well.

**21 hours 5 minutes**Â afterÂ theÂ competition started and the first sound effects were being created. Â The arrow hitting the target and first attempt at the bow string firing an arrow. Â By the halfway point basic sounds and the final music were implemented, it was time for a dinner break.

The second day doesn&#8217;t have as many landmarks to go by. Â RescueTime still has a record of every minute, but it just doesn&#8217;t know whatÂ featuresÂ Â were completed and when, so the timeline gets a bit fuzzy. Â The entire day was spentÂ to polish and make a better experience for the player. Â During lunch itÂ was designed to have pre-determined, playable levels instead of the randomness that was used for playability testing.

The concept of levels actually proved more difficult and much more time consuming than expected, a small intro sequence was required to determine the level, arrow count, number of targets and timing of the level, also needed to design levels and get the game to progress through them. Â This was an easy taskÂ but a much moreÂ time consuming than estimated. Â This took slightly more than **5Â hours** of implementing and the levels were just tossed together for testing the progression, not actually designed for final levels.

The feedback from that playable beta came back andÂ **45 hours 33 minutes**Â after the compo began it was clear that the game was no longer fun. Â With onlyÂ **2 hours 27 minutes** remaining the decision was made to cut the levels,Â a feature that ate 10% of the total time available, cut. Â Gone. Â All in the name for fun. Â Back to randomized targets and the remaining time was spent on the unfinished results screen.

Sounds effects, a background scroll, timed scoring and tallyingÂ up the score as well as the reward stars were finished just on time, with the final build being made just **5 minutes** before the end of the competition.

<img decoding="async" class="p img {   max-width: 100% !important;   height: auto; } aligncenter" src="http://www.timbeaudet.com/goods/screens/precise_shot_time_graphic.png" alt="" width="100%" height="auto" /> 

&nbsp;

## What Went Right

  * **The scope** of Precise ShotÂ was perfect. Â Having the game complete after only 6 hours of development was critical to success. Â A single,Â simple,Â playable feature that could be tuned and perfected and polished for fun. Â This will beÂ something toÂ aim forÂ inÂ future jams.
  * **The fun** wasÂ proven, and it doesn&#8217;t come naturally. Â The bow controls and arrow forces were tuned for at least 30 minutes, and honestly may have needed a bit more time, butÂ the design of Precise ShotÂ was exciting and developing it was fun, as was theÂ **2 hours 54 minutes** of play testing.
  * **Cutting features** as needed. Â A lot of time was dedicated to level based design with moving andÂ rotating targets that got cut in the final hours. Â This was a hard decision to make given the amount of effort, but it is clear this made Precise Shot more fun than it would have been otherwise.

&nbsp;

## What Went Wrong

  * **Estimating timeÂ **when planning theÂ featuresÂ and areas to polish during the last 8 hours, moving andÂ rotating targets andÂ levelÂ progression were grossly underestimated, andÂ didn&#8217;t end up in the finalÂ version.
  * **Feature creep**Â happens on every project,Â a 48 hour project isÂ no exception, but several of these features cost time that was not initially planned for, likeÂ when the Master Bow &#8216;difficulty&#8217; was re-added as a separate mode. Â Although cut, level progression, and moving/rotating targetsÂ fall into the feature creep also.
  * **Player feedback** was more confusing than expected, the first attempt at controlling the bow was unintuitive, most players didn&#8217;t understand the scaling power level or dropping/releasing of the arrows. Â For next time the design of a feature will need to take feedback into consideration a bit more.[  
][2]

 [1]: http://www.timbeaudet.com/goods/ludumdare/ld31/final/
 [2]: http://www.timbeaudet.com/goods/screens/precise_shot_time_graphic.png
