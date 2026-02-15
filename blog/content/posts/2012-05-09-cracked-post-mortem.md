---
title: 'Cracked!  Post-mortem'
author: timbeaudet
type: post
date: 2012-05-09T04:11:56+00:00
url: /2012/05/09/cracked-post-mortem/
sfw_pwd:
  - lPu8EEAnoWUU
categories:
  - LudumDare
  - Programming

---
LudumDare 23 was held April 20th-23rd.Â  This was the third event I&#8217;ve participated in, and was many firsts for me; First collaboration in an event situation, first time using flash/ActionScript and first time not needing to worry about creating the content.Â  The following is a post-mortem about the Ludum Dare version of <a title="Cracked!" href="http://www.ludumdare.com/compo/ludum-dare-23/?action=rate&uid=1888" target="_blank">Cracked!</a>

## What went wrong?

&#8211; We never setup source control until the event started.Â  This did not cause many issues, but was something that could and should have been ready to use.

&#8211; The simple tile editing tool created the week before did not work on joekinley&#8217;s computer- different flash versions have different security issues with when something can be copied to clipboard or saved to file.Â  This fought with us a few times during the weekend until we properly researched the issue.

&#8211; The editor saving issue caused us lose a bit of time, creating levels that could not be saved.Â  It also delayed the level creation process until pretty late in the game- and once we finally got there the game did not play as strategically as initially designed.Â  Multiple possible causes, but no time to to really fix.

## What went right?

&#8211; Most of the project went very smooth.Â  joekinley and I were able to communicate effectively and completely avoid dead-locks (keep busy) while we dealt with time-zone issues and sleeping schedules.