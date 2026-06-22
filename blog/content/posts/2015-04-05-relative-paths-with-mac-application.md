---
title: Relative Paths with Mac Application
author: timbeaudet
type: post
date: 2015-04-05T22:27:15+00:00
url: /2015/04/05/relative-paths-with-mac-application/
sfw_pwd:
  - fUStzGJeq1Cr
categories:
  - Programming

---
[<img loading="lazy" decoding="async" class="aligncenter size-full wp-image-125" src="http://www.timbeaudet.com/blog/wp-content/uploads/2015/04/tb_relative_path_post.png" alt="tb_relative_path_post" width="720" height="300" srcset="/blog/assets/2015/04/tb_relative_path_post.png 720w, /blog/assets/2015/04/tb_relative_path_post-300x125.png 300w" sizes="auto, (max-width: 720px) 100vw, 720px" />][1]

Last week I released the first project developed with the TurtleBrains framework into the wild lands of the public. A few people even downloaded the [Basic Pong game][2] and let me know that worked on their system. The initial release on the Mac side was a little unfriendly to users, and I knew this was something the needed to improve upon before LudumDare 32, where TurtleBrains will get a real test.

I already knew that a Mac .app package was just a directory containing the executable and some other details, and spent two days attempting to package up the data folder and executable with no luck. I understood the issue, _it was fairly simple_, but had not a solution. When the executable started it would fail to load the sprite sheet and other data from a relative path. I copied the data folder everywhere, inside and outside of the package, and found no combination that worked.

After three days of attempting to solve the issue and talking with many others I had a partial solution, _that I was not happy with,_ to call a function **ToDataDirectory()** which would do magic under the hood in TurtleBrains to give this. That is ugly though. Then someone mentioned to change working directory. **Wow.** I wrote up a small function to change the working directory under the situation that the working directory did not match the bundle path, _these match when running from XCode,_ **and** _the bundle path contains ".app"._ If both conditions are true set the working directory to the .app/Content/Resources/ directory, which is the location I will place the data.

### **Problem solved.**

[cpp]  
{  
char cwdBuffer[FILENAME_MAX];  
getcwd(cwdBuffer, FILENAME_MAX);

const tbString currentDirectory(cwdBuffer);  
const tbString workingDirectory(ToString([[NSBundle mainBundle] bundlePath]));

if (currentDirectory != workingDirectory && currentDirectory == tb_string("/")  
&& tbString::npos != workingDirectory.find(".app"))  
{  
//workingDirectory is "/Some/Path/To/TheApplication.app" running from application.  
//The packager script will put the data in "TheApplication.app/Contents/Resources/"  
chdir((workingDirectory + "/Contents/Resources/").c_str());  
}  
}  
[/cpp]

This code is executed during the launching of the GameApplication, hopefully before any assets have a chance to be loaded, and allows everything to work normally when running from a bundled .app package. I am happy with this solution, it is much cleaner than the alternative ToDataDirectory() and doesn't require any _release_ or _deployment_ defines to be toggled.

 [1]: http://www.timbeaudet.com/blog/wp-content/uploads/2015/04/tb_relative_path_post.png
 [2]: http://www.timbeaudet.com/blog/2015/03/27/basic-pong-using-turtlebrains/ "Basic Pong using TurtleBrains"
