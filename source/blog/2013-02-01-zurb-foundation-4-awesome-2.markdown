---
title: Zurb Foundation 4, Awesome!
date: 2013/02/01
tags: Zurb Foundation, jquery, zepto, zurb
signup_zurb: "true"

---

I just got back from the Zurb Foundation Meetup where they gave us a walkthrough of some of the new features. I had a great time and here are some of the takeaways from the presentation:

SPLIT\_SUMMARY\_BEFORE\_THIS



## Mobile First





Rather than starting with a full fledged desktop website and figuring out how to use media queries to make things stack correctly and simplify on mobile, Mobile First takes a different approach. Now you can start from a Mobile perspective, limited set of options, simplicity and then build out more for the tablet and desktop browsers after that is complete. With mobile sure to surpass desktop use anyday now this approach makes a lot of sense to me.





## Sass





(yes it has a [Sassy new logo](http://dribbble.com/shots/760641-Getting-Sassy-Final-Logo))





Chris from Zurb gave a fantastic demo of how the new mixins work with Sass. I think these are going to be really powerful, especially if you are wanting to go beyond the basic css based Foundation. It allows you to create just the functionality that you want and tweak it in an endless posibility of ways. He demonstrated how this worked with buttons as well as with the grid. He also showed how to use simple media queries adjust the grid on the fly. He also showed the new shorter class naming style, giving up CamelCase for dashed-names.





Someone asked a question, "Do I need to know Ruby in order to use Sass?"





The answer from the Zurb Crew was was no, but you do need to be able to use a command line application. The entire crowd jumped in, "use [CodeKit](http://incident57.com/codekit/)."





## [Zepto](http://zeptojs.com/) replaces jQuery











There was a joke here about IE support and Zepto. Right now Zepto lists ie10 as a maybe... But the good news if you need ie support you can always drop in jQuery instead of Zepto. The big point here is bloat. jQuery is a massive library (10k+ lines of code) wheras Zepto is about 1.5k (not confirmed, just what I heard at the meeting). Definitely got me thinking about Zepto especially for projects focused on the mobile space.





##  Refactoring and Libraries





This is probally something most Foundation users may never notice but I am excited that Zurb is taking some pride in their work and refactoring and rewriting some of their older libraries. I am sure in addition to having a cleaner more readable code base it will likely result in some optimization of some sort.





> So, when will it be released? Sometime in February.





I can't wait. Thank you Zurb for putting on an awesome meetup and giving us a sneak peak at some of the new features. If you would like to read about this more in depth, I recommend taking a look at their [official blog post](http://zurb.com/article/1152/coding-smarter-the-why-of-foundation-4).
