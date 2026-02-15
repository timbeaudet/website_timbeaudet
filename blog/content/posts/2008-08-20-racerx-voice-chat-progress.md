---
title: RacerX Voice Chat Progress
author: timbeaudet
type: post
date: 2008-08-20T22:23:08+00:00
url: /2008/08/20/racerx-voice-chat-progress/
sfw_pwd:
  - 54tU1FsLUnhm
categories:
  - RacerX

---
(Historic Post: August 20th 2008)

Well, progress has leaped forward over the last week.Â  I actually didn&#8217;t do too much development wise, as I have been racing Live For Speed (LFS) far more often than developing RacerX, however that may soon start to change.Â  Going back and looking at some of this code is quite confusing to me, but it also reminds me where my old coding standards were, high.Â  I used to comment about everything, which is very helpful in continuing the development about a year later.Â  Last night I added a small configuration file for the user to use for their name and such &#8211; currently it doesn&#8217;t save anything however it does load a user-name and uses it.Â  Which eliminates the need to go into the options to type a new user-name each time.Â  Last night also made a gigantic climb with the proof that the voice-over-net system is coming together.Â  Karel and I had an extended conversation back and forth for quite some time.Â  It was due to the TCP connection disconnecting that theÂ sound stopped transmitting before, and also even on TCP connection I did hear Karel last night, however very quite, very brief and not anything spectacular until I changed the voice-over-net to utilize the UDP connection instead of the TCP connection, however I will keep my eye on it.Â  I am starting to trust UDP a bit more as the quality was quite well.

Still a few small issues with the sound though, small sounds may be getting cut off at the end of the sound / not sent altogether or even some long sounds can get cut of at the ends, however Karel mentioned that this could be caused by himself since he is not quite use to using a Push-to-Talk key.Â  Maybe in the future open microphone support could be added, although that could get quite interesting.Â  The current plans are to keep going on the networking base and such.Â  At the moment there are some issues with disconnecting a server once a client has connected to it, also there are some issues with disconnecting in the first place, a disconnection should bring the user back to the Multiplayer Setup state, where they have the option of reconnecting and such.Â  The ability to see a connection list is crucial, as well as the ability to see from whom sound data is being received from.Â  When the Multiplayer Lobby state has the abilities to safely disconnect,Â show an accurate connection list, chat, voice chat and can handle re-connecting/disconnecting then the focus will become to create the Multiplayer Game state, where the players will simply be placed on a track and hopefully accurately move around, however that is some time from now so development on the connection list and other connection issues must be resolved first.