---
title: Hot Loading Assets
author: timbeaudet
type: post
date: 2016-09-29T16:54:10+00:00
url: /2016/09/29/hot-loading-assets/
sfw_pwd:
  - wxph3vaN4eBN
enclosure:
  - |
    |
        https://www.timbeaudet.com/goods/videos/demos/hot_loading_shaders.mp4
        1388252
        video/mp4
        
categories:
  - Game Development
  - Programming
  - Tools/Editors

---
[  
<video autoplay="autoplay" loop="loop" muted="" width="720" height="405"><source src="https://www.timbeaudet.com/goods/videos/demos/hot\_loading\_shaders.mp4" type="video/mp4" />Your browser does not support the video tag.</video>  
][1] 

After a random discussion on in the [#LudumDare][2] irc channel about directory watching and the desire to get a normal mapping shader implemented one Saturday morning I decided toÂ develop and integrate &#8220;hot loading&#8221;Â shaders scripts.Â Never heard of hot-loading assets, well the bestÂ description I can give is: <span style="text-decoration: underline;"><strong>Flipping Magical</strong></span>. No really, I can open GameÂ _Project_Â and change an asset file, like the script, hit save, and watch the effects be appliedÂ _**immediately**_**.** It is not that difficultÂ to setup.<!--more-->

Hot loading of assets really hinges on one thing, having a cache system that hides the actual data from user.<sup>[1]</sup>Â See the following interface for loading, and using, shaders.

[cpp]  
typedef int ShaderHandle;  
ShaderHandle CreateShaderFromFile(const std::string& shaderFile);  
void DestroyShader(ShaderHandle& shaderHandle);  
void BindShader(const ShaderHandle& shaderHandle);  
[/cpp]

Do noticeÂ thatÂ no details regarding aÂ shader (orÂ texture, or _any_ other asset) are given to the user of the interface, andÂ to use the shader the user supplies this handle. In the internals, CreateShaderFromFile() checks for a cached shader and returns the handle if found, or loads and caches the new file returning a handle for later use. To get hot-loading to work I added a new function, TryReloadingShaderFromFile().Â ThisÂ function is responsible for loading the asset, verifying it is valid, (can the shader compile/link) and only if valid switch out the cached asset.

[cpp]  
void WatchFilesForModifications(FileList& modifiedFiles)  
{  
FILETIME lastWriteTime;  
SYSTEMTIME systemTime;

for (FileToWatch watchedFile : mFilesToWatch)  
{  
HANDLE fileHandle = CreateFile(watchedFile.filePath,&nbsp;&#8230;);  
if (INVALID\_HANDLE\_VALUE != fileHandle)  
{  
GetFileTime(fileHandle, NULL, NULL, &lastWriteTime);  
FileTimeToSystemTime(&lastWriteTime, &systemTime);

if (systemTime more recent watchedFile.lastTime)  
{  
watchFile.lastTime = systemTime;  
modifiedFiles.push_back(watchedFile.filePath);  
}  
}  
}  
}  
[/cpp]

The above function will check for modified files on Windows, not shown isÂ the initialization of theÂ mFilesToWatch which is similar, except,Â _of course_, that it initializes the time of the watched file. I also left out the detailsÂ regarding checking the more recent time andÂ IÂ probably wouldn&#8217;t keep watchedFile.lastTime as a SYSTEMTIME type, but you can figure that out.

&nbsp;

#### <span style="color: #2e9fff;">Footnotes:</span>

_[1] User being a programmer using the interface._

 [1]: https://www.timbeaudet.com/blog/?p=312&preview=true
 [2]: http://ludumdare.com/compo/irc/