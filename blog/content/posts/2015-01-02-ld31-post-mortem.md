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

It has been nearly a month and the ratings are out. I am pretty happy to find out I placed #210 of 1365 compo entries in the category of FUN, arguably the most important category for a game. That is very close to the top 15%, and although I'd be happier in the top 10% after my failure during LD30 I am certainly stoked.

There were many ups and downs during the development of Precise Shot, and some time that could have been utilized more efficiently.

&nbsp;

## What Happened

When the theme, _Entire Game on One Screen_, was first announced I had a minor moment of negativity since this is a technical limitation. Quickly I started brainstorming ideas and had 3 or 5 games that fit the technical limitation. Playing with the word screen, my runner up idea was controlling an ant/bug in a puzzle environment on a screen door. I decided to sleep on the idea since none of them were really pulling too strongly.

After sleeping for **8 hours 18 minutes 58 seconds** it became time to eat, while multitasking with a bit of design, before deciding to start working on an arrow shooting game that was becoming quite exciting. It was **10 hours 40 minutes** since the compo had begun and Inkscape opened for the first time to create a very basic bow shape. Five minutes later the precreated (splash logo / blackscreen) project was opened up in FlashDevelop and the bow was added. Over the next two hours art for the basic arrow and target were created, aiming and firing the bow and arrows flying through the air colliding into the targets.

With only **4 hours 27 minutes** from the time development started the first playable was shared and a **15 minute** lunch break required to stop the rumbling stomach. Immediately after lunch randomized target positions was added to make it feel more like a game, next a limited amount of ammo, and the number of targets hit were tracked. The final addition of a quick results screen and Precise shot was game complete, **16 hours 59 minutes **after the compo began with just over **6 hours** of active development, not including design.

The background was bland. Dark gray. With the gameplay complete effort was redirected into making it a better experience. It took **29 minutes** to create the first, possibly even the final, version of the background image with the hills and trees. The bow image was actually pretty good as is, but the arrow needed to pop more, so time was spent on the arrow. The target needed new art completely.

The initial design of the game had a huge feature that would be extremely tough to pull off, especially within the **48 hour** deadline. The feature would be amazing and an idea occurred that took exactly **15 minutes** to implement, test, see the failure and remove. Unfortunately it just didn't work quite that well.

**21 hours 5 minutes** after the competition started and the first sound effects were being created. The arrow hitting the target and first attempt at the bow string firing an arrow. By the halfway point basic sounds and the final music were implemented, it was time for a dinner break.

The second day doesn't have as many landmarks to go by. RescueTime still has a record of every minute, but it just doesn't know what features  were completed and when, so the timeline gets a bit fuzzy. The entire day was spent to polish and make a better experience for the player. During lunch it was designed to have pre-determined, playable levels instead of the randomness that was used for playability testing.

The concept of levels actually proved more difficult and much more time consuming than expected, a small intro sequence was required to determine the level, arrow count, number of targets and timing of the level, also needed to design levels and get the game to progress through them. This was an easy task but a much more time consuming than estimated. This took slightly more than **5 hours** of implementing and the levels were just tossed together for testing the progression, not actually designed for final levels.

The feedback from that playable beta came back and **45 hours 33 minutes** after the compo began it was clear that the game was no longer fun. With only **2 hours 27 minutes** remaining the decision was made to cut the levels, a feature that ate 10% of the total time available, cut. Gone. All in the name for fun. Back to randomized targets and the remaining time was spent on the unfinished results screen.

Sounds effects, a background scroll, timed scoring and tallying up the score as well as the reward stars were finished just on time, with the final build being made just **5 minutes** before the end of the competition.

<img decoding="async" class="p img {   max-width: 100% !important;   height: auto; } aligncenter" src="http://www.timbeaudet.com/goods/screens/precise_shot_time_graphic.png" alt="" width="100%" height="auto" /> 

&nbsp;

## What Went Right

  * **The scope** of Precise Shot was perfect. Having the game complete after only 6 hours of development was critical to success. A single, simple, playable feature that could be tuned and perfected and polished for fun. This will be something to aim for in future jams.
  * **The fun** was proven, and it doesn't come naturally. The bow controls and arrow forces were tuned for at least 30 minutes, and honestly may have needed a bit more time, but the design of Precise Shot was exciting and developing it was fun, as was the **2 hours 54 minutes** of play testing.
  * **Cutting features** as needed. A lot of time was dedicated to level based design with moving and rotating targets that got cut in the final hours. This was a hard decision to make given the amount of effort, but it is clear this made Precise Shot more fun than it would have been otherwise.

&nbsp;

## What Went Wrong

  * **Estimating time **when planning the features and areas to polish during the last 8 hours, moving and rotating targets and level progression were grossly underestimated, and didn't end up in the final version.
  * **Feature creep** happens on every project, a 48 hour project is no exception, but several of these features cost time that was not initially planned for, like when the Master Bow 'difficulty' was re-added as a separate mode. Although cut, level progression, and moving/rotating targets fall into the feature creep also.
  * **Player feedback** was more confusing than expected, the first attempt at controlling the bow was unintuitive, most players didn't understand the scaling power level or dropping/releasing of the arrows. For next time the design of a feature will need to take feedback into consideration a bit more.[  
][2]

 [1]: http://www.timbeaudet.com/goods/ludumdare/ld31/final/
 [2]: http://www.timbeaudet.com/goods/screens/precise_shot_time_graphic.png
