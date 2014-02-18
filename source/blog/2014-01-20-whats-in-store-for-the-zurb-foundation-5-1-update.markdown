---
title: Whats in Store for the ZURB Foundation 5.1 Update
date: 2014/01/20
time: 2:01 PM CET
tags: ZURB, ZURB Foundation, Responsive Web Design, Web Design, Mobile
featured_image: "/blog/featured-images/5point1.jpg"
signup_zurb: "true"
---

I was taking a look through the open issues for the [ZURB Foundation 5.1 milestone on GitHub](https://github.com/zurb/foundation/issues?milestone=4&page=1) and I thought I would share with everyone things that could be coming in the 5.1 update. I am not sure exactly when that is going to be, but as of today it is showing 10 more days, so it can't be long now.

SPLIT\_SUMMARY\_BEFORE\_THIS

There are plenty of performance optimizations, new features and bug fixes. Take a look at what is in store along with some of my commentary, or if you want to get the direct line, hop on over to [github](https://github.com/zurb/foundation/issues?milestone=4&page=1) and check it out for yourself.

## Closed Issues

* Off Canvas Nav Bars - this issue points to a really fantastic jQuery plugin that you can use for off canvas mobile menus. Definitely worth taking a look at [mmenu](http://mmenu.frebsite.nl) which was quoted in the GitHub issue.

* FIX Interchange Retina Media Query - this seems like an important bug fix, as preventing huge retina images from loading on non retina devices would be one of the major benefits of a plugin such as Interchange.

* Smooth Scroll on Magellan - I am a big fan of smooth scrolling via jQuery and this would be a great add on to have Magellan to this automatically.

## Issues Still Open

* Replace all for loops with while loop - very interesting take, looks like the Foundation team is trying to squeze every cycle they can to make Foundation even faster.

* Integrate Pizza - This is my favorite 5.1 enhancement. If you haven't used [Pizza](http://zurb.com/playground/pizza-pie-charts) it is a responsive pie chart, get it, library that is built on the new [Snap.SVG](http://snapsvg.io/) library. Snap.SVG is like [Raphael.js](http://raphaeljs.com/), by the same author and written for only modern browsers. So what does that mean? That means it is fast, lean and optimized for modern browsers because it doesn't have to have a bunch of code to support older browsers. I mean, who is using ie6 now a days anyhow? Both Pizza and Snap.SVG are both really worth checking out and I am excited to see where ZURB takes this. From the issue it looks like they are adding line and bar charts. I think they should call it "bread sticks".

* Remove Google font include for speed - I am all for this change, or at least to make the loading optional. There is a variable flag that you can set but I haven't tested this myself.

* Slider Form Control - I would love to have this and sliders are just more fun to use, right?

* Add in equal height columns JS to core - I would love to see this because there are several places where equal column heights just look great. Like on Pricing Tiers for example. I would love to see a native function or data-attribute that I can set rather than having to roll my own jQuery call every time I want this to happen.

* css.html doc should be clearer about humans.txt, robots.txt and normalize.css - so, if you don't know already humans.txt is a file where you can tell people who was involved with the project and what technologies were used, robots.txt allows you to selectively block (if they are well behaved) web crawlers such as the googlebot and [normalize.css](http://necolas.github.io/normalize.css/) is a "modern html5 ready alternative to CSS resets". CSS resets are used to get more consistant look and feel across different browsers that have different default values set for things such as padding and margins. Just so you know, normalize.css is optional and if you don't mind slightly different appearances you can reduce the size of your css by omitting it.

* megamenus with existing components - this came from [a Foundation Forum post](http://foundation.zurb.com/forum/posts/232-megamenu) and describes those dropdown menus full of all sorts of things, multi-columns, images, forms, etc. You can check out [this post](http://www.designer-daily.com/mega-drop-down-navigation-menus-12796) for some examples of megamenus from the post. I would also like to see some way to accomplish this with Foundation although I am concerned about how well it would degrade to be used in a Mobile grid or from a [Mobile First](mobile-first-and-why-you-should-care) approach.

Here are the rest of the open issues. Are any of these important to you? Let me know in the comments.

* Create and document Foundation.utils
* Wrap labels around the inputs in forms
* For accordion, move the "active" on the parent DD accordion
* Remove uber-specific selectors
* Allow parallel queries for Interchange interchange
* Allow data attribute prefixes/namespace.
* Blog post: Best practices for tabs, accordions, dropdowns in tandem.
* Dropups, Droprights, etc
* Update Block Grid grid
* Optimize Generated CSS
* bug in "foundation new project" instructions installation
* Documentation request: add data-topbar to http://foundation.zurb.com/docs/upgrading.html docs
* duplicate JS files in zip file
* docs: "data-options" values
* Magellan Horizontal Option magellan
* Tool tips blocking links of parent elements on Android Browsers tooltips
