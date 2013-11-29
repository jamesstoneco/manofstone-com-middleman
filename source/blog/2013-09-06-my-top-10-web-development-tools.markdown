---
title: My Top 10 Web Development Tools
date: 2013/09/06
tags: code, Zurb Foundation, web development, top-10
featured_image: /blog/featured-images/top-10-web-design.jpg
---

I am someone that is pretty excited and passionate about modern web development. Today I will share with you some of my top tools that I use on a daily basis developing responsive sites with Zurb Foundation 4.

SPLIT\_SUMMARY\_BEFORE\_THIS

#### 1. [iTerm 2](http://www.iterm2.com/)

On macosx the default terminal application is okay. If you spend most of your day in and out of a terminal it is time to look for a better solution. I have mine set up to automatically go full screen, using [Incosolata](http://levien.com/type/myfonts/inconsolata.html) (my favorite programming font), and use a variation of solarized dark theme. I also have a light one that I can switch between if I find myself blinded by the sun.

Although I use tmux with tmuxinator (more below) extensively I love being able to press cmd-t to spawn new terminal windows full screen and hit cmd-# (1-9) to quickly move between them.

#### 2. [LiveReload](http://livereload.com/) <small>(commercial $9.99, macosx only, available on the mac app store)</small>

This program does many things but I use it only for one thing, automatically refreshing browsers when files are modified. It is pretty easy to set up, just choose a folder to watch, install the plugins in your favorite browsers and turn them on. NOTE: you need to serve the pages (not display directly from files) on Chrome so that it works correctly.

I know there are other options for this, grunt et al, however this was the easiest for me to implement and continues to work great.

Also, when I preview on a mobile device like ipad, there is an option to inject a javascript reloader. This works flawlessly and allows me to do the same thing on browsers without the plugin (mobile browsers, iPhoney, etc.)

#### 3. [Sublime Text 2/3](http://www.sublimetext.com/) <small>(commercial, $69 direct from developer)</small>

I have been an avid VIM user for years and continue to use VIM when I don't have this available, but ST2/3 is simply amazing. How can I compare it. It is like the difference between modern languages like Ruby and less modern languages like Java. Sure you can get things done in VIM but ST is just a pleasure to use. ST Looks great, very fast, great plugin architecture. Specific features like multiple cursors just makes more sense to me. Maybe because I am a more visually oriented person.

#### 4. [Chrome Developer Tools](https://developers.google.com/chrome-developer-tools/)

I also use the same tool set in Firefox but I have to say I just prefer the tools available in Chrome. They are quickly available cmd-opt-j and provide me the tools I need quickly 90% of the time. Like, did my files load, I can tell quickly by looking at source tree. I can open each file and see what error message was returned.

Some people start editing the code within chrome which I guess could be a good strategy but I prefer to just switch back to ST where I have a more advanced text editing tool kit.

#### 5. [YSlow](https://chrome.google.com/webstore/detail/yslow/ninejjcohidippngpapiilnmkgllmakh?hl=en)

Defacto standard to see if your front end is lacking. I love that it gives you specific strategies and tells you where to get started for implementation.

#### 6. [PostMan](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)

Just learned about this recently but it is now part of my daily set of tools. Lets you interact with pages and apis very quickly. You can POST or GET and pass parameters or json data. Really speeds things along when you can see exactly what is going on quickly with an api and the returned data.

#### 7. [Sketch 2](http://www.bohemiancoding.com/sketch/) <small>(commercial, $49.99 on the mac app store)</small>

Sketch 2 is like Illustrator for the web. It does one thing very well. Pixel perfect vector graphics that can be output as either SVG or rasterized PNGs or JPGs along with their double resolution retina cousins. If you don't know what I mean by pixel perfect, I mean that the vector elements are aligned to a grid of "pixels" so you don't get anti-aliased lines for example on the edge of a rectangle.

There is some extra goodness with being able to play with elements quickly and visually and export the CSS. I never copy the CSS directly but it can be a good starting point.

#### 8. [Middleman](http://middlemanapp.com/) <small>(gem middleman)</small>

Middleman is a static website generator written in ruby that is fantastic. I have tried a bunch, octopress, piecrust, etc. What does middleman do right? One thing, a simple templating structure. Many of the others work great if you use one of their templates, but creating your own can be a real hassle. Middleman is great because you can use partials and templates and it is somewhat flexible. Save time by putting your navigation into a _header.html.erb file. Use .markdown for your blog posts. It is a pretty robust solution although the documentation can be lacking at times.

<p>The other reason I love middleman, middleman-s3\_sync. After you build you can push everything to s3 with one command <span class="inline-code">midddleman s3\_sync</span>. This is exactly how I built and maintain this site at the momement. It is hosted through AWS S3 and AWS Cloudfront with an apache server that just redirects / alaises <span class="inline-code">manofstone.com</span> to <span class="inline-code">www.manofstone.com</span>.</p>

#### 9. [Tmuxinator](https://github.com/aziz/tmuxinator) <small>(gem tmuxinator)</small>

I started using Tmux a while back and could never really get into it. I do a lot of front end work using Zurb Foundation in ST and this allows me to automate the generation and serving of files. I have a standard .tmuxinator file that I have created where I just change the directory name. Then I have a shell set up at that directory, <span class="inline-code">compass watch</span> on a second, a web server on port 8k and <span class="inline-code">localtunnel</span> amongst other things as well.

It is very quick for me to check what is going on. I changed the default command to ctrl-a (great for dvorak) and just hit a number 0-5 which allows me to quickly switch through the commands.

I also have it fire up LiveReload and the specific ST project file so one command <span class="inline-code">tmuxinator projectName</span> recreates my entire workspace in a matter of seconds. To switch to another project I just close down all the tmux windows and run the same command with a different project name.

#### 10. [Local Tunnel](http://progrium.com/localtunnel/) <small>(gem localtunnel)</small>

Local Tunnel is another new addition to my kit but one that is here to stay. It does one thing but does it perfectly. It allows you to push your local host connection (on one port) to the outside world. I use this to allow myself to preview pages automatically (see javascript injection in LiveReload above) on my iPad. I can also get an iPhone sized site by using Dolphin Browser for iPhone (more below) which allows me to quickly check responsive sites both at my firewalled wifi setup at home as well as the local starbucks.

The other benefit is when working with rails or node projects it allows me to share my dev server with a client which removes the process of having to push to a staging server for quick demonstrations.

A big thanks to Twillio for putting this one out.

### Honerable Mentions

Didn't quite make it into the list but definitely worth being aware of. Some of these I don't quite use daily but I definitely turn to at least once a week or more. Using Git is kind of like brushing your teeth. Everyone should be doing it several times per day.

#### [Pixelmator](http://www.pixelmator.com/) <small>(commercial, $14.99 available on the app store)</small>

My Photoshop replacer. I do all of my pixel based image editing and creation here. Does 99% of what I used to use Photoshop for and does it with a smile. It is fast and lightweight and the UI/UX makes it fun to edit photos again. I think the price is about one month of Adobe Photoshop in their new Creative Cloud pricing structure.

#### [Marked](http://markedapp.com/) <small>(commercial $3.99, available on the app store)</small>

All this does is render markdown file beautifully and automatically refresh them. It is my web browser of sorts for markdown files. I use it to generate beautiful pdf files from markdown for documentation and other projects.]

#### [Dolphin Browser for iPhone](http://dolphin.com/) <small>(free (with in app purchases), available on the app store)</small>

I use this to preview web pages in an iPhone style browser on my Retina iPad 4th gen. If you are like me and have an iPad but no iPhone. This is the best way to simulate a preview on a smaller device.

#### [iPhoney](http://www.marketcircle.com/iphoney/)

Just remember to hit cmd-0 after you load it. Once you do that you should have a preview similar to an old school 360px wide iPhone. Good for spot checking your designs. You can use the javascript injection with LiveReload for automatic reloading. If I forget my iPad at home this is what I turn to.

#### [YemuZip](http://www.yellowmug.com/yemuzip/)

The easy way to generate .zip files quickly and easily on the mac.

#### [Dropbox](https://www.dropbox.com/)

Has saved my life more than once by providing backups and versioning.

#### [Git](http://git-scm.com/)

This is a no brainer. I also use a git repo (private on bit bucket, public on github) for all of my projects out side of simple demos and prototypes. I have on more than one occasion deleted an entire days work by not being careful trying to roll commits back so be careful and keep a secondary backup. I suggest dropbox.

#### [Paparatzi](http://derailer.org/paparazzi/) <small>(free, macosx only)</small>

Takes full length screenshots for web pages. You can set the width to 360px wide to get nice mobile layouts in Zurb Foundation or other responsive frameworks. I use this to generate all of the screenshots for my books, screencasts and other materials.

