---
title: Spline Editor For Fencing
author: timbeaudet
type: post
date: 2016-09-18T02:45:41+00:00
url: /2016/09/18/spline-editor-for-fencing/
sfw_pwd:
  - oG10OkBoETVP
categories:
  - Game Development
  - Programming
  - Racing Simulator
  - Tools/Editors
  - Zoom Car World 3

---
[<img loading="lazy" decoding="async" class="aligncenter wp-image-308 size-full" src="/blog/assets/2016/09/20160917_162427_screencap.gif" alt="Fence Editing" width="640" height="360" />][1]  
Racetracks have a lot of fencing, andÂ placing each section of fencingÂ section by sectionÂ would be a daunting task, soÂ I spent the last few hobby development sessionsÂ creating a way to edit a spline that could be attached to an object to place the fence.Â Last year I had my first experience with bezier curves when IÂ <!--more-->made the track editor for ZoomCarWorld3.

First,Â if you&#8217;re not familiar with a bezier curve it really is a lot more simple than wikipedia and other google results will have you believe. If you understand linear interpolation, youÂ have almost all the math you need. I use cubic-bezier curves, which means a curve consists of a start and final point as well asÂ 2 control points. To create the curve, just use linear interpolation from start point to the first control, first control to second control andÂ from second control to final point. This will give you 3 points, which you then interpolate,Â _again linearly,_ from the first to second andÂ then second to third, giving you 2 final points. Guess what,Â **another linear interpolation**, from thoseÂ two points will give you the result.

<img loading="lazy" decoding="async" class="aligncenter size-full wp-image-310" src="/blog/assets/2016/09/20160917_204355_screencap.gif" alt="20160917_204355_screencap" width="640" height="360" /> 

[cpp]template <typename T> T LinearInterpolation(const float percentage,  
const T& startPoint, const T& finalPoint)  
{  
return startPoint + ((finalPoint &#8211; startPoint) * percentage);  
}

template <typename T> T BezierInterpolation(const float percentage, const T& startPoint,  
const T& firstControl, const T& secondControl, const T& finalPoint)  
{  
const T tempA = LinearInterpolation(percentage, startPoint, firstControl);  
const T tempB = LinearInterpolation(percentage, firstControl, secondControl);  
const T tempC = LinearInterpolation(percentage, secondControl, finalPoint);

const T tempAA = LinearInterpolation(percentage, tempA, tempB);  
const T tempBB = LinearInterpolation(percentage, tempB, tempC);

return LinearInterpolation(percentage, tempAA, tempBB);  
}[/cpp]

It may be a bit naive, and I&#8217;ll adjust in the future if needed, but my curve object has a container of one-or-more of these sections, each section with the start, final and two control points. If you didn&#8217;t already note,Â the naive part comesÂ from it should be possible toÂ share theÂ final of one section with the start of the next. This would reduce memory, andÂ possibly help in other ways.

With a way to store theÂ curve, I then needed a way to edit the curve. Still not completely finished with this, but currently I can add from the front or back section, and drag any of the points. **Because** of myÂ _naive_ curve storage implementation I had to make extra efforts toÂ ensure when grabbing a final point that the start point of the next section would also be modified. (And previous section final point when modifying aÂ start point). Similar edge cases were needed to be handled to keep control points straight to avoid sharp angles entering the curve.

[Picture of single fence object with curve]

The final bit was to break the curve into segments of a set length. I did this a bit naively as well. The pseudo code would look something like the following:

[cpp]//First compute total length of curve  
for section : curveSections  
for i 0,100  
totalLength += length(previous, current);

//Add each of the points where a new fence segment starts.  
fenceSegments.pushBack(curveSection[0].startPoint);  
for section : curveSections  
for i 0,100  
if (length(fenceSegments.back, current) > segmentLength)  
segmentPos = direction(fenceSegments.back, current) * segmentLength  
fenceSegments.pushBack(segmentPos)  
[/cpp]

With the container of points, each a specificÂ distance fromÂ the others, the fence can beÂ placed. Of course each segment needed a direction as well, but it was fairly easy toÂ align it to the next point in the container. The trick will be adding walls that actually have thickness and,Â _if I ever get that far,_ aligning theÂ fence/wall to the terrain heights to some degree, if that should come up, I foresee issues.

 [1]: https://www.timbeaudet.com/blog/2016/09/18/spline-editor-for-fencing/
