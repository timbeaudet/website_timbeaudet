---
title: Over Game Editor
author: timbeaudet
type: post
date: 2010-11-12T02:46:27+00:00
url: /2010/11/12/over-game-editor/
sfw_pwd:
  - dsrFILyw6K5t
categories:
  - Tools/Editors

---
**Originally Posted around mid-July 2010:**

During development programmers often have to make a choice between spending time making an editor or just programming away. Often they choose a middle ground, where objects can be manipulated in a horrible fashion which can in the worst cases be counter-productive. After finding many of my projects go down this road I&#8217;ve decided to make a framework to quickly create an editing environment for designers of the game. This gives the benefits of an intuitive Win32 interface, while giving full power to the programmer.

Currently three areas can be controlled by the developer using this framework. The **Menu Bar** is setup quickly by the developer calling MenuBar_AddItem(). The developer can also enable, disable, check or uncheck the menu options as well as change the name if they decide to later. A callback passes the ID of the item when it is clicked, and thus should be handled. The **Status Bar** is a nice touch allowing the developer to set the status of the application. If something is loading, or time consuming this can be updated to show the end-user what is going on. Finally the **Edit Area** allows for edit controls to be added. Currently controls can be added for: bool, float, int, uint and string although I have plans to add custom controls. The developer calls EditArea_AddItem() for each item they want. If the selected object/type changes they just clear it and add again. All tracking/updating is automatically handled by the editor framework, although I want to add callbacks to this area.