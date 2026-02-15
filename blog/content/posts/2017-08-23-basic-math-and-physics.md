---
title: Basic Math and Physics
author: timbeaudet
type: post
date: 2017-08-23T03:27:19+00:00
url: /2017/08/23/basic-math-and-physics/
sfw_pwd:
  - 8PkxFZ4UrY9h
categories:
  - Game Development
  - Programming
  - Racing Simulator

---
<p style="text-align: center;">
</p>

[latexpage]  
It has always been my aim to provide as much of a log about creating a racing simulation as I can, including the mathematics of the simulation and other details. I&#8217;ve just setup something on the blog to allow. So here we will start be some of the extremely basic math/physics that an average high-schooler would understand.<!--more-->

\begin{equation} \label{eq:sys}  
\vec{F} = m\vec{A}  
\end{equation}

The mass, $m$, of an object is measured in kilograms, for the SI/metric system (or Slugs for imperial system). The acceleration, $\vec{A}$, is measured in meters per second, per second; $m/s/s$ also known as $m/s^2$

Say for a moment we are confused what units $\vec{F}$ would be, how would we figure that out? Knowing the units of $m$ in $kg$ and $\vec{A}$ in $m/s^2$ then we can perform dimensional analysis and multiply the units to get:

\begin{equation}  
m(kg) \* \vec{A}(m/s^2) = kg\*m/s^2  
\end{equation}

I&#8217;ve been using this a lot recently, I&#8217;ve found it is a _great_ way to double/triple check that the math lines up and makes sense. Another lesson I&#8217;ve learned recently is that having confidence and attacking something is a grand way to improve. Years have passed since my last official math course and my attitude / thought process remained the same, until last week. From that point on I look at math as a challenge that I&#8217;m getting better at. The viewpoint of _&#8220;I suck at \____&#8221;_ will enforce negativity, so if you are attempting to get better, stop focusing on how bad you may be at the moment and instead **focus on improving**.

You probably won&#8217;t go from drawing like a 5 year-old today to a Leonardo / Michelangelo tomorrow; but stay positive, take your time and put in the effort; improvements will come.