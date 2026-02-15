---
title: Explicit Constructors
author: timbeaudet
type: post
date: 2015-03-24T21:28:38+00:00
url: /2015/03/24/explicit-constructors/
sfw_pwd:
  - EwlozJvvLhEb
categories:
  - Programming

---
I had a bug very recently that tookÂ much longer to track down than it needed to. Â Actually, it should never have been a bug. Â I&#8217;ve updated my coding standards accordingly and will make my best efforts to never allow this sort of bug to happen in the future.

I was making Pong, andÂ had some code similar to the following:

[cpp]enum PaddleType { kLeftPaddle, kRightPaddle };  
class Paddle {  
public:  
Paddle(const PaddleType& type) : mPaddleType(type) { }  
private:  
const PaddleType mPaddleType;  
};[/cpp]

At first glance this seems like acceptable code<!--more-->, it works, and does everything it is supposed to. Now consider we have a function that takes a Paddle as an input:

[cpp]bool CollidesWith(const Paddle& paddle)[/cpp]

Still looking reasonable, until one considers what happens when you do this:

[cpp]if (CollidesWith(kLeftPaddle))[/cpp]

For many the thought is &#8220;this shouldn&#8217;t compile, you&#8217;re passing a PaddleType as a Paddle&#8221;, it was actually my first thought when I finally found my bug, but then I realized what had happened&#8230;

When making a constructor with a single argument, the compiler will implicitly cast and create a temporary object. In few situations this is actually desired, but in my experience this desired effect is rare. More often is the case where you don&#8217;t want a temporary object created, what if resources are grabbed or the initialization is heavy on processing time? The solution is rather simple.

**Use explicit constructors.**

[cpp]explicit Paddle(const PaddleType& type) : mPaddleType(type) { }[/cpp]

Making any single parameter constructors explicit will guard against any sort of behavior like this, instead of passing a temporary Paddle object into the CollideWith, the compiler would have thrown an error calling me an idiot. I prefer that. While I temporarily feel like an idiot for making a typo or mistake, it can preventÂ hours of debugging.

And so I&#8217;ve modified my personal [Coding Standards][1] to include;Â Always use explicit constructors for single argumentÂ constructors unless there is an explicit, and good, reason not to.

 [1]: http://www.timbeaudet.com/coding_standards.pdf "C++ Coding Standards and Practices"