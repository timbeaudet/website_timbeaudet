---
title: Postmortem for ‘Escape’
author: timbeaudet
type: post
date: 2011-09-02T16:46:46+00:00
url: /2011/09/02/postmortem-for-escape/
sfw_pwd:
  - UQS1IDJDoNTR
categories:
  - LudumDare

---
<div>
  <p>
    <strong><em>Originally written August 24th in my <a href="http://www.ludumdare.com/compo/category/ld-21/?author_name=blackbird04217">LudumDare journal</a>.</em></strong>
  </p>
  
  <p>
    I am not sure postmortem is the proper term for this entry, being I canâ€™t be sure the life of the project has come to an end.Â  Perhaps it has.Â  Regardless of the lifetime of the project, this post is about what happened, what went right and what went wrong, as I worked on my Ludum Dare 21 entry: Escape.Â  Sorry, I made the â€œwhat happenedâ€ a little longer than I expected, skip to the bottom for a true post mortem.
  </p>
  
  <p>
    <strong>Ludum Dare 21: Start â€“ 1 month:</strong>
  </p>
  
  <p>
    This weekend started at least a month before with preparation and cleaning my slate for the entire weekend.Â  I made it clear to family and friends that I would be busy during the weekend.Â  Under no exceptions, (perhaps a <strong>big</strong> pay bonus), was I going to go into work; regardless of the circumstances or consequences.Â  Luckily work didnâ€™t want me to come in, so I didnâ€™t need to worry about consequences.Â  I had my framework picked; homegrown DirectX 9 engine written in C++, my language of choice.Â  I was set.Â  The week leading up to Ludumdare I made a blank project from my template â€“ in doing so I felt Iâ€™d automate this process; which took me the full week nights after work.Â  However, I can now type â€œCreateProject ProjectNameâ€ and out comes an already compiled template project that is at blank screen and ready for development.
  </p>
  
  <p>
    <strong>Ludum Dare 21: Start â€“ 5 hours:</strong>
  </p>
  
  <p>
    No lie, there were several ideas floating around my head and was hoping for <strong>Castles</strong> to be the theme.Â  I went shopping for some food and supplies for the weekend so I didnâ€™t need to waste time doing so later.Â  The IRC channel; #ludumdare was insane, I started a G+ hangout that filled with so many people, and I didnâ€™t know them all, but we all shared a passion for Game Development.Â  Finally, it was time.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 48hrs Remaining<br /> </strong>
  </p>
  
  <p>
    Theme: Escape.Â  Thoughts crossing my mind, #ludumdare going insane, I left the G+ hangout and went to my white board, and to cook a meal while I thought up ideas.Â  I was pretty surprised that I had three right off the bat, each with their own challenges.Â  One was a turnbased puzzler that would have been easy on the programming side, harder on the content side.Â  Another I threw away based on scope, it was much too big for a weekend.Â  The final was a physics based glider falling through a maze like puzzle to the â€˜exitâ€™.Â  Despite being harder with math and level design, I choose the physics based glider on the basis that content would be kept to a minimum.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 44hrs Remaining</strong>
  </p>
  
  <p>
    I had created a 2D camera, and sprite class â€“ two things I overlooked on my framework, which admittedly is typically used for 3D projects.Â  I managed to get the basics going before heading to bed to sleep on my idea before committing completely.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 36hrs Remaining</strong>
  </p>
  
  <p>
    Woke up, ate a good meal and planned to work on the physics of the glider until I got it right, so that I could avoid wasting time on level design by setting the physics in stone before a level is started.Â  The physics gave me some problems, it took awhile to figure out that the equation for lift did not apply it in the correct direction.Â  That and other strange things.Â  I spent far longer on the physics that I wanted, and I never got quite what I wanted out of it â€“ but it was somewhat controllable.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 24hrs Remaining</strong>
  </p>
  
  <p>
    I spent about 2 hours trying to get a randomized tunnel to generate, and quickly gave up on the basis I didnâ€™t like the outcome of any of the work.Â  So at this point the choice changed to making a quick and dirty level editor, which actually came out very well.Â  By the time I went to bed I had wrapped up a level editor that I could play, edit, play, edit in quick succession.Â  Hung out on G+ hangouts as much as possible, had some good discussions while still getting stuff done.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 13hrs Remaining</strong>
  </p>
  
  <p>
    <strong></strong>Motivation has dropped quite a bit even though I was on the final stretch.Â  Time pressure was starting to begin as I realized I didnâ€™t have a level or anything â€“ but I did have my main gameplay mechanic; physics.Â  To accurately test the level I was about to develop, I needed to add the collision for the game â€“ which was much more difficult than it seemed.Â  Despite using code I had from another project for line-to-line collision, it did not work.Â  In the end, debugging proved that I was putting in the wrong linesâ€¦Â  Many hours wasted.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 6hrs Remaining</strong>
  </p>
  
  <p>
    A final burst of energy to finish the level, add a score counter, title page and share it on #ludumdare â€“ got some feedback, made a quick and dirty tutorial page<strong></strong> â€“ that added a lot to the look and feel of the game.Â  Removed the level editor and temp map files for the final build.Â  Tried making some music for the game, but failed miserably.
  </p>
  
  <p>
    <strong>Ludum Dare 21: 0hrs Remaining</strong>
  </p>
  
  <p>
    Submitted the project as a jam on the basis I did not share my code.Â  However, I followed every other rule strictly.
  </p>
  
  <p>
    &nbsp;
  </p>
  
  <p>
    <strong>Ludum Dare 21:</strong> <strong>Postmortem; What went wrong</strong>
  </p>
  
  <ul>
    <li>
      This was the buggiest project Iâ€™ve worked on in years, I had to cross hurdle after hurdle; physics, line collision, level design.
    </li>
    <li>
      I did not put enough effort into created the game music, or sound effects â€“ and this would have paid off huge in the end.
    </li>
    <li>
      My own expectations were let down on basis of; physical feeling and level design.
    </li>
    <li>
      Although I took a good share of breaks, getting out of the apartment would have been useful.
    </li>
  </ul>
  
  <p>
    <strong>Ludum Dare 21: Postmortem; What went right</strong>
  </p>
  
  <ul>
    <li>
      The visual quality stunned me, it actually came out looking decent.
    </li>
    <li>
      I made good use of breaks for food, shower, sleep, and thinking.
    </li>
    <li>
      I finished, it was close to complete, and I had a lot of fun.<strong></strong>
    </li>
  </ul>
  
  <p>
    &nbsp;
  </p>
  
  <p>
    <a title="Check out the project" href="http://www.ludumdare.com/compo/ludum-dare-21/?action=rate&uid=1888">Check out the project</a>, rate it, leave comments and most of all â€“ hopefully it is enjoyable, even for a few moments.
  </p>
</div>