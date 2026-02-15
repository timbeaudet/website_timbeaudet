---
title: Actionable Input!
author: timbeaudet
type: post
#date: 2016-09-24T23:21:01+00:00
date: 2007-03-29T22:06:02+00:00
url: /2016/09/24/actionable-input/
sfw_pwd:
  - Ue9i2Vhk8FI0
categories:
  - Game Development
  - Programming
  - TurtleBrains

---
[cpp]  
class InputAction  
{  
public:  
bool IsDown(void) const;  
bool IsPressed(void) const;  
bool IsReleased(void) const;

void ClearBindings(void);  
void AddBinding(const tbApplication::Key& keyBinding);  
void RemoveBinding(const tbApplication::Key& keyBinding);

private:  
KeyContainer mKeyBindings;  
};  
[/cpp]

Just before [LudumDare][1] 36 I addedÂ a new way to handle input to TurtleBrains framework, it is quite simple but so far I really enjoy the way it is used.Â It is just a _powerful_ little objectÂ that can<!--more--> check the input manager for each of the bound keys allowing an action to bound to:

  * Any key (_supportedÂ by framework_)
  * Multiple keys at once!
  * No keys at all!

The second one is quite interesting, consider implementing aÂ splash or title screen with multiple ways toÂ continue into game. Without the input action, it requiredÂ multiple checks, and more lengthy code.

[cpp]  
{  
//Old way of performing input check  
if (true == Input::IsPressed(KeyEscape) ||  
true == Input::IsPressed(KeySpace) ||  
true == Input::IsPressed(KeyEnter))  
{  
//Goto gameplay scene.  
}

//New way with InputAction:  
if (true == mSkipForward.IsPressed())  
{  
//Goto gameplay scene.  
}  
}  
[/cpp]

Of course to a slight degree this is just moving the code from the update area to initialization:

[cpp]  
{  
mSkipForward.AddBinding(KeyEscape);  
mSkipForward.AddBinding(KeySpace);  
mSkipForward.AddBinding(KeyEnter);  
}  
[/cpp]

But considering itÂ could allow use WASD **and** arrows keys for movement, or,Â _with a binding screen_Â the user could configure controls to their own liking. This is the first pass I make over such a system and so farÂ I&#8217;veÂ enjoyed the usage better than theÂ previous methods.

 [1]: http://www.ludumdare.com
