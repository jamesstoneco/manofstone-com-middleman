---
title: 6 Myths About Modern CSS Frameworks
date: 2014/03/25
time: 16:27 PM CET
tags: ZURB Foundation, Web Development, CSS
featured_image: "/blog/featured-images/no-myths.jpg"
---

In an article [CSS Frameworks + CSS Reset: Design From Scratch][1] author Sven Lennartz suggests there are 6 major reasons to avoid CSS Frameworks completely. In this article I will go through each "Myth" one by one and show you, at least in the case of ZURB Foundation 5, that this is no longer the case today.

SPLIT\_SUMMARY\_BEFORE\_THIS

(Yes, I know this article is from '07, but it is highly ranked in Google and is worth discussing)

### Myth 1: "You need time to fully understand the framework"

This is simply not true today. ZURB Foundation uses easy to remember class names that do exactly what you would expect. You do have to understand modern grid systems, which can be an effort in itself, but that is going to be the case with all modern web sites. If you want to learn more about how to use the ZURB Foundation Grid, check out my [Screencast on YouTube](https://www.youtube.com/watch?v=kk6KpKK5Jjc).

### Myth 2: "You need a close familiarity with your code’s architecture"

Lennartz suggests that you "need a profound understanding of your code" in order to use CSS frameworks. Today, all of ZURB Foundation's components can be used by default simply by adding in data attributes into your existing HTML. If you want to take it to the next level, you can definitely learn how to customize things with CSS or JavaScript / jQuery but that is completely optional.

### Myth 3: "You might inherit someone’s bugs or mistakes"

In ZURB Foundation's current state, being driven by Bower you have a lot of flexibility. Just with any open source project it is quite possible to get bugs in the latest releases, but the ZURB Foundation Team has been very good about addressing bug fixes in a very timely matter. I seen them sometimes push out a new version the very same day to address a bug fix in a x.1 release.

If you crave stability, you can always get specific in Bower. How specific? Really specific. You can chose to load a specific branch, tag or version of ZURB Foundation via Bower.

Go crazy, set your version to whatever works best for your project and then carefully update your project as you move to the next version. Stay a couple versions back. Use Foundation 4. These are all options with the new Bower workflow.


### Myth 4: "You get a bloated source code"

Foundation since at least version 3 compartmentalized its source code and made it work well with things such as the Rails Asset Pipeline (Sprockets). This allows you to remove JavaScript components you are not using.

Why not go Sass only? Did you know that a lot of Foundation components don't need even one line of JavaScript?

It doesn't get any more minimal than that.

###  Myth 5: "CSS can not be framed semantically"

As of Foundation 4 you can use Sass Mixins to frame your HTML source semantically. The only very slight exception of this is you still need the concept of a row or container, but that is going to be the case in nearly all situations you encounter. If you want to take a look at how to use sass mixins in this way, check out my [tutorial to create Semantic-UI Style markup using Foundation][2]. Of course you are not limited to \<div\> tags and you can use all of the \<nav\> \<section\> and \<article\> tags you want.

### Myth 6: "Ignoring the uniqueness of your projects
"
Lennartz continues in this myth to address the idea of uniqueness in projects. With ZURB Foundation you can radically change the look and feel of the framework. Furthermore, you are able to copy and modify your \_setings.scss file to start your project from a different perspective.

### "Craft"

The biggest myth of all is that somehow using a CSS Framework is somehow poor craft. There are places for this. If you are working on a large scale project then you probably don't need a framework. Or you are using a homebrew in-house version. No problem.

Odds are, you are not going to be building things from the ground up by yourself in this situation anyways. The biggest reasons that I choose to use the ZURB Foundation 5 framework is because ZURB really knows their stuff. If you really want to learn about modern UX, UI and design it is a really good place to start. You can even jump into the source and learn how they are doing the things they are doing.

Maybe you will even develop a preference and build a your own presonal modification of Foundation. Or start it with more advanced frameworks such as Bourbon + Neat or Inuit CSS.

The argument about craft and CSS frameworks all depends on **how** you use them.

Build well designed, fast loading and efficient sites and apps.

Don't worry about the [CSS Police][3].

Odds are, they are not your ideal demographic anyways. Unless of course you are building some sort of product for people who demand [pure-artesian-hand-crafted-CSS][4]. In that case, by all means, build everything by hand every single time.

So what do you think? Have CSS Frameworks improved since 2007? Do you value "craft" over frameworks? If so let me know why in the comments.

[1]:  http://coding.smashingmagazine.com/2007/09/21/css-frameworks-css-reset-design-from-scratch/
[2]:  /blog/semantic-ui-style-layouts-in-zurb-foundation
[3]:  http://daviebaby.deviantart.com/art/The-CSS-Police-174399318
[4]:  https://www.youtube.com/watch?v=M9EyGxejt6E