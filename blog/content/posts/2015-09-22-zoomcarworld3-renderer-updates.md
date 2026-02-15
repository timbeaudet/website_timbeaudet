---
title: ZoomCarWorld3 Renderer Updates
author: timbeaudet
type: post
date: 2015-09-22T00:36:04+00:00
url: /2015/09/22/zoomcarworld3-renderer-updates/
sfw_pwd:
  - fZNhGjwl3AbG
categories:
  - Game Development
  - Programming
  - Zoom Car World 3

---
[<img loading="lazy" decoding="async" class="alignleft wp-image-241 size-full" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150919_zcw3_line_colors.png" alt="20150919_zcw3_line_colors" width="720" height="360" srcset="/blog/assets/2015/09/20150919_zcw3_line_colors.png 720w, /blog/assets/2015/09/20150919_zcw3_line_colors-300x150.png 300w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Ever since I &#8216;upgraded&#8217; TurtleBrains to use the OpenGL 3.2 Core context, ZoomCarWorld3 has not been rendering. For awhile it would actually throw errors and crash, until all the legacy OpenGL causing those errors was disabled. Last weekend the mission was to<!--more--> bring the rendering state back to where it previously was.

I had already fixed theÂ skybox and wrote the sky shader, and even started the basic object shader.Â There was noÂ lighting model, lines were notÂ rendered at all norÂ was the track becauseÂ it was not using a mesh. First thing to update wasÂ the line rendering. I got the lines stored as vertices and pushed through the pipe in a way GL 3.2 required,Â once that was complete theirÂ color was added.

[<img loading="lazy" decoding="async" class="alignleft wp-image-242" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920131251_screenshot.png" alt="20150920131251_screenshot" width="720" height="408" srcset="/blog/assets/2015/09/20150920131251_screenshot.png 879w, /blog/assets/2015/09/20150920131251_screenshot-300x170.png 300w" sizes="auto, (max-width: 720px) 100vw, 720px" />][2]Next up was the track surface which needed to be handled much the same way as the lines. It doesn&#8217;t use the sameÂ mesh class as the car at this time, soÂ the storage format was updated. I quickly found that the editorÂ _gizmo_Â had broke somehow in this process so after getting that working again a trackÂ mockupÂ was created. All was going well.

[<img loading="lazy" decoding="async" class="alignleft wp-image-243" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920131648_screenshot.png" alt="20150920131648_screenshot" width="720" height="394" srcset="/blog/assets/2015/09/20150920131648_screenshot.png 1279w, /blog/assets/2015/09/20150920131648_screenshot-300x164.png 300w, /blog/assets/2015/09/20150920131648_screenshot-1024x560.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][3]

Until I went to add a tree to the world. NoticeÂ something messed up? A careful observer can see theÂ tree trunk isÂ blue when it should be brown, alsoÂ I now need toÂ transpose the matrix before multiplying it on the model matrix. The color issueÂ was simply because I store colors in ARGB format, but OpenGL seems to send colors down the pipe as ABGR. Ended up doing the conversion upon loading **and** creating the buffer to send to the GPU. So the colors went _from_ ARGB _to_Â ABGR _and back to_Â ARGB. This went unnoticed on the car becauseÂ theÂ red and blue just swapped places.Â _(See car in first images.)_

[<img loading="lazy" decoding="async" class="alignleft wp-image-244" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920132740_screenshot.png" alt="20150920132740_screenshot" width="720" height="394" srcset="/blog/assets/2015/09/20150920132740_screenshot.png 1279w, /blog/assets/2015/09/20150920132740_screenshot-300x164.png 300w, /blog/assets/2015/09/20150920132740_screenshot-1024x560.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][4]

The trees and car still look a little odd, especially if you compare from where the visuals were at in the old version withÂ legacy OpenGL. This is because there was a directional light, which needs to be added toÂ the basic object shader. The results of which first caused the lights to go out completely on all objects.

[<img loading="lazy" decoding="async" class="alignleft wp-image-245" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920164040_screenshot.png" alt="20150920164040_screenshot" width="720" height="394" srcset="/blog/assets/2015/09/20150920164040_screenshot.png 1279w, /blog/assets/2015/09/20150920164040_screenshot-300x164.png 300w, /blog/assets/2015/09/20150920164040_screenshot-1024x560.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][5]

Programming can be fun and tedious goingÂ through these little steps. By ignoringÂ theÂ vertex colorsÂ andÂ using the directionalÂ lighting, like the sun, the car started looking like the following image.

[<img loading="lazy" decoding="async" class="alignleft wp-image-246" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920172305_screenshot.png" alt="20150920172305_screenshot" width="720" height="394" srcset="/blog/assets/2015/09/20150920172305_screenshot.png 1279w, /blog/assets/2015/09/20150920172305_screenshot-300x164.png 300w, /blog/assets/2015/09/20150920172305_screenshot-1024x560.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][6]

Continuing with the shader work to get ambient light I ended withÂ a nice colored car and trees. Although the lighting is a bit darker than daylight. Time was spent tweaking to brighten up the ambient levels to that of day time and the colors seemed to have washed out a bit. Will continue to modify until I get it how I want.

[<img loading="lazy" decoding="async" class="alignleft wp-image-247" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920175254_screenshot.png" alt="20150920175254_screenshot" width="720" height="394" srcset="/blog/assets/2015/09/20150920175254_screenshot.png 1279w, /blog/assets/2015/09/20150920175254_screenshot-300x164.png 300w, /blog/assets/2015/09/20150920175254_screenshot-1024x560.png 1024w" sizes="auto, (max-width: 720px) 100vw, 720px" />][7]

Be sure to check for future updates,Â going to start working on some custom rigid bodyÂ physics soon, aiming for aÂ minimal playable by October 31st!

 [1]: http://www.timbeaudet.com/blog/2015/09/22/zoomcarworld3-renderer-updates/
 [2]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920131251_screenshot.png
 [3]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920131648_screenshot.png
 [4]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920132740_screenshot.png
 [5]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920164040_screenshot.png
 [6]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920172305_screenshot.png
 [7]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/09/20150920175254_screenshot.png
