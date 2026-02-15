---
title: Converting TurtleBrains to OpenGL 3.2 Core
author: timbeaudet
type: post
date: 2015-05-21T21:30:59+00:00
url: /2015/05/21/converting-turtlebrains-to-opengl-3-2-core/
sfw_pwd:
  - hjiNZsWkGqZV
categories:
  - Code Quality
  - Game Development
  - TurtleBrains

---
<figure id="attachment_168" aria-describedby="caption-attachment-168" style="width: 710px" class="wp-caption aligncenter">[<img loading="lazy" decoding="async" class="wp-image-168" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_202900_gl_conversion.png" alt="20150518_202900_gl_conversion" width="710" height="415" srcset="/blog/assets/2015/05/20150518_202900_gl_conversion.png 1286w, /blog/assets/2015/05/20150518_202900_gl_conversion-300x175.png 300w, /blog/assets/2015/05/20150518_202900_gl_conversion-1024x599.png 1024w" sizes="auto, (max-width: 710px) 100vw, 710px" />][1]<figcaption id="caption-attachment-168" class="wp-caption-text">(Figure 1. OpenGL 3.2 Core Shader Tutorial)</figcaption></figure> 

TurtleBrains development began with OpenGL as it should help allow TurtleBrains to remain fairly platform independent, at least across personal computers; Windows, Mac OS X and Linux, the first batch of target platforms. At the time I did not realize I was using<!--more--> deprecated functions, Legacy OpenGL. It would seem the fixed-function pipeline and several states are now obsolete, soÂ with 

**a lot** of help from [<s>@</s>neilogd][2]{.twitter-atreply.pretty-link}, the legacy code was converted to OpenGL 3.2 Core which should help reduce driver bugs and increase portability.

I decided to make this change while TurtleBrains only had rendering for Sprites and Text objects. Soon I hope to add shapes, a tile system, a particle system and possibly other graphicalÂ objects. It makes sense to do the conversion before adding those objects to reduceÂ efforts, so this is the story of converting to OpenGL 3.2 Core.

First I started with a basic tutorial from [www.opengl.org/wiki/Tutorials][3] to get a grip on some shader basics. I&#8217;ve used them a few times but not enough toÂ implement from memory, so the refresherÂ helped get things going. With that working IÂ made a define that could toggle TurtleBrains to compile between using legacy mode and theÂ core mode so I could easilyÂ compare the builds.

### The first challenges

In Legacy mode the projection matrix is easily created by _glOrtho()_, and thatÂ is not the case anymore, so I looked up some documentation on how that matrix was built and gotÂ my own working, with someÂ slight testing as I needed to send the matrix down transposed. I tried separating itÂ into smaller stepsÂ so I could deal with any problems without blindly guessing. Very thankful I went with this approach.

Once the matrices were setup I aimed to get theÂ view to look like Figure 1, which was the output of the tutorial. I did this byÂ changing the rendering path of the sprites and text and each of those objects wouldÂ then render that shape for the time being. I got the shaders initialized in TurtleBrains and setup the matrices and then started the new _RenderQuad()_ function. In no particular order these are some of the views I ended up with!

<div align="center">
  <figure id="attachment_169" aria-describedby="caption-attachment-169" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_185400_gl_conversion.png"><img loading="lazy" decoding="async" class="wp-image-169 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_185400_gl_conversion-150x150.png" alt="20150518_185400_gl_conversion" width="150" height="150" /></a><figcaption id="caption-attachment-169" class="wp-caption-text">(Figure 2a)</figcaption></figure> <figure id="attachment_170" aria-describedby="caption-attachment-170" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_185400_gl_conversion.png"><img loading="lazy" decoding="async" class="wp-image-170 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_191500_gl_conversion-150x150.png" alt="20150518_191500_gl_conversion" width="150" height="150" /></a><figcaption id="caption-attachment-170" class="wp-caption-text">(Figure 2b)</figcaption></figure> <figure id="attachment_173" aria-describedby="caption-attachment-173" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_204300_gl_conversion.png"><img loading="lazy" decoding="async" class="wp-image-173 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_204300_gl_conversion-150x150.png" alt="" width="150" height="150" /></a><figcaption id="caption-attachment-173" class="wp-caption-text">(Figure 2c)</figcaption></figure> <figure id="attachment_172" aria-describedby="caption-attachment-172" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_193100_gl_conversion.png"><img loading="lazy" decoding="async" class="wp-image-172 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_193100_gl_conversion-150x150.png" alt="20150519_193100_gl_conversion" width="150" height="150" /></a><figcaption id="caption-attachment-172" class="wp-caption-text">(Figure 2d)</figcaption></figure> <figure id="attachment_174" aria-describedby="caption-attachment-174" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_210100_gl_conversion_wrong_shape.png"><img loading="lazy" decoding="async" class="wp-image-174 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_210100_gl_conversion_wrong_shape-e1432251902984-150x150.png" alt="20150518_210100_gl_conversion_wrong_shape" width="150" height="150" /></a><figcaption id="caption-attachment-174" class="wp-caption-text">(Figure 2e)</figcaption></figure> <figure id="attachment_175" aria-describedby="caption-attachment-175" style="width: 150px" class="wp-caption alignleft"><a href="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_210200_gl_conversion_correct_shape.png"><img loading="lazy" decoding="async" class="wp-image-175 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_210200_gl_conversion_correct_shape-e1432251999724-150x150.png" alt="20150518_210200_gl_conversion_correct_shape" width="150" height="150" /></a><figcaption id="caption-attachment-175" class="wp-caption-text">(Figure 2f)</figcaption></figure>
</div>

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

The first ones were before IÂ was passing vertex colors correctly or handling them in the fragment shader, eventually that got sorted out, but the projection matrix was way off. Or, so I thought, this problem took two nights of personal development time to get sorted out, and late on night two I realizedÂ the problem was with the vertex data being sent down the pipe.

[cpp]

//Initial working vertex data for figure 1, with &#8216;identity like&#8217; projection matrix.

verts[] = { { 0, 1, data }, { 1, 0, data }, { 0, -1, data }, { -1, 0, data } }

//Wrong vertex data was being passed with 1280&#215;720 ortho projection matrix.

verts[] = { { 0, 200, data }, { 200, 0, data }, { 0, 100, data }, {100, 0, data } }

//Correct vertex data (after I found the isssue) for the 1280&#215;720 ortho projection.

verts[] = { { 150, 200, data }, { 200, 150, data }, { 150, 100, data }, {100, 150, data } }

[/cpp]

The problem was the shape of the diamond threw me off and I never moved the &#8216;center&#8217; points for each vertex. Which was fine for the initial because 0 is halfway between -1 and 1, but not between 100 and 200, soÂ a diamond is not the actual shape despite me &#8216;expecting&#8217; it to be. After finally solving that issue IÂ disabled sprite rendering and was able to see squares for each text object:<figure id="attachment_176" aria-describedby="caption-attachment-176" style="width: 710px" class="wp-caption aligncenter">

<img loading="lazy" decoding="async" class="wp-image-176" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150518_210800_gl_conversion_correct_text.png" alt="20150518_210800_gl_conversion_correct_text" width="710" height="415" srcset="/blog/assets/2015/05/20150518_210800_gl_conversion_correct_text.png 1286w, /blog/assets/2015/05/20150518_210800_gl_conversion_correct_text-300x175.png 300w, /blog/assets/2015/05/20150518_210800_gl_conversion_correct_text-1024x599.png 1024w" sizes="auto, (max-width: 710px) 100vw, 710px" /> <figcaption id="caption-attachment-176" class="wp-caption-text">(Figure 3. Text objects rendering with position added to verts)</figcaption></figure> 

&nbsp;

### Where is the colors

That was as muchÂ that could be completed on the second day of this conversion process. The following day I would change the vertex colors from float r,g,b to a 32bit unsigned abgr &#8211; _would have preferred argb, but seems it goes down as abgr_ &#8211; andÂ got the texture coordinates tested out, which resulted in a pretty neat looking text objects _(see Figure 4)_ as I used the texture coordinates to modify the color within the shader to prove they worked. Shaders can be pretty nice that way.<figure id="attachment_177" aria-describedby="caption-attachment-177" style="width: 150px" class="wp-caption alignleft">

[<img loading="lazy" decoding="async" class="wp-image-177 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_150830_gl_conversion_texture_coord_test-150x150.png" alt="20150519_150830_gl_conversion_texture_coord_test" width="150" height="150" />][4]<figcaption id="caption-attachment-177" class="wp-caption-text">(Figure 4)</figcaption></figure> <figure id="attachment_178" aria-describedby="caption-attachment-178" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-178 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_165405_gl_conversion_text_black-150x150.png" alt="20150519_165405_gl_conversion_text_black" width="150" height="150" />][5]<figcaption id="caption-attachment-178" class="wp-caption-text">(Figure 5)</figcaption></figure> <figure id="attachment_179" aria-describedby="caption-attachment-179" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-179 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171009_gl_conversion_sprite_no_alpha-150x150.png" alt="20150519_171009_gl_conversion_sprite_no_alpha" width="150" height="150" />][6]<figcaption id="caption-attachment-179" class="wp-caption-text">(Figure 6)</figcaption></figure> 

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

With the textureÂ coordinates working it was time to get a texture sampler and it appears _glBindTexture()_ is still used butÂ _glActiveTexture()_ was needed. TheÂ text showed black at first, see Figure 5, as I had some issue in loading the texture. The text texture was a special case as TurtleBrains loadedÂ an 8bit &#8220;alpha&#8221; texture which is _&#8220;unsupported&#8221;_ in Open 3.2 Core. So I skipped on to sprites, disabling text for the moment and immediately got the results shown in Figure 6, the sprites rendering without alpha correctly blending.

Luckily alpha blending was done exactly the same as before in Legacy OpenGL so I just needed to _glEnable(GL_BLEND)_ and _glBlendFunc(GL\_SRC\_ALPHA, GL\_ONE\_MINUS\_SRC\_ALPHA)Â _and also the same with depth testing:Â _glEnable(GL\_DEPTH\_TEST)_ and_Â glDepthFunc(GL_LEQUAL),_ which produced the correct results in Figure 7 below. Feeling like I&#8217;m finally getting somewhere! (For those with a keen eye, you probable noticed I&#8217;m not passing down the texture coordinates from my sprite instead just 0,1&#8217;s for now).<figure id="attachment_180" aria-describedby="caption-attachment-180" style="width: 710px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-180" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171354_gl_conversion_sprite_alpha-1024x599.png" alt="20150519_171354_gl_conversion_sprite_alpha" width="710" height="415" srcset="/blog/assets/2015/05/20150519_171354_gl_conversion_sprite_alpha-1024x599.png 1024w, /blog/assets/2015/05/20150519_171354_gl_conversion_sprite_alpha-300x175.png 300w, /blog/assets/2015/05/20150519_171354_gl_conversion_sprite_alpha.png 1286w" sizes="auto, (max-width: 710px) 100vw, 710px" />][7]<figcaption id="caption-attachment-180" class="wp-caption-text">(Figure 7. Sprite texture working with alpha)</figcaption></figure> 

&nbsp;

### Getting text to work again

So back to getting the text working. The 8bit alpha texture is not actually unsupported,Â just done differently, when generating the texture with _glGenImage2d()_Â the format is _GL_RED_ instead of _GL_ALPHA_ and it is up to the shader to handle this. Since I haven&#8217;t yet decided to support different shaders in TurtleBrains and plan to have this basic one,Â the decision to pass a _colorMatrix_ uniform to the shader was made. This would be the identity matrix to convert an ARGB to ARGB or it would beÂ modified to convert R toÂ fill out each ARGB channel.<figure id="attachment_185" aria-describedby="caption-attachment-185" style="width: 150px" class="wp-caption alignleft">

[<img loading="lazy" decoding="async" class="wp-image-185 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171618_gl_conversion_text_red-150x150.png" alt="20150519_171618_gl_conversion_text_red" width="150" height="150" />][8]<figcaption id="caption-attachment-185" class="wp-caption-text">(Figure 8a)</figcaption></figure> <figure id="attachment_186" aria-describedby="caption-attachment-186" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-186 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_173640_gl_conversion_text_white-150x150.png" alt="20150519_173640_gl_conversion_text_white" width="150" height="150" />][9]<figcaption id="caption-attachment-186" class="wp-caption-text">(Figure 8b)</figcaption></figure> <figure id="attachment_181" aria-describedby="caption-attachment-181" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-181 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_174518_gl_conversion_text_color_wrong-150x150.png" alt="(Figure 8c)" width="150" height="150" />][10]<figcaption id="caption-attachment-181" class="wp-caption-text">(Figure 8c)</figcaption></figure> <figure id="attachment_182" aria-describedby="caption-attachment-182" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-182 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_175733_gl_conversion_text_black_outline-150x150.png" alt="20150519_175733_gl_conversion_text_black_outline" width="150" height="150" />][11]<figcaption id="caption-attachment-182" class="wp-caption-text">(Figure 8d)</figcaption></figure> <figure id="attachment_183" aria-describedby="caption-attachment-183" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-183 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_182335_gl_conversion_text_tinted-150x150.png" alt="20150519_182335_gl_conversion_text_tinted" width="150" height="150" />][12]<figcaption id="caption-attachment-183" class="wp-caption-text">(Figure 8e)</figcaption></figure> <figure id="attachment_187" aria-describedby="caption-attachment-187" style="width: 150px" class="wp-caption alignleft">[<img loading="lazy" decoding="async" class="wp-image-187 size-thumbnail" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_184027_gl_conversion_text_color_shift-150x150.png" alt="20150519_184027_gl_conversion_text_color_shift" width="150" height="150" />][13]<figcaption id="caption-attachment-187" class="wp-caption-text">(Figure 8f)</figcaption></figure> 

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

ThisÂ got the textÂ texture loaded and working, Figure 8a and with the colorMatrix Figure 8b was the result. The vertex color change was finally needed for the text colors to work, so I modified the shader to get that working andÂ with a few oddities (Figure 8c), finally got to (Figure 8d). But whenÂ looking closely at that image you can see a black outline around the text. neilogdÂ explained this was from the colorMatrix and how the text texture was loaded, essentiallyÂ asÂ the &#8220;alpha&#8221; channel went down black became apparent instead of white, so I added a colorTint to modify this back.

This took a few iterations in the fragment shader to implement correctly as you can see in FigureÂ 8e and figure 8f is close to the right colors but not correct as shown below:<figure id="attachment_184" aria-describedby="caption-attachment-184" style="width: 710px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-184" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_184658_gl_conversion_text_working.png" alt="20150519_184658_gl_conversion_text_working" width="710" height="415" srcset="/blog/assets/2015/05/20150519_184658_gl_conversion_text_working.png 1286w, /blog/assets/2015/05/20150519_184658_gl_conversion_text_working-300x175.png 300w, /blog/assets/2015/05/20150519_184658_gl_conversion_text_working-1024x599.png 1024w" sizes="auto, (max-width: 710px) 100vw, 710px" />][14]<figcaption id="caption-attachment-184" class="wp-caption-text">(Figure 9. Text and sprites basically working)</figcaption></figure> 

&nbsp;

### Not quite finished yet

ThatÂ allowed that project to work, however I needed to extract theÂ adding of the positions to the quads for the sprites and text rendering, this was to be done withÂ a freshly build matrix stack that would resemble parts of the Legacy OpenGL stack, _glPushMatrix(), glTranslate(), glRotate()_ etc. This was noticedÂ because in the original project the text was supposed to sink behind the lowest grass in that image, so Notebook would not be visible, and Folder would only be partially visible.

It was relatively straight forward to get the modelView matrix toÂ support the translation needed for this example project, but I had to move to a different project to test push/pop and rotation/scaling.<figure id="attachment_188" aria-describedby="caption-attachment-188" style="width: 720px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-188" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_165415_gl_conversion_tank_rotating_wrong.png" alt="20150519_165415_gl_conversion_tank_rotating_wrong" width="720" height="421" srcset="/blog/assets/2015/05/20150519_165415_gl_conversion_tank_rotating_wrong.png 1286w, /blog/assets/2015/05/20150519_165415_gl_conversion_tank_rotating_wrong-300x175.png 300w, /blog/assets/2015/05/20150519_165415_gl_conversion_tank_rotating_wrong-1024x599.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][15]<figcaption id="caption-attachment-188" class="wp-caption-text">(Figure 10. Tank turret rotating incorrectly)</figcaption></figure> 

The tanks turret should not be rotating around the top left position of the tank/turret sprite like it does in the above shot. It tookÂ a few hours one night andÂ part of the following night to get the TurtleBrains rotate function working as glRotate did, the problem turned out to beÂ the order of my matrix multiplication in Translate. Instead of A \* B I needed B \* A, I had tried swapping this back and forth in rotate, but didn&#8217;t realize the problem was with the translation that occurred after the rotation until I didÂ printed out the matrix at each step and followed along.<figure id="attachment_189" aria-describedby="caption-attachment-189" style="width: 710px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-189" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_195048_gl_conversion_tank_rotating_correct.png" alt="20150520_195048_gl_conversion_tank_rotating_correct" width="710" height="415" srcset="/blog/assets/2015/05/20150520_195048_gl_conversion_tank_rotating_correct.png 1286w, /blog/assets/2015/05/20150520_195048_gl_conversion_tank_rotating_correct-300x175.png 300w, /blog/assets/2015/05/20150520_195048_gl_conversion_tank_rotating_correct-1024x599.png 1024w" sizes="auto, (max-width: 710px) 100vw, 710px" />][16]<figcaption id="caption-attachment-189" class="wp-caption-text">(Figure 11. Tank turret rotating correctly)</figcaption></figure> 

&nbsp;

### One final push

ThatÂ did not quite complete the conversion from Legacy OpenGL to OpenGL 3.2 Core. First the mess needed to be cleaned up, prepped for TurtleBrains quality and error checking to be added. Also I still needed to test onÂ Mac OS XÂ but why would there be any issues there now that I&#8217;m following a more strict &#8220;core&#8221;Â OpenGL functionality. How wrong could that be:<figure id="attachment_190" aria-describedby="caption-attachment-190" style="width: 710px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-190" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_195253_gl_conversion-1024x584.png" alt="20150520_195253_gl_conversion" width="710" height="405" srcset="/blog/assets/2015/05/20150520_195253_gl_conversion-1024x584.png 1024w, /blog/assets/2015/05/20150520_195253_gl_conversion-300x171.png 300w, /blog/assets/2015/05/20150520_195253_gl_conversion.png 1281w" sizes="auto, (max-width: 710px) 100vw, 710px" />][17]<figcaption id="caption-attachment-190" class="wp-caption-text">(Figure 12a)</figcaption></figure> 

Clearly something went horribly wrong, there must be some state that was not the same as it was on Windows. Since error checking needed to be added and would likely show me what went wrong, IÂ created a macro to turn it on/off depending on debug/release builds and started checking for errors after each glCall. I found and fixed a few minor issues that likely also occurred on Windows. But nothing changed, loaded theÂ other test project and saw the following:<figure id="attachment_191" aria-describedby="caption-attachment-191" style="width: 710px" class="wp-caption aligncenter">

[<img loading="lazy" decoding="async" class="wp-image-191" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_224937_gl_conversion-1024x592.png" alt="20150520_224937_gl_conversion" width="710" height="410" srcset="/blog/assets/2015/05/20150520_224937_gl_conversion-1024x592.png 1024w, /blog/assets/2015/05/20150520_224937_gl_conversion-300x173.png 300w, /blog/assets/2015/05/20150520_224937_gl_conversion.png 1272w" sizes="auto, (max-width: 710px) 100vw, 710px" />][18]<figcaption id="caption-attachment-191" class="wp-caption-text">(Figure 12b)</figcaption></figure> 

This was quite shocking and after I finished checkingÂ errors after all glCalls I stopped for a moment to just look at that image, Figure 12b, and paused. Was suddenly hit withÂ one of those rare moments of the light-bulb turning on. If you haven&#8217;t experienced this, keep solving problems because it is amazing when it happens. It occurred to me by looking at Figure 12b that the texture coordinates were not being read correctly, either both were always 0, or at least one of them was always 0, and thenÂ immediately the second lightbulb went off.

In my rush through creating the Vertex2DÂ structure I allowed a very bad habit to flow through my fingers. The struct was:

[cpp]

struct Vertex2D {

float x, y;

unsigned long abgr;

float u, v;

};

[/cpp]

Yes, that is correct abgr should beÂ 32 bits, and unsigned long can vary depending on the platform, on my Windows machine it happened to be 32bits, and on Mac OS X, 64bits. Changing this type from _unsigned long_ to _uint32_t_ solves the problems regardless of the platform, and is something I need to pay much closer attention to for future platform independence.

If you&#8217;ve read this far I congratulate you and hope you&#8217;ve learned something from my mistakes and process.Â I feel much better going forward knowing that future rendering in TurtleBrains will be compliant with OpenGL 3.2 Core and thus being less buggy with different hardware and drivers and allow me to port to other devices easier. Strive for code quality.

 [1]: http://www.timbeaudet.com/blog/2015/05/21/converting-turtlebrains-to-opengl-3-2-core/
 [2]: https://twitter.com/neilogd
 [3]: https://www.opengl.org/wiki/Tutorials
 [4]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_150830_gl_conversion_texture_coord_test.png
 [5]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_165405_gl_conversion_text_black.png
 [6]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171009_gl_conversion_sprite_no_alpha.png
 [7]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171354_gl_conversion_sprite_alpha.png
 [8]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_171618_gl_conversion_text_red.png
 [9]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_173640_gl_conversion_text_white.png
 [10]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_174518_gl_conversion_text_color_wrong.png
 [11]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_175733_gl_conversion_text_black_outline.png
 [12]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_182335_gl_conversion_text_tinted.png
 [13]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_184027_gl_conversion_text_color_shift.png
 [14]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_184658_gl_conversion_text_working.png
 [15]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150519_165415_gl_conversion_tank_rotating_wrong.png
 [16]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_195048_gl_conversion_tank_rotating_correct.png
 [17]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_195253_gl_conversion.png
 [18]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/05/20150520_224937_gl_conversion.png
