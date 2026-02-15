---
title: 'Snake: The Hello World Game'
author: timbeaudet
type: post
date: 2012-04-17T23:01:16+00:00
url: /2012/04/17/snake-the-hello-world-game/
sfw_pwd:
  - pPzbvTsJDUlC
categories:
  - Programming

---
During a recent time of being unemployed I had some free-time lying around and decided to pick up this &#8216;new&#8217; engine everyone has hyped up, Unity.Â  Well I started by looking at a few video tutorials, but showed too many details I already knew and skipping ahead had the chance of skipping something I didn&#8217;t, yet needed to, know.Â  I tried looking at existing projects to learn my way around, but wound up more confused and went back to the painfully slow video tutorials.

However, since my early programming days, I&#8217;ve always been better jumping in head first.Â  So I scrapped the tutorials and existing projects and jumped in to make a quick game, like most people make a quick &#8220;hello world&#8221; when working with a new language or platform for the first time.Â  At the time I did not consider myself to be making a &#8220;hello world game&#8221;, I simply picked the classic: Snake and started developing it with Unity.Â  It wasn&#8217;t until weeks later at a new job when I was testing out a new engine, GameMaker:Studio, that I realized how great Snake is for a simple Hello World Game.

Snake is extremely simple; an object for food, and object for the snake head, body and tail, and two &#8217;tiles&#8217;: grass and rock.Â  Snake head collides with snake body, tail or rock and the game ends.Â  Snake head collides with food, and a body part is added to the snake while the food moves to a new random location.

It is possible to make Snake utilize nearly every system/piece in a good engine or framework; graphic/sounds/assets (and pipelines), tiles/maps (level design), objects/entities, scripting, collision, input and timing.Â  This forces you to gain a little experience with each portion while testing out, or learning a new framework.Â  However I did notice, while talking with a good friend, that Snake lacks the testing of physics.Â  This may or may not be of importance, depending on your needs from the framework &#8211; but Asteroids or even Break-out might be a good choice to include physics.

For now, I will stick with Snake.Â  It takes a few hours to make, give or take the learning process, and will show the good and bad of the tools, pipeline and editing with a particular engine or framework.