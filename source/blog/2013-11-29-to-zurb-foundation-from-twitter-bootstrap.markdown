---
title: To Zurb Foundation from Twitter Bootstap
tagline: A whirlwind trip through the features and cultures of the two most popular responsive web design frameworks
date: 2013/11/29
tags: Zurb Foundation, twitter-bootstrap, mobile first, responsive web design
published: false
category: foundation, zurb, twitter, bootstrap rwd, responsive
signup_zurb: "true"

---

Twitter Bootstrap is by far the most popular front end framework at the moment. A lot of people dismiss Zurb Foundation and say use Bootstrap for everything, but you know better. You have read all the articles on Foundation vs. Bootstrap and the lengthy comment threads on Hacker News. You are just a little curious how Foundationy things work and what some of the benefits are to moving over even just for a personal project or two. Maybe you are trying to assess which projects lend themselves to Foundation and which are better handled by our trusty Twitter Bootstrap. If you know Bootstap and are interested in Foundation, this article is for you.

SPLIT\_SUMMARY\_BEFORE\_THIS

Regardless of your interest this article aims to be a guide for those who have used or are familiar with Twitter Bootstrap to accomplish some of the same things in Foundation. This will be your phrasebook and culture guide to Zurb and Foundation on your voyage to another RWD framework which may seem a bit foreign at first. With time I think you will fall in love with Foundation, like I have, without loosing touch with your past love(s).

In this article I will discuss the following:

* Zurbians and Yetis, a Brief History
* Mobile First and Why you Should Care (Its Optional)
* Compass, Sass, Rails, Gem, Bundler, WAT??!
* Bootstap to Foundation Phrasebook: Grid, Navbar, Buttons, Forms, the Good Stuff
* The Awesome Culture of Zurb
* Bootstapping Back, the Return Home
* The Disclaimer, the Small Print

## Zurbians and Yetis, a Brief History

Zurb is a self professed team of "T-Shaped Designers that help grow businesses" and doesn't fit into typical agency categories. They have worked with a ton of startups since 1998 and have help build or refine some of the greatest UX you have experienced across names big and small. They are situated geographically in the city of Campbell, which is a cute community in the South Bay Area which is in the heart of the Silicon Valley. One of the things that makes Zurb very unique is how transparent they are in their process and their tools. If you are interested in Responsive Web Design or User Experience or even sketching Wireframes Zurb has you covered. They not only post amazing articles that offer a lot of value and insight but they also host free events such as their Soapbox and the Foundation meetup allowing the community to tap into their hive mind and get a glimpse at how the masters work at their craft.

So you might be thinking, Foundation sure seems like a rip off of Twitter Bootstrap except not as nice looking. Well, let me set the record straight. First off, Twitter Bootstap and Zurb Foundation are a lot more [related](link to hn post) than one might think. This common misconception stems from different philosophies and project goals. At first they seem to be carbon copies of each other, but upon further investigation one can see that they are approaching similar problems from different approaches. A common misconception is that Foundation is for designers and needs a lot of design to work well, where as Twitter Bootstap just looks great out of the box. I am not going to lie here, if you want to spend less time tweaking some settings and more time programming your rails app, Twitter Bootstap is going to be the way to go. But what I hope to point out in this article is that Foundation can be a first class replacement that can not only look like Bootstap but also be a lot more fun to work with.

Fun? This can be a hard thing to define especially with things that can be as dull as HTML, CSS or programming. If you talk to the unitiated they might look at you strange if you showed them some HTML source and started talking about how fun it is. My point is, that in my experience, Zurb Foundation is fun to work with. But, lets see if we can qualify why it is fun.

You hear a lot of these same types of comparisons wih the Ruby languge and the Ruby on Rails framework that popularized it. Things like Syntatic Sugar, Magic and Readable are thrown around. It is something that is hard to explain to people who 1) have not programmed in another language that is not so fun like C or Java and 2) moved to Ruby and Ruby on Rails and 3) experienced the culture of Rails.

Coming back to Foundation it is both the syntax, structure of the framework but most importantly the culture that surrounds it that makes it so much fun. First off, Zurb is a fun company. Look at the bright colors or the playful and energetic writing style they use. They are passionate, quirky and fun. Just take a look at their about page or one of their philanthrophy projects where they build out a project for a deserving charity in a company wide 48 hour marathon. When you look at Bootstrap in comparison, it is not that it is wrong or right it is just that it is a different culture. Bootstap presents itself as a much more mature, corporate and mild mannered framework.

Which brings us to the Yeti. Whats up with the Yeti and what does that mean anyways? Well, Zurb gives a explanation if you can call it that, but I think the Yeti is much more. The Yeti is really the mascot for Zurb Foundation and is lovingly crafted by some of its best designers. There is even Zurb swag if you are lucky enough to get it. There are stickers, T-Shirts and other Yeti sightings. Here a picture of the Yeti and me at a Parisienne Café saying "Bonjour toute le monde" to all the Foundation naysayers. Interested in getting your own Yeti Swag? Pop over to Zurb Showcase and learn how.

## Mobile First and Why you Should Care (Its Optional)

So you might have heard that Zurb Foundation 4 is now Mobile First. This is thrown around in a lot of comments as a bad thing but let me make one thing clear.

Its completely optional.

Don't like Mobile First? Prefer Desktop First, Tablet First or Paper First? No problem, Zurb Foundation has you covered. What is important to know is that Zurb Foundation allows a Mobile First approach in its workflow and it is very simple to implement. Basicly you start from your Mobile Design (previewing on a mobile device or a small width resized browser window) by using .small-4.columns for example. You can still refine your desktop layout later or you might just find that you like the simplicity of your design and you might leave it.

Mobile First and Zurb and Zurb Foundation understand it stem from a book written by Zurb Advisor [Luke Wroblewski](http://www.lukew.com/about/)  called [Mobile First](http://www.abookapart.com/products/mobile-first) out on A Book Apart. For more on this, check out my review of Mobile First. The basic premise is this, if you design for desktop you will add all sorts of features and wigets adding a lot of complexity to your web app. By approaching your design from the mindset that it will be used on a mobile device it forces you to simplify your UX and UI which generally leads to more usuable products. Specificly thinking about small screen size, large touch targets for buttons, simplified information displays, a distracted audience and only being able to press something with a single finger limit your options. My advise is to read the book. It will deepen your appreciation for Zurb Foundation, Twitter Bootstap and great UX in general.

Obviously this has a tremendous impact on Zurb's philosophy as well as the philosophy of Foundation. You will see that a lot of elements (navbar, buttons, sections, clearing) provide an enhanced and mobile friendly UX and UI right out of the box. The navbar collapses to a hamburger menu and provides large touch targets. The buttons get expanded automaticly. Sections change orientation to work better on a mobile device. The Clearing Gallery has larger touch targets and is even touch enabled for swiping. You get this all automaticly and you get all this for free, without having to write anything extra.

This all adds up to much faster prototyping, a much better UX and generally a much better workflow for rapid prototyping especially when taking a Mobile First approach.

## Compass, Sass, Rails, Gem, Bundler, WAT??!

If you are new to Foundation you might be wondering what all these things are. If you have used bootstap-rails then maybe some of this will be a review. Zurb is first and foremost a Rails shop. That means that their websites, apps, etc. are all written in RoR/Rails. What this means for Zurb Foundation is that you get a great experience as a developer if you are using a similar tech stack. If not, it is still possible to use it, just maybe not as easy to set up initially. Be sure to check out Zurb Foundation for .NET MVC4 if you are into MS C#. If you are trying to shoehorn foundation into another project, check out [my guide on how to do that](write an article on how to do this).

## Bootstap to Foundation Phrasebook
(note: might be fun to have a transliterated _spahn nein_ for or recorded audio, this can also be a downloadable pdf that would be a value add)
### Grid
### Navbar
### Buttons
### Forms
### The Good Stuff
## The Awesome Culture of Zurb
## Bootstapping Back, the Return Home