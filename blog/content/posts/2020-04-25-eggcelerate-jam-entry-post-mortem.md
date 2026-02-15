---
title: Eggcelerate! Jam Entry Post Mortem
author: timbeaudet
type: post
date: 2020-04-25T11:17:50+00:00
url: /2020/04/25/eggcelerate-jam-entry-post-mortem/
sfw_pwd:
  - Ug2s1WGhnur4
categories:
  - Game Development
  - LudumDare

---
# <span style="font-weight: 400; color: #ff9f2e;">LudumDare 46 Details</span>

&nbsp;

<span style="font-weight: 400;">The theme of LudumDare was announced at 9:00pm Friday evening. Keep It Alive. I like sketching ideas on a scratchpad, but the bamboo tablet was fighting me with Windows Ink or other Photoshop settings. It took ten minutes to setup a relay stream from my macbook which has a much better tablet setup, but it made it more comfortable for sketching.</span>

<span style="font-weight: 400;">After running through some ideas, with my twitch viewers throwing in great comments, I steered very quickly into the egg in a bowl on a car. Actually I have wanted to make this very game for years, as it can be a good training tool for driving smoothly at the limit. I continued brainstorming for a bit longer, but this was the idea that pulled the hardest.</span>

<span style="font-weight: 400;">45 minutes after the theme announcement I had committed to the idea and created a list of tasks required for the game. Being near bedtime I chose to work on modeling assets for the game. This is one of the first jams I have ever started with art before programming. Doing so can be somewhat risky, especiallyÂ  if ideas or concepts are subject to change. I knew the basic objects; car, bowl, egg and some track segments would not be a waste of time.</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-537" src="/blog/assets/2020/04/20200417232428_screenshot.png" alt="" width="720" height="505" srcset="/blog/assets/2020/04/20200417232428_screenshot.png 1000w, /blog/assets/2020/04/20200417232428_screenshot-300x211.png 300w, /blog/assets/2020/04/20200417232428_screenshot-768x539.png 768w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

<span style="font-weight: 400;">It took one hour to get all the assets created, using </span>[<span style="font-weight: 400;">Imphenziaâ€™s method</span>][2] <span style="font-weight: 400;">to make the cars was very quick and easy; though I canâ€™t do them in 10 minutes. Yet! Perhaps my blender practicing is starting to pay off as this process went super smoothly. With some art created I jumped into Unity. At that point I had used Unity for less than 15 hours, and this would be my first jam in it. Upon importing the assets I noticed issues with the lighting and coloring. I went back and forth between Blender and Unity trying to find the issue, tried exporting to fbx manually, nothing fixed it. Though I didnâ€™t figure it out until the middle of the next day, it turned out that my 4&#215;16 color palette was being compressed and lost color information.</span><!--more-->

<span style="font-weight: 400;">By 11:30pm, 2.5 hours after the theme was announced, the track segments and other objects were setup as basic prefabs and a super simple track was created in Unity. There were no scripts or anything but I went to bed happy with the progress so far.</span>

<span style="font-weight: 400;">This is the first game jam where I did not toss and turn with ideas racing for three hours before getting sleep. Writing the list of items to do, and separating fun extras from the minimal requirements, certainly helped a bit as my brain didnâ€™t fight to remember them. In the morning I woke at 5:45am, which I do every morning for my game development stream and indie adventure. After animal care and breakfast of 30 minutes, I got back to work. 9 hours and 15 minutes after theme announcement I was ready for day two.</span>

<span style="font-weight: 400;">The majority of the second day was spent learning Unity and attempting to create the physics of a driving car and get the egg to work with the bowl. For the car I used wheel colliders and had a crazy time trying to understand how to setup the wheels with good values. It was very easy to hook up the motor, brakes and steering to the racecar script, but the dynamics felt sloppy, slippery &#8211; not quite in the way I wanted.</span>

<span style="font-weight: 400;">After reading </span>[<span style="font-weight: 400;">the documentation</span>][3] <span style="font-weight: 400;">many times it took drawing it out to understanding how the slip extremum and asymptote differed from value extremum and asymptote. Also, that stiffness is just a multiplier of valueâ€¦ It took most of the day, but finally I got the car moving in a way that was good enough for what I wanted.</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-538" src="/blog/assets/2020/04/20200425063911_screenshot.png" alt="" width="720" height="425" srcset="/blog/assets/2020/04/20200425063911_screenshot.png 1067w, /blog/assets/2020/04/20200425063911_screenshot-300x177.png 300w, /blog/assets/2020/04/20200425063911_screenshot-1024x605.png 1024w, /blog/assets/2020/04/20200425063911_screenshot-768x453.png 768w" sizes="auto, (max-width: 720px) 100vw, 720px" />][4]

<span style="font-weight: 400;">Next, the bowl was added to the top of the car and getting the egg to stay in was far more tricky than imagined. Unity made it easy to add a mesh collider, and even allows the collider to be non-convex, but requires the rigid body to be kinematic. This seemed okay at first, it even kept the bowl constrained to the car as desired. The egg however failed to accelerate correctly. Kinematic bodies require a developer to perform their own physics handling, even on the bodies they interact with..</span>

<span style="font-weight: 400;">After much exploration, and dragging my feet, I finally gave in and created the bowl colliders out of several box colliders layered together at various angles. This actually didnâ€™t take nearly as long as I expected, and I should not have dragged my feet. The egg worked very well with the bowl after this.</span>

<span style="font-weight: 400;">Finally, I was able to drive around and carry an egg and watch it fly away from the car when driving too aggressively. Added a button to reset the car and egg back to spawn point and it was time for sleep number two. Which also went fairly easy, but not quite as quick as the night before, still only 30 minutes or so to calm down the busy mind.</span>

<span style="font-weight: 400;">The following morning, again waking at 5:45am, I got started on detecting the egg shattering on the ground as the lose condition. When in this state the game will pop up a small display of the title and a retry button. For added effect a cracked egg asset was created and placed on the surface of contact. A decent improvement would be to align with surface normal, but I just used world up for the jam entry. Also I desired the splats to remain from previous attempts so I never cleaned these up. This worked for a jam entry but a larger project would need to clean up after a certain number of attempts.</span>

<span style="font-weight: 400;">Timing and scoring was the next major feature to be added which made use of some box colliders to tell the racecar what checkpoint was hit. This allowed the car to know where it was and ensure a complete was driven before increasing lap count or time. Displaying this, and the retry screen, to the player was confusing for me as a first time Unity developer. I had played with Unity UI for about 30 minutes prior but in that previous project I found it didnâ€™t handle resolution changes very well. Eggcelerate! did not handle this much better, but I certainly tried. </span>_<span style="font-weight: 400;">(There have since been some notes that the title screen behaves odd on some resolutions.)</span>_

[<img loading="lazy" decoding="async" class="aligncenter wp-image-539" src="/blog/assets/2020/04/title_image.png" alt="" width="720" height="405" srcset="/blog/assets/2020/04/title_image.png 1920w, /blog/assets/2020/04/title_image-300x169.png 300w, /blog/assets/2020/04/title_image-1024x576.png 1024w, /blog/assets/2020/04/title_image-768x432.png 768w, /blog/assets/2020/04/title_image-1536x864.png 1536w" sizes="auto, (max-width: 720px) 100vw, 720px" />][5]

<span style="font-weight: 400;">By grabbing a screenshot of the game in play mode, after learning about options to view a different display in a second game tab with viewer support, a title screen was created. In photoshop a quick gaussian blur was applied to the title, and text was added from Unity. In hindsight, I should have added the title text from within photoshopâ€¦ next time.</span>

<span style="font-weight: 400;">At this point the game was complete. Somewhat silent, but you could lose and compete against the clock for a best time. So far I have seen a screenshot of someone that got a 27.420, while my best is a 27.500. The game desperately needed sound, and while I am awful at music, a viewer shared </span>[<span style="font-weight: 400;">beepbox.co</span>][6] <span style="font-weight: 400;">with me and I was able to produce something that didnâ€™t melt my brain. After adjusting the instruments it sounded </span>_<span style="font-weight: 400;">vaguely</span>_ <span style="font-weight: 400;">farmy, and was applied to the game.</span>

<span style="font-weight: 400;">For sound effects the big old mouth was used. I just made some vrrum noises at the mic with various methods and repeated for the rest of the effects. This worked shockingly well and was more funny than intended, but also fit with the game.</span>

<span style="font-weight: 400;">As the game grew it became harder and harder to add new features. Timing and scoring for instance had to handle edge cases when the player lost. Otherwise laps could be driven without an egg. The engine audio needed to be paused when on the title screen. One thing I found annoying with Unity sounds is the automatically checked â€œPlay On Awakeâ€ option. It took a while to figure out why the horn sound was playing when not expected. This later bit a few more times.</span>

<span style="font-weight: 400;">With almost 5 hours still remaining, I was able to create more environment props and track segments that included a banked corner and a hill, barn, silos and fences and more. Initially desired the fence to be dynamic but settled for static when that didnâ€™t work. Static was probably the better option anyway to keep the player on the track. More fences should have been placed near the hill to keep the player from going around. There is a checkpointÂ  that requires the player to go over, but the lack of fence may confuse them into thinking the lower path is viable.</span>

<span style="font-weight: 400;">With about an hour left I started preparing builds. Unity sure makes that process far easier out of the box than my custom framework and workflow, but the first 2 builds failed as I forgot to turn on music, then tried making last moment changes to the Title Screen that looked okay in the game player but not in the standalone. This goes back to the resolution issues, I need to spend more time learning about Unity UI.</span>

<span style="font-weight: 400;">I spent 25 hours working on Eggcelerate! during LudumDare 46 though I am going to extend the project further as it shows solid potential.</span>

[<img loading="lazy" decoding="async" class="aligncenter wp-image-540" src="/blog/assets/2020/04/ludumdare46_sketch.png" alt="" width="720" height="405" />][7]

# <span style="font-weight: 400; color: #ff9f2e;">What Went Right?</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Brainstorming a simple game idea</span></i></span>

<span style="font-weight: 400;">This was fairly quick and easy to come up and get really eggcited about. It had low requirements and was something I could probably snap together quickly.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Starting with Art</span></i></span>

<span style="font-weight: 400;">Creating the basic assets went significantly faster than expected and made the game look good right from the start. This started the project on a great path, though I would be weary about starting with art as it can go wrong quickly as pivoting content/ideas is painful in a jam.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">The game is amazing</span></i></span>

<span style="font-weight: 400;">Eggcelerate! is by far my best solo jam game. It is easy to drive around with an egg around in a bowl, at slow speeds, but it gets incredibly difficult to speed up. The player feels like each failure is their fault and â€œIâ€™ll do better next timeâ€ making it quite fun and addictive.</span>

# <span style="font-weight: 400; color: #ff9f2e;">What Went Wrong?</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Fighting Unity Physics</span></i></span>

<span style="font-weight: 400;">To be fair I would have been fighting Bullet physics if I used my more traditional setup. Unity at least had significantly better documentation, though still wasnâ€™t explained very well. Both wheel collider and bowl collision took significant time to get reasonable.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Not knowing Unity UI</span></i></span>

<span style="font-weight: 400;">There are some issues with different resolutions and some of the screens or interface elements. I noticed the anchoring, which in theory is intuitive, but &#8211; it isnâ€™t. I couldnâ€™t figure out if the anchors were to screen edges or what was happening. Title screen seemed cutoff, but I think the mistake was making it larger than â€˜screenâ€™, if I understand the tool correctly.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Not being able to use tablet on main PC</span></i></span>

<span style="font-weight: 400;">This was a minor inconvenience of 10 minutes or so, and lowered mic quality on stream for a bit, but Windows Ink and Photoshop settings made the tablet on the Windows rig unusable.</span>

# <span style="font-weight: 400; color: #ff9f2e;">Lessons Learned</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">How to manipulate vehicle controls with Wheel Colliders</span></i></span>

<span style="font-weight: 400;">It was important to know that </span>_<span style="font-weight: 400;">Stiffness</span>_ <span style="font-weight: 400;">is just a multiplier to value, so leave this at 1 for testing purposes, then adjust it for terrain variation like 0.2 for ice, etc. Also the extremum of slip should be lower than the asymptote of slip as slip is on x-axis of the graph. It took drawing this out myself to get that to click and start understanding how the values were working together.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Concave mesh colliders donâ€™t work as expected</span></i></span>

<span style="font-weight: 400;">A non-convex mesh collider is possible, though Unity throws an error to require a kinematic rigid body. At first glance this â€˜workedâ€™ but not completely. Sure the egg would move with the car/bowl, but any speed or jostling and it warped out; The egg never gained velocity. The collision simply moved the bodies apart and never affected momentum as expected. The solution was to build a custom collider from many boxes / convex meshes and keep kinematic off. This initially caused the bowl to go flying off until I constrained the position x, y and z.</span>

### <span style="color: #2e9fff;"><i><span style="font-weight: 500;">Texture Compression is not Lossless</span></i></span>

<span style="font-weight: 400;">While this is something I should have known already, I totally missed this. A few viewers suggested it as the cause of the visuals being odd, and I dismissed them because â€œwhy would that change anythingâ€. After hearing it a few times, it was worth checking, and the cause was found. A 4&#215;16 pixel texture being compressed.</span>

# <span style="font-weight: 400; color: #ff9f2e;">Future</span>

Eggcelerate! was such a fun game that I am continuing to develop a post-jam version that I will place for sale for those that wish to support my adventure. A quick video of the game as it was for LudumDare 46 is here:

 [1]: /blog/assets/2020/04/20200417232428_screenshot.png
 [2]: https://www.youtube.com/watch?v=YALV3HqfdLY
 [3]: https://docs.unity3d.com/Manual/class-WheelCollider.html
 [4]: /blog/assets/2020/04/20200425063911_screenshot.png
 [5]: /blog/assets/2020/04/title_image.png
 [6]: https://beepbox.co/
 [7]: /blog/assets/2020/04/ludumdare46_sketch.png
