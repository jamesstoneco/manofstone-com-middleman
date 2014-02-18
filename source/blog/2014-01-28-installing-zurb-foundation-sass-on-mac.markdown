---
title: Installing ZURB Fonudation Sass on Mac
date: 2014/01/28
time: 2:14 PM CET
tags: ZURB, ZURB Foundation, Responsive Web Design, Web Design, Mobile
featured_image: "/blog/featured-images/5point1.jpg"
signup_zurb: "true"
published: false
---

here is a step by step set of instructions to installing all of the prerequisites for sass foundation.

SPLIT\_SUMMARY\_BEFORE\_THIS

[Download and Install GIT for Macosx](http://git-scm.com/download/mac)

XCode -> because you will need the GCC compiler

[command line tools maverics](http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/)

Ruby with rbenv

gem

bundler

foundation gem

Node.js

NPM

skype conversation:

[1/26/14 6:37:00 PM] William Hernebrink: Hey James! This is William, from youtube! :). William Hernebrink
[1/26/14 6:37:51 PM] James Stone: James Stone has shared contact details with William Hernebrink.
[1/26/14 6:40:20 PM] William Hernebrink: Hello mr James!
[1/26/14 6:42:47 PM] James Stone: Hello William, how are you?
[1/26/14 6:43:04 PM] William Hernebrink: I'm very good, thank you! And you?
[1/26/14 6:43:29 PM] James Stone: not bad, it is a lazy sunday in France. The bus drivers are on strike so we are staying at home.
[1/26/14 6:43:40 PM] James Stone: You are in Sweeden, correct?
[1/26/14 6:43:55 PM] James Stone: sorry for the extra e
[1/26/14 6:44:14 PM] William Hernebrink: Oh, i thought you lived in the United States? Yes, in cold Sweden! :)
[1/26/14 6:44:32 PM] James Stone: I am from San Francisco, but I live right now in Paris
[1/26/14 6:44:56 PM] James Stone: so, I think we are in the same time zone, CEST
[1/26/14 6:44:58 PM] William Hernebrink: That must be awesome too
[1/26/14 6:45:08 PM] William Hernebrink: yeah, thats good!
[1/26/14 6:45:08 PM] James Stone: I love SF, have you ever been?
[1/26/14 6:45:29 PM] William Hernebrink: No, never. but i have been to Vegas and LA, twice.
[1/26/14 6:45:34 PM] James Stone: oh nice
[1/26/14 6:45:36 PM] James Stone: so
[1/26/14 6:45:38 PM] William Hernebrink: i'm sorry, i forgot, i have to get the laundry, i'll be right back though!
[1/26/14 6:46:29 PM] James Stone: it is like the more progressive, bigger city (in being more built up in height) and probably the most european like city in the us, as compared to LA
[1/26/14 6:46:35 PM] James Stone: np
[1/26/14 6:47:11 PM] William Hernebrink: Would love to visit it someday. I'll be right back.
[1/26/14 6:58:19 PM] William Hernebrink: There, all done! Why do one always wait too long before doing the laundry, so that it takes a bunch of hours instead of just a few?
[1/26/14 6:58:37 PM] William Hernebrink: I will never get that...
[1/26/14 7:03:58 PM] William Hernebrink: So how come you moved from San Fransisco to Paris?
[1/26/14 7:21:30 PM] James Stone: sorry, was afk
[1/26/14 7:21:44 PM] James Stone: i don't know
[1/26/14 7:21:46 PM] William Hernebrink: No worries
[1/26/14 7:21:49 PM] James Stone: i am the same way with laundry
[1/26/14 7:22:08 PM] James Stone: unless I do it by hand, but I only seem to do enough for one day, which seems like it defeats the purpose
[1/26/14 7:22:34 PM] James Stone: My wife studies at Sorbonne IV and UPMC as an masters exchange student
[1/26/14 7:22:47 PM] William Hernebrink: oh, cool
[1/26/14 7:22:54 PM] James Stone: I am the lucky husband that gets to live in Paris for a year while she studies
[1/26/14 7:23:10 PM] William Hernebrink: hehe, that sounds pretty good in my ears
[1/26/14 7:24:57 PM] James Stone: i don't know much about sweden, but I used to work for apple, basically for a company called C3
[1/26/14 7:25:07 PM] James Stone: so everyone that I worked with was from sweden
[1/26/14 7:25:32 PM] James Stone: http://9to5mac.com/2011/10/29/apple-acquired-mind-blowing-3d-mapping-company-c3-technologies-looking-to-take-ios-maps-to-the-next-level/
[1/26/14 7:26:19 PM] James Stone: i forget which city they are from
[1/26/14 7:26:44 PM] William Hernebrink: wow! What kind of things did you do at C3?
[1/26/14 7:26:59 PM] James Stone: well apple bought c3
[1/26/14 7:27:03 PM] James Stone: that is public knowledge
[1/26/14 7:27:15 PM] James Stone: that technology became ios6 flyover
[1/26/14 7:27:20 PM] James Stone: its in the apple maps program
[1/26/14 7:27:25 PM] James Stone: also public knowledge
[1/26/14 7:27:40 PM] James Stone: and so I worked at apple as a contractor doing qa in the various cities
[1/26/14 7:27:41 PM] James Stone: so
[1/26/14 7:27:59 PM] James Stone: fixing things that needed to be fixed, can't really talk about any of the specifics or the tools
[1/26/14 7:28:10 PM] James Stone: 3d modeling of sorts
[1/26/14 7:28:17 PM] James Stone: for entire cities
[1/26/14 7:28:38 PM] William Hernebrink: Sounds like some pretty advanced stuff
[1/26/14 7:28:57 PM] James Stone: yep
[1/26/14 7:29:20 PM] James Stone: i did that for about a year
[1/26/14 7:29:28 PM] James Stone: worked on it before the official release, so that was cool
[1/26/14 7:29:33 PM] James Stone: to see it before anyone else
[1/26/14 7:29:37 PM] William Hernebrink: i bet
[1/26/14 7:29:40 PM] James Stone: and moved here in the summer last year
[1/26/14 7:29:56 PM] William Hernebrink: Oh, so you guys are heading back to the states in the summer then?
[1/26/14 7:30:06 PM] James Stone: since, I have been focused on writing my book and doing some consulting with some clients in the US
[1/26/14 7:30:12 PM] James Stone: that is the plan
[1/26/14 7:30:37 PM] James Stone: it is very expensive to live here and we don't have normal rights to work or anything
[1/26/14 7:30:44 PM] James Stone: so it is not that great of a deal
[1/26/14 7:30:49 PM] James Stone: my wife can work part time
[1/26/14 7:30:58 PM] James Stone: I am not allowed to work in France
[1/26/14 7:31:12 PM] James Stone: its pretty complicated
[1/26/14 7:31:32 PM] James Stone: and SF is very nice, the wages are very high in comparison, the cost of living is less
[1/26/14 7:31:32 PM] James Stone: so
[1/26/14 7:31:35 PM] James Stone: for us
[1/26/14 7:31:37 PM] William Hernebrink: You better take a long weekend before you head back home and visit Sweden then! Since it's just a few hours away, with a plane that is.
[1/26/14 7:31:52 PM] James Stone: one euro is about equivalent to 1 dollar
[1/26/14 7:32:08 PM] James Stone: so something that costs 1euro is about what would cost us $1 in the US
[1/26/14 7:32:11 PM] James Stone: but
[1/26/14 7:32:16 PM] William Hernebrink: That sound pretty weird, not being allowed to take a job
[1/26/14 7:32:27 PM] James Stone: the exchange rate is 1.37 usd to the euro
[1/26/14 7:32:32 PM] James Stone: + 3% minimum bank fees
[1/26/14 7:33:01 PM] James Stone: I would love to travel to sweden, I have never been
[1/26/14 7:33:04 PM] William Hernebrink: mm, most of the European capital cities are like that
[1/26/14 7:33:12 PM] William Hernebrink: Very expensive to live in
[1/26/14 7:33:17 PM] James Stone: yes
[1/26/14 7:33:40 PM] William Hernebrink: Just take Oslo, one of the most expensive city to live in
[1/26/14 7:33:58 PM] William Hernebrink: And that is a small Country...
[1/26/14 7:34:02 PM] James Stone: sure
[1/26/14 7:34:17 PM] James Stone: and France is with all of its own rules and regulations
[1/26/14 7:34:19 PM] James Stone: it just depends
[1/26/14 7:34:29 PM] James Stone: it is quite easy for me to get a work permit and work in the uk
[1/26/14 7:34:35 PM] James Stone: but in France nearly impossible
[1/26/14 7:34:47 PM] James Stone: if I was a eu citizen it would be a different story
[1/26/14 7:35:23 PM] William Hernebrink: oh, i see. Well, i guess thats the same for me, if i wanted to go and work in the U.S. No green card for me, just like that, i suppose.
[1/26/14 7:35:32 PM] James Stone: yes
[1/26/14 7:35:38 PM] James Stone: there is a h1b visa
[1/26/14 7:35:43 PM] James Stone: they bring a lot of tech workers in
[1/26/14 7:35:47 PM] James Stone: pay them low wages
[1/26/14 7:35:49 PM] James Stone: and then out
[1/26/14 7:35:51 PM] James Stone: but
[1/26/14 7:35:56 PM] James Stone: with a greencard it is no problem
[1/26/14 7:36:31 PM] James Stone: my wife is originally from another country so I have a different perspective on most of this
[1/26/14 7:36:52 PM] William Hernebrink: I guess i will have to find an American girl i can marry then, if i wanted to move and work in the U.S :)
[1/26/14 7:37:09 PM] James Stone: this would be the most likely way to do it
[1/26/14 7:37:12 PM] James Stone: or win the lottery
[1/26/14 7:37:16 PM] William Hernebrink: hehe
[1/26/14 7:37:23 PM] James Stone: or, get sponsored through a h1b visa
[1/26/14 7:37:27 PM] James Stone: but it would have to be a real one
[1/26/14 7:37:46 PM] James Stone: where you have specialized skills or education or background where a us citizen can't be found
[1/26/14 7:37:59 PM] James Stone: not the bringing in cheap labor under the same visa route
[1/26/14 7:38:13 PM] James Stone: i mean, if you are interested
[1/26/14 7:38:19 PM] James Stone: it gets quite complicated
[1/26/14 7:38:29 PM] James Stone: like, if you have a phd, special skills, it becomes easier
[1/26/14 7:38:39 PM] William Hernebrink: i bet it's very complicated, indeed
[1/26/14 7:38:41 PM] James Stone: here, france, uk, etc.
[1/26/14 7:39:01 PM] James Stone: the other way is to work for a startup that gets picked up by an american company
[1/26/14 7:39:08 PM] James Stone: so, everyone at that company moved to the us
[1/26/14 7:39:22 PM] James Stone: i assume they were all given h1b visas and sponsored for greencards
[1/26/14 7:39:25 PM] William Hernebrink: I would feel so scared, living in the U.S tho. Scared of injuring myself and get to pay $50k for a surgery and stuff like that
[1/26/14 7:39:30 PM] James Stone: oh
[1/26/14 7:39:32 PM] James Stone: that is horrible
[1/26/14 7:39:40 PM] James Stone: france is much better in that regard
[1/26/14 7:39:42 PM] William Hernebrink: Here in sweden i would pay like $14/day
[1/26/14 7:39:56 PM] James Stone: i paid cash 24 euro to see a doctor here
[1/26/14 7:39:56 PM] William Hernebrink: whatever happened to me
[1/26/14 7:40:06 PM] James Stone: in the us it is like $150 or more
[1/26/14 7:40:10 PM] James Stone: to do nothing
[1/26/14 7:40:18 PM] William Hernebrink: I think that's crazy
[1/26/14 7:40:29 PM] James Stone: health insurance costs $500 per month per person
[1/26/14 7:40:31 PM] James Stone: at least
[1/26/14 7:40:36 PM] James Stone: up to $1k as you get older
[1/26/14 7:40:37 PM] William Hernebrink: wow
[1/26/14 7:40:48 PM] James Stone: and, it might not cover everything
[1/26/14 7:40:55 PM] James Stone: they can be selective in what treatments you get
[1/26/14 7:40:58 PM] William Hernebrink: speechless
[1/26/14 7:41:08 PM] James Stone: yeah, healthcare in the us is a mess
[1/26/14 7:41:17 PM] James Stone: in grad school
[1/26/14 7:41:23 PM] James Stone: i went for a sleep study
[1/26/14 7:41:33 PM] James Stone: spent the night and they watched me with electrodes
[1/26/14 7:41:38 PM] James Stone: one lady, monitoring 8 people
[1/26/14 7:41:44 PM] James Stone: cost $6,000
[1/26/14 7:41:51 PM] James Stone: that is what they billed to the insurance
[1/26/14 7:41:54 PM] James Stone: met a doctor
[1/26/14 7:42:02 PM] James Stone: $300, spent 5 minutes with me
[1/26/14 7:42:11 PM] James Stone: said, lose 10 pounds
[1/26/14 7:42:42 PM] James Stone: this was all paid by the insurance, but everything is like 5 - 10x more expensive than everywhere else
[1/26/14 7:42:45 PM] James Stone: also for dentistry
[1/26/14 7:42:47 PM] James Stone: vision
[1/26/14 7:42:48 PM] James Stone: everything
[1/26/14 7:43:14 PM] William Hernebrink: Can't be easy for a hell of a lot of people in the U.S
[1/26/14 7:43:24 PM] James Stone: yeah
[1/26/14 7:43:25 PM] James Stone: i agree
[1/26/14 7:43:27 PM] William Hernebrink: You guys are solo many too
[1/26/14 7:43:31 PM] James Stone: and the new legislation
[1/26/14 7:43:32 PM] William Hernebrink: soo*
[1/26/14 7:43:44 PM] James Stone: it really just forces the poor to pay for very low quality insurance
[1/26/14 7:44:08 PM] James Stone: yep
[1/26/14 7:44:20 PM] James Stone: 374 million or so
[1/26/14 7:45:51 PM] William Hernebrink: It's such a big contrast, the American doctors to the Swedish ones. I mean, the Swedish doctors earn good money, but perhaps it's $150.000 a year before taxes, but in the US they get ridiculous sums of money, millions, right?
[1/26/14 7:46:22 PM] James Stone: its true
[1/26/14 7:46:33 PM] James Stone: the doctors in France say they get paid very little
[1/26/14 7:46:39 PM] James Stone: in comparison
[1/26/14 7:46:51 PM] William Hernebrink: you'll have to excuse me for typing slow. Formulating the words in my 'mind' (define mind...) takes time.
[1/26/14 7:46:56 PM] James Stone: sure no problem
[1/26/14 7:47:00 PM] James Stone: i am a pretty fast typer
[1/26/14 7:47:05 PM] William Hernebrink: I can tell :)
[1/26/14 7:47:28 PM] William Hernebrink: i checked out your homepage, liked it a lot!
[1/26/14 7:47:36 PM] William Hernebrink: Say that TED x talk too
[1/26/14 7:47:45 PM] James Stone: thanks
[1/26/14 7:48:05 PM] James Stone: i type dvorak so it is very fast for normal us english phrases
[1/26/14 7:48:30 PM] William Hernebrink: Got my attention, since am a masters student in Cognitive Science. Intelligence, and what that even is, have been discussed between me and my course fellows, quite a bit
[1/26/14 7:48:54 PM] William Hernebrink: I am*
[1/26/14 7:49:33 PM] William Hernebrink: So you got my attention right away, talking about plants and intelligence :)
[1/26/14 7:49:58 PM] William Hernebrink: Something that we also discussed in a theoretical course about cognitive science
[1/26/14 7:50:06 PM] James Stone: interesting
[1/26/14 7:50:09 PM] William Hernebrink: "Do plants have cognition"
[1/26/14 7:50:18 PM] James Stone: i think it is a very interesting question
[1/26/14 7:50:24 PM] William Hernebrink: indeed
[1/26/14 7:50:30 PM] James Stone: both from a scientific perspective as well as from a philosophical one
[1/26/14 7:50:45 PM] William Hernebrink: yeah i agree
[1/26/14 7:51:18 PM] James Stone: i was at penn state which was a huge agriculture school, also in the middle of a forest when I started to really investigate these ideas
[1/26/14 7:51:43 PM] James Stone: how is it going in your masters program?
[1/26/14 7:52:06 PM] James Stone: is it like france M1, M2 or is it a masters with a thesis project / paper?
[1/26/14 7:53:27 PM] William Hernebrink: It's two years, and i am on the first year now, second semester. The whole fourth semester will contain a thesis/project. So looking forward to that (even though i'm not sure yet what to do with it)
[1/26/14 7:53:47 PM] James Stone: ah
[1/26/14 7:53:54 PM] James Stone: that is very similar to the us
[1/26/14 7:54:15 PM] James Stone: i did a MFA, which is typically 3 years, but penn state pushed it into two
[1/26/14 7:54:36 PM] James Stone: there typically is not a phd in studio art, so it allows you to teach at the university level
[1/26/14 7:54:47 PM] James Stone: seen as a "professional" artist
[1/26/14 7:55:45 PM] James Stone: you should consider a phd in the US if you have an interest in living there
[1/26/14 7:55:54 PM] William Hernebrink: Right now we just started a big project course, almost as big as a bachelor thesis, where i will be studying knowledge visualization, and create a webpage, visualize knowledge. So thats really great! Get to get my hands dirty with coding! (And lear more about it, so that in the future could get a job as an front-end developer or interaction designer.
[1/26/14 7:56:16 PM] James Stone: oh nice
[1/26/14 7:56:26 PM] James Stone: so, I have also been very involved with the processing project
[1/26/14 7:56:33 PM] James Stone: processing.org
[1/26/14 7:56:34 PM] James Stone: for years
[1/26/14 7:56:42 PM] James Stone: do a lot of data viz type stuff
[1/26/14 7:56:59 PM] James Stone: read Tufte
[1/26/14 7:57:12 PM] James Stone: interactive / realtime 2d/3d
[1/26/14 7:57:21 PM] William Hernebrink: Starting to think it's not a coincidence i stumbled in on your youtube page...
[1/26/14 7:57:27 PM] James Stone: and I have moved into doing things in HTML5 with JavaScript
[1/26/14 7:57:40 PM] James Stone: since you can do everything in the browser to an extent
[1/26/14 7:57:49 PM] James Stone: likewise
[1/26/14 7:57:55 PM] James Stone: sounds very interesting
[1/26/14 7:58:02 PM] James Stone: happy to chat with you about your project
[1/26/14 7:58:12 PM] James Stone: do you know how to program?
[1/26/14 7:58:23 PM] William Hernebrink: Me too, very much.
[1/26/14 7:58:41 PM] James Stone: i taught intro to programming for designers and artists at penn state
[1/26/14 7:58:44 PM] James Stone: and physical computing
[1/26/14 7:59:03 PM] James Stone: which was mostly robotics with arduino, but some other things like xbox kinect
[1/26/14 7:59:04 PM] William Hernebrink: yeah, i know the basics (or more than that). I've created a few webpages, taken a few interaction-programming/database, PHP courses
[1/26/14 7:59:21 PM] James Stone: great
[1/26/14 7:59:22 PM] William Hernebrink: But i have a lot of wonderings about my next step
[1/26/14 7:59:25 PM] James Stone: ah
[1/26/14 7:59:26 PM] William Hernebrink: what to focus on
[1/26/14 7:59:33 PM] James Stone: what are your goals?
[1/26/14 8:01:23 PM] William Hernebrink: Basically, front-end developing. That would be awesome. To be a member in a (tight team), and creating! I would be pretty borded if i had to the same job every day. I like to play a lot of guitar, accordion and sing and stuff like that, so i would see myself as a creative-isch guy.
[1/26/14 8:02:10 PM] William Hernebrink: So when i graduate (1 1/2) year from now, i wish to have all the knowledge i need to have, so that i can get hired at a nice firm, doing fun and creative things.
[1/26/14 8:02:48 PM] William Hernebrink: But that knowledge-list, just keeps adding on, and i don't know where to start.
[1/26/14 8:03:34 PM] James Stone: ah
[1/26/14 8:03:46 PM] James Stone: great goal to have
[1/26/14 8:03:52 PM] James Stone: i am really focused on the front end right now
[1/26/14 8:04:08 PM] James Stone: i think, it is good to pick up enough of a backend to integrate with modern projects
[1/26/14 8:04:15 PM] James Stone: js, json, ajax, etc.
[1/26/14 8:04:22 PM] James Stone: i am using meteor
[1/26/14 8:04:22 PM] William Hernebrink: yeah, for sure
[1/26/14 8:04:31 PM] James Stone: i think this is great at the moment
[1/26/14 8:04:38 PM] James Stone: they are solving the scaling issues
[1/26/14 8:04:40 PM] James Stone: and it is young
[1/26/14 8:04:46 PM] James Stone: and you can build things very very fast
[1/26/14 8:04:48 PM] James Stone: in hours
[1/26/14 8:04:52 PM] James Stone: it is all javascript
[1/26/14 8:04:53 PM] William Hernebrink: got a link?
[1/26/14 8:04:57 PM] James Stone: or coffeescript if you prefer
[1/26/14 8:05:17 PM] William Hernebrink: https://www.meteor.com this one?
[1/26/14 8:05:20 PM] James Stone: https://www.meteor.com/
[1/26/14 8:05:21 PM] James Stone: yep
[1/26/14 8:05:22 PM] James Stone: so
[1/26/14 8:05:31 PM] James Stone: i also do work in rails / ruby
[1/26/14 8:05:34 PM] James Stone: but I am moving away from it
[1/26/14 8:05:40 PM] James Stone: ruby/rails is the java of 10 years ago
[1/26/14 8:05:56 PM] James Stone: i used to do java back end stuff mostly and move into .net asp
[1/26/14 8:06:02 PM] James Stone: here is the thing
[1/26/14 8:06:05 PM] James Stone: meteor
[1/26/14 8:06:07 PM] James Stone: sails.js
[1/26/14 8:06:09 PM] James Stone: anything like that
[1/26/14 8:06:16 PM] James Stone: all front end stuff is becoming similar
[1/26/14 8:06:19 PM] James Stone: it is all done client sied
[1/26/14 8:06:21 PM] James Stone: side
[1/26/14 8:06:26 PM] James Stone: single page apps will become the norm
[1/26/14 8:06:30 PM] James Stone: or things that act like they are
[1/26/14 8:06:35 PM] James Stone: async loading of json data
[1/26/14 8:06:44 PM] James Stone: other options are parse, firebase, etc.
[1/26/14 8:06:56 PM] James Stone: i suggest meteor because you have more control and more control of the cost
[1/26/14 8:07:11 PM] William Hernebrink: I will certainly check that out then.
[1/26/14 8:07:18 PM] James Stone: so, just learn enough of it to build out your app
[1/26/14 8:07:20 PM] James Stone: store the data
[1/26/14 8:07:24 PM] James Stone: that type of stuff
[1/26/14 8:07:35 PM] James Stone: then you can do all the front end stuff and focus there
[1/26/14 8:07:41 PM] James Stone: without having to rely on anyone else
[1/26/14 8:07:50 PM] James Stone: learning a templating system, handlebars
[1/26/14 8:07:53 PM] James Stone: that is similar to erb
[1/26/14 8:07:55 PM] James Stone: or php
[1/26/14 8:07:58 PM] James Stone: or whatever
[1/26/14 8:08:06 PM] James Stone: and become strong in JS
[1/26/14 8:08:11 PM] William Hernebrink: But what about all of this libraries, which do you need and which should one use? It's like a jungle out there:
Backbone.js
Node.js
Express.js
Underscore.js
[1/26/14 8:08:15 PM] William Hernebrink: and so on..
[1/26/14 8:08:21 PM] James Stone: and start with a front end framework, and build out your knowledge
[1/26/14 8:08:25 PM] James Stone: into CSS/3
[1/26/14 8:08:38 PM] James Stone: you only need to install node.js and npm
[1/26/14 8:08:41 PM] James Stone: node package manager
[1/26/14 8:08:47 PM] James Stone: then npm install meteor
[1/26/14 8:08:48 PM] James Stone: so
[1/26/14 8:08:57 PM] James Stone: meteor is like a abstraction on node / mongodb
[1/26/14 8:09:09 PM] James Stone: it is better because it is starting from scratch
[1/26/14 8:09:13 PM] James Stone: it is very simple to use
[1/26/14 8:09:27 PM] William Hernebrink: Perhaps you will do a tutorial series on that then ;)
[1/26/14 8:09:35 PM] James Stone: on this project
[1/26/14 8:09:35 PM] James Stone: https://upmentor-staging.meteor.com/
[1/26/14 8:09:42 PM] James Stone: it is about 2 billable hours
[1/26/14 8:09:57 PM] James Stone: no more that 8 hours total, including reading a book, figuring out how to do things in meteor
[1/26/14 8:10:11 PM] James Stone: i mean, I am an experienced programmer
[1/26/14 8:10:22 PM] James Stone: but, i would think it would be much faster than other things
[1/26/14 8:10:27 PM] James Stone: besides
[1/26/14 8:10:37 PM] James Stone: you don't want to focus on back end unless you enjoy it
[1/26/14 8:10:57 PM] James Stone: front end also includes design, interactivity, ux, ui, etc.
[1/26/14 8:11:24 PM] James Stone: so
[1/26/14 8:11:33 PM] James Stone: seems counter intuitive right, learn the back end first
[1/26/14 8:11:43 PM] James Stone: but learn something like meteor that is low investment and modern
[1/26/14 8:11:45 PM] James Stone: easy to deploy
[1/26/14 8:11:56 PM] James Stone: then use that to build up something interactive with data
[1/26/14 8:12:09 PM] James Stone: then you can put all the front end tech to work in a way that will resemble a modern web app
[1/26/14 8:12:29 PM] James Stone: otherwise, there is cakephp
[1/26/14 8:12:34 PM] James Stone: things that make it faster to learn
[1/26/14 8:12:49 PM] James Stone: but, you need something that will give you a restful json based api
[1/26/14 8:12:54 PM] James Stone: that is the future
[1/26/14 8:13:04 PM] James Stone: socket.io is a bonus with meteor
[1/26/14 8:13:16 PM] James Stone: you get baked in reactivity on the data
[1/26/14 8:13:25 PM] William Hernebrink: I would like to have knowledge about the back end too. Mostly retrieving data from databases and suff like that. I know PHP somewhat, but people keeps trashing it on the internet. But the fact is that most jobs are require PHP (at least here in sweden). They don't just want someone with Javascript, HTML5 and CSS3 knowledge. They want a magical-unicorn, knowing how to do the back end, the front end and also creating the design implemented!
[1/26/14 8:13:29 PM] James Stone: that means, one person updates, it pushes out to everyone else and updates real time
[1/26/14 8:13:46 PM] James Stone: ah
[1/26/14 8:13:48 PM] James Stone: so, learn php
[1/26/14 8:13:50 PM] William Hernebrink: Thats why i have taken: www.magical-unicorn.com as my domain ;)
[1/26/14 8:13:54 PM] James Stone: but use meteor to do some fun stuff
[1/26/14 8:14:00 PM] James Stone: nice
[1/26/14 8:14:08 PM] James Stone: see here is the thing
[1/26/14 8:14:12 PM] James Stone: you can't guess the market
[1/26/14 8:14:12 PM] William Hernebrink: And do my portfolio there, when i have done my projects
[1/26/14 8:14:20 PM] James Stone: especially when you are in school
[1/26/14 8:14:25 PM] James Stone: it is hard to look from the outsied
[1/26/14 8:14:33 PM] James Stone: in SF, it is all ruby/rails
[1/26/14 8:14:34 PM] James Stone: some python
[1/26/14 8:14:38 PM] James Stone: those are hot
[1/26/14 8:14:41 PM] James Stone: it depends
[1/26/14 8:14:48 PM] James Stone: in your area it might be different
[1/26/14 8:14:50 PM] William Hernebrink: Yeah, more and more of that in Sweden too now
[1/26/14 8:14:52 PM] James Stone: in france it is all php
[1/26/14 8:15:08 PM] James Stone: but remember, I am from the silicon valley so this stuff I am talking about is all bleeding edge
[1/26/14 8:15:26 PM] James Stone: the thing is
[1/26/14 8:15:28 PM] James Stone: with programming
[1/26/14 8:15:35 PM] James Stone: a lot of the knowledge is tranferable
[1/26/14 8:15:40 PM] James Stone: like a conditional is a conditional
[1/26/14 8:15:44 PM] James Stone: the syntax can vary
[1/26/14 8:15:56 PM] James Stone: then, there is specifics to the api that you need to know
[1/26/14 8:15:59 PM] James Stone: so
[1/26/14 8:16:05 PM] James Stone: if you get to know js very well
[1/26/14 8:16:18 PM] James Stone: it is functional also has OOP but not really
[1/26/14 8:16:38 PM] James Stone: if you use coffeescript it abstracts it to look much more like standard OOP used by php and java
[1/26/14 8:16:43 PM] James Stone: but
[1/26/14 8:16:44 PM] James Stone: x
[1/26/14 8:16:47 PM] James Stone: x += 1
[1/26/14 8:16:50 PM] James Stone: x = x + 1
[1/26/14 8:16:54 PM] James Stone: x++
[1/26/14 8:17:00 PM] James Stone: they will all be the same
[1/26/14 8:17:11 PM] James Stone: i mean
[1/26/14 8:17:16 PM] William Hernebrink: I guess
[1/26/14 8:17:20 PM] James Stone: if your interests is with databases and php great
[1/26/14 8:17:25 PM] James Stone: but how do you demonstrate that
[1/26/14 8:17:32 PM] James Stone: maybe code samples
[1/26/14 8:17:39 PM] James Stone: maybe a db schema
[1/26/14 8:18:06 PM] James Stone: the new way of doing things is agile, using mvc to abstract the db so you don't have to write sql, and doing db migrations
[1/26/14 8:18:15 PM] James Stone: cakephp does this in php if you have used it
[1/26/14 8:18:44 PM] James Stone: i think if you make some killer things and know php you will be in a good position
[1/26/14 8:18:48 PM] William Hernebrink: i've heard of it but never used.
[1/26/14 8:18:50 PM] James Stone: at least in the US
[1/26/14 8:18:56 PM] James Stone: they want to see demonstratable projects
[1/26/14 8:19:08 PM] James Stone: in the tech stack or something similar that they are using
[1/26/14 8:19:44 PM] James Stone: so
[1/26/14 8:19:51 PM] James Stone: you could also start with something like meteor
[1/26/14 8:19:52 PM] James Stone: or rails
[1/26/14 8:19:59 PM] James Stone: learn to build things fast
[1/26/14 8:20:05 PM] James Stone: understand the underlying structure
[1/26/14 8:20:12 PM] James Stone: then come back to php and rewrite the back end
[1/26/14 8:20:21 PM] James Stone: so, prototypes that I create in meteor
[1/26/14 8:20:41 PM] James Stone: if I really need to do something that requires another language or needs to scale
[1/26/14 8:20:53 PM] James Stone: i will rewrite the backend in ruby/rails
[1/26/14 8:21:15 PM] James Stone: the cost of hosting is so cheap in the us, it doesn't really help to rewrite to something like php
[1/26/14 8:21:21 PM] James Stone: even though it is much more effecient
[1/26/14 8:21:38 PM] James Stone: because you can just duplicate your app servers on the fly and pay hourly
[1/26/14 8:22:02 PM] James Stone: i know that is a bit of a rant
[1/26/14 8:23:37 PM] William Hernebrink: I will start with meteor. that link that you send, it's not possible to sing up without a code tho ?
[1/26/14 8:23:51 PM] William Hernebrink: "Signup code"
[1/26/14 8:23:52 PM] James Stone: well
[1/26/14 8:24:09 PM] James Stone: if I remember right you needed some help installing foundation5 right?
[1/26/14 8:24:15 PM] James Stone: ruby/node?
[1/26/14 8:24:18 PM] William Hernebrink: yeah
[1/26/14 8:24:21 PM] James Stone: so
[1/26/14 8:24:33 PM] William Hernebrink: I think i have node.js installed
[1/26/14 8:24:36 PM] James Stone: oh
[1/26/14 8:24:38 PM] James Stone: well that is good
[1/26/14 8:24:41 PM] James Stone: do you have npm?
[1/26/14 8:24:43 PM] William Hernebrink: and i read that all new macs already comes with ruby?
[1/26/14 8:24:49 PM] James Stone: yes
[1/26/14 8:24:51 PM] James Stone: ruby 1.9
[1/26/14 8:24:56 PM] James Stone: but there is a better way to install it
[1/26/14 8:25:08 PM] James Stone: and you will probally want to install ruby 2, for speed
[1/26/14 8:25:18 PM] James Stone: + gem, bundler, etc.
[1/26/14 8:25:41 PM] James Stone: also git
[1/26/14 8:25:42 PM] William Hernebrink: most definitely
[1/26/14 8:26:00 PM] William Hernebrink: I want: "The set ut of a pro"
[1/26/14 8:26:06 PM] James Stone: nice
[1/26/14 8:26:20 PM] James Stone: do you have xcode installed?
[1/26/14 8:26:43 PM] William Hernebrink: Yes, actually taking a course on developing iOS applications this semester too ^^
[1/26/14 8:26:43 PM] James Stone: i assume you are on a mac? which version? lion?
[1/26/14 8:26:53 PM] William Hernebrink: maverick
[1/26/14 8:26:59 PM] James Stone: you can install xcode through the app store
[1/26/14 8:27:08 PM] James Stone: then in xcode you need to install the command line tools
[1/26/14 8:27:11 PM] James Stone: i think it is under help
[1/26/14 8:27:43 PM] James Stone: if you take screen shots, we can use them to put up a video later
[1/26/14 8:27:55 PM] James Stone: command shift 3
[1/26/14 8:29:08 PM] William Hernebrink: yeah sure, i will try
[1/26/14 8:29:12 PM] William Hernebrink: can't find it under help tho
[1/26/14 8:29:15 PM] James Stone: i might be away from the computer from time to time but I will talk you though it
[1/26/14 8:29:20 PM] James Stone: so you have xcode installed?
[1/26/14 8:29:24 PM] William Hernebrink: yes
[1/26/14 8:30:13 PM] James Stone: okay
[1/26/14 8:30:20 PM] James Stone: maverics is different you will need terminal
[1/26/14 8:30:21 PM] James Stone: http://www.computersnyou.com/2025/2013/06/install-command-line-tools-in-osx-10-9-mavericks-how-to/
[1/26/14 8:30:42 PM] William Hernebrink: oh ok
[1/26/14 8:32:14 PM] James Stone: did you install node with homebrew?
[1/26/14 8:32:36 PM] William Hernebrink: that i'm not sure of, don't even know what 'homebrew' is?
[1/26/14 8:33:00 PM] William Hernebrink: I will follow that guide now?
[1/26/14 8:33:07 PM] James Stone: can you open another terminal window
[1/26/14 8:33:09 PM] James Stone: type in
[1/26/14 8:33:10 PM] James Stone: node --version
[1/26/14 8:33:22 PM] William Hernebrink: v0.10.23
[1/26/14 8:33:28 PM] James Stone: can you type
[1/26/14 8:33:29 PM] James Stone: which node
[1/26/14 8:33:38 PM] William Hernebrink: i only get: v0.10.23
[1/26/14 8:33:46 PM] James Stone: oh
[1/26/14 8:33:51 PM] James Stone: no type exactly
[1/26/14 8:33:53 PM] James Stone: which node
[1/26/14 8:34:01 PM] William Hernebrink: /usr/local/bin/node
[1/26/14 8:34:06 PM] James Stone: which is a unix program that will tell you where it is installed
[1/26/14 8:34:17 PM] James Stone: brew --version
[1/26/14 8:34:28 PM] William Hernebrink: command not found
[1/26/14 8:35:12 PM] James Stone: port --version
[1/26/14 8:35:34 PM] William Hernebrink: command not found
[1/26/14 8:36:00 PM] James Stone: do you think it is likely that you installed it from the mac installer?
[1/26/14 8:36:00 PM] James Stone: http://nodejs.org/download/
[1/26/14 8:36:17 PM] James Stone: maybe download the installer and try and remove it
[1/26/14 8:36:21 PM] James Stone: uninstall it
[1/26/14 8:36:26 PM] William Hernebrink: yeah, that could have been the case
[1/26/14 8:36:29 PM] William Hernebrink: i will try
[1/26/14 8:36:44 PM] James Stone: then, if that works
[1/26/14 8:36:48 PM] James Stone: run through that tutorial
[1/26/14 8:36:56 PM] James Stone: to install the command line tools
[1/26/14 8:37:01 PM] James Stone: then homebrew
[1/26/14 8:37:33 PM] James Stone: http://brew.sh/
[1/26/14 8:37:40 PM] James Stone: install it with the ruby command
[1/26/14 8:37:46 PM] James Stone: then
[1/26/14 8:37:51 PM] James Stone: brew update
[1/26/14 8:37:55 PM] James Stone: brew install node
[1/26/14 8:38:40 PM] William Hernebrink: Ok, will do my best. Could take a few min
[1/26/14 8:38:43 PM] James Stone: here is a guide
[1/26/14 8:38:43 PM] James Stone: http://thechangelog.com/install-node-js-with-homebrew-on-os-x/
[1/26/14 8:38:46 PM] James Stone: maybe run that
[1/26/14 8:38:48 PM] James Stone: brew doctor
[1/26/14 8:38:53 PM] James Stone: before the install
[1/26/14 8:40:35 PM] James Stone: then after
[1/26/14 8:40:37 PM] James Stone: brew update
[1/26/14 8:40:41 PM] James Stone: brew install git
[1/26/14 8:41:22 PM] James Stone: then rbenv
[1/26/14 8:41:23 PM] James Stone: http://octopress.org/docs/setup/rbenv/
[1/26/14 8:41:29 PM] James Stone: Alternate Installation Using Homebrew

If you use Homebrew on Mac OS X you may prefer to install rbenv like this:

brew update
brew install rbenv
brew install ruby-build
Install Ruby 1.9.3

Next install Ruby 1.9.3 and you'll be all set.

rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
[1/26/14 8:41:45 PM] James Stone: so, ping me back with questions
[1/26/14 8:41:48 PM] James Stone: or if you get stuck
[1/26/14 8:41:59 PM] William Hernebrink: Sure will!
[1/26/14 8:42:00 PM] William Hernebrink: Thanks
[1/26/14 8:42:05 PM] James Stone: we can always use screenhero or join.me to screenshare and I will walk you through it
[1/26/14 8:42:06 PM] James Stone: np
[1/26/14 8:42:24 PM] William Hernebrink: Awesome
[1/26/14 8:43:24 PM] James Stone: if you get a weird error or something ping me back too
[1/26/14 8:43:39 PM] James Stone: i am using an older machine on lion, but a lot of it should be the same
[1/26/14 8:43:46 PM] James Stone: with the exception of the command line tools in xcode
[1/26/14 8:44:02 PM] James Stone: that is needed for the libsass that foundation needs
[1/26/14 8:44:23 PM] William Hernebrink: I couldn't remove node wit the installer (couldn't find an uninstaller)
[1/26/14 8:44:28 PM] William Hernebrink: looking into this now
[1/26/14 8:44:30 PM] William Hernebrink: http://stackoverflow.com/questions/11177954/how-do-i-completely-uninstall-node-js-and-reinstall-from-beginning-mac-os-x
[1/26/14 8:44:46 PM] William Hernebrink: do you know how i can get to a folder i'm viewing in the terminal?
[1/26/14 8:45:07 PM] William Hernebrink: like if i have navigated to a folder in the terminal, and i wanted to open in in finder?
[1/26/14 8:45:15 PM] William Hernebrink: with a short command?
[1/26/14 8:45:40 PM] James Stone: maybe skip the node bit
[1/26/14 8:45:42 PM] James Stone: so
[1/26/14 8:45:46 PM] James Stone: still install homebrew
[1/26/14 8:46:02 PM] James Stone: skip node uninstall / install but install the command line tools
[1/26/14 8:46:08 PM] James Stone: we will still use it for ruby
[1/26/14 8:46:13 PM] William Hernebrink: ok!
[1/26/14 8:46:16 PM] James Stone: we don't want to hose your node installation
[1/26/14 8:46:30 PM] James Stone: lets make sure that is working and look for a better answer
[1/26/14 8:47:04 PM] William Hernebrink: So i should not follow this then http://thechangelog.com/install-node-js-with-homebrew-on-os-x/
[1/26/14 8:47:53 PM] James Stone: yes
[1/26/14 8:47:58 PM] William Hernebrink: oh, but in there was instructions for installing brew, soi i'll do that
[1/26/14 8:48:02 PM] James Stone: skip that an my instructions to install with homebrew
[1/26/14 8:48:07 PM] James Stone: but install homebrew
[1/26/14 8:48:17 PM] William Hernebrink: great
[1/26/14 8:48:17 PM] James Stone: and we will use it to install rbenv and ruby
[1/26/14 8:48:28 PM] James Stone: we will see if everything works
[1/26/14 8:48:29 PM] James Stone: then
[1/26/14 8:48:39 PM] James Stone: maybe later at some point we can remove that node installation
[1/26/14 8:49:03 PM] James Stone: because, if you make a mistake doing things like rm -f you can delete huge sections of your drive or apps
[1/26/14 8:49:19 PM] James Stone: this seems to be a better answer but I would hold off
[1/26/14 8:49:20 PM] James Stone: http://stackoverflow.com/questions/9044788/how-do-i-uninstall-nodejs-installed-from-pkg-mac-os-x
[1/26/14 8:49:58 PM] James Stone: the only disadvantage is that with brew
[1/26/14 8:50:04 PM] James Stone: you can just run brew update node
[1/26/14 8:50:13 PM] James Stone: and get the lastest version available in homebrew
[1/26/14 8:50:29 PM] James Stone: not an issue now, but could be later as things require later versions
[1/26/14 8:51:26 PM] James Stone: i don't use node extensively except for meteor so I can't tell you if using nvm is worth the time to install
[1/26/14 8:51:38 PM] James Stone: rbenv and rvm manage different versions of ruby on the same machine
[1/26/14 8:51:46 PM] James Stone: so I assume nvm does the same for node
[1/26/14 8:51:54 PM] James Stone: ruby version manager
[1/26/14 8:51:59 PM] James Stone: ruby environment
[1/26/14 8:52:05 PM] James Stone: rbenv is the better one to use
[1/26/14 8:52:21 PM] James Stone: rvm hosed my entire dev machine one time, so I stick to rbenv
[1/26/14 8:52:46 PM] William Hernebrink: well that gotta have sucked!
[1/26/14 8:53:00 PM] William Hernebrink: "Downloading and installing Homebrew..."
[1/26/14 8:54:45 PM] James Stone: oh yeah
[1/26/14 8:54:49 PM] James Stone: like 1 -2 days lost
[1/26/14 8:55:42 PM] William Hernebrink: got some Warnings using brew doctor:

Warning: Broken symlinks were found. Remove them with `brew prune`:
  /usr/local/bin/twfind
  /usr/local/bin/twdiff
  /usr/local/bin/mate
  /usr/local/bin/edit
  /usr/local/share/man/man1/twfind.1
  /usr/local/share/man/man1/twdiff.1
  /usr/local/share/man/man1/edit.1

Warning: You have leftover files from an older version of Xcode.
You should delete them using:
  /Developer/Library/uninstall-developer-folder

Warning: /usr/bin occurs before /usr/local/bin
This means that system-provided programs will be used instead of those
provided by Homebrew. The following tools exist at both paths:

    2to3

Consider setting your PATH so that /usr/local/bin
occurs before /usr/bin. Here is a one-liner:
    echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile
[1/26/14 8:55:55 PM] William Hernebrink: should i look into this first?
[1/26/14 8:56:21 PM] James Stone: you can run brew prune if you want
[1/26/14 8:56:31 PM] James Stone: i wouldn't worry about the rest
[1/26/14 8:56:40 PM] James Stone: we will come to that if it is an issue
[1/26/14 8:57:34 PM] William Hernebrink: should i add the Homebrew location to my $PATH?
[1/26/14 8:57:40 PM] James Stone: no
[1/26/14 8:57:44 PM] William Hernebrink: ok
[1/26/14 8:57:51 PM] William Hernebrink: btw, what is my $PATH?
[1/26/14 8:57:52 PM] James Stone: it is just complaining
[1/26/14 8:58:03 PM] James Stone: in unix shells
[1/26/14 8:58:08 PM] James Stone: you are using a bash shell
[1/26/14 8:58:17 PM] James Stone: there is an environment variable
[1/26/14 8:58:22 PM] James Stone: all sorts of stuff
[1/26/14 8:58:26 PM] James Stone: $PATH is a special one
[1/26/14 8:58:35 PM] James Stone: it defines where it looks for everything
[1/26/14 8:58:46 PM] James Stone: type
[1/26/14 8:58:46 PM] William Hernebrink: oh ok
[1/26/14 8:58:51 PM] James Stone: echo $PATH
[1/26/14 8:59:08 PM] William Hernebrink: /usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
[1/26/14 8:59:10 PM] James Stone: mine is like this
[1/26/14 8:59:11 PM] James Stone: /usr/local/heroku/bin:/Users/james/.rbenv/shims:/Users/james/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/Users/james/bin:/Users/james/SkyDrive/scripts
[1/26/14 8:59:12 PM] James Stone: so
[1/26/14 8:59:14 PM] William Hernebrink: weird path in my eyes :)
[1/26/14 8:59:16 PM] James Stone: when you type brew
[1/26/14 8:59:23 PM] James Stone: or whatever
[1/26/14 8:59:28 PM] James Stone: it looks all of those places in order
[1/26/14 8:59:36 PM] William Hernebrink: i see
[1/26/14 8:59:37 PM] James Stone: so
[1/26/14 8:59:39 PM] William Hernebrink: git installed now
[1/26/14 8:59:42 PM] William Hernebrink: too
[1/26/14 8:59:42 PM] James Stone: /usr/bin
[1/26/14 8:59:45 PM] James Stone: then ...
[1/26/14 8:59:49 PM] James Stone: good
[1/26/14 8:59:59 PM] James Stone: go for that ruby rbenv guide with homebrew
[1/26/14 9:00:27 PM] William Hernebrink: will do!
[1/26/14 9:00:34 PM] James Stone: brew update
brew install rbenv
brew install ruby-build
[1/26/14 9:00:44 PM] James Stone: then
[1/26/14 9:00:44 PM] James Stone: rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
[1/26/14 9:01:09 PM] James Stone: then same thing but replace 1.93-p0
[1/26/14 9:01:10 PM] James Stone: with
[1/26/14 9:01:11 PM] James Stone: 2.0.0-p247
[1/26/14 9:02:17 PM] James Stone: also
[1/26/14 9:02:17 PM] William Hernebrink: rbenv install 1.9.3-p0
Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1

ERROR: This package must be compiled with GCC, but ruby-build couldn't
find a suitable `gcc` executable on your system. Please install GCC
and try again.

DETAILS: Apple no longer includes the official GCC compiler with Xcode
as of version 4.2. Instead, the `gcc` executable is a symlink to
`llvm-gcc`, a modified version of GCC which outputs LLVM bytecode.

For most programs the `llvm-gcc` compiler works fine. However,
versions of Ruby older than 1.9.3-p125 are incompatible with
`llvm-gcc`. To build older versions of Ruby you must have the official
GCC compiler installed on your system.

TO FIX THE PROBLEM: Install Homebrew's apple-gcc42 package with this
command: brew tap homebrew/dupes ; brew install apple-gcc42

You will need to install the official GCC compiler to build older
versions of Ruby even if you have installed Apple's Command Line Tools
for Xcode package. The Command Line Tools for Xcode package only
includes `llvm-gcc`.

BUILD FAILED
[1/26/14 9:02:18 PM] James Stone: brew install rbenv-gem-rehash
[1/26/14 9:02:40 PM] James Stone: brew tap homebrew/dupes ; brew install apple-gcc42
[1/26/14 9:02:48 PM] James Stone: go for that one -> brew tap homebrew/dupes ; brew install apple-gcc42
[1/26/14 9:03:00 PM] William Hernebrink: exactly like this: v
[1/26/14 9:03:02 PM] William Hernebrink: brew tap homebrew/dupes ; brew install apple-gcc42
[1/26/14 9:03:12 PM] William Hernebrink: "both"? at the same time
[1/26/14 9:03:27 PM] James Stone: the ; just runs one after the other
[1/26/14 9:03:37 PM] William Hernebrink: Good to know
[1/26/14 9:03:49 PM] James Stone: i would just run it as it is written
[1/26/14 9:03:57 PM] James Stone: you can also do
[1/26/14 9:04:10 PM] James Stone: one command && two command && three command
[1/26/14 9:04:14 PM] James Stone: they will run in sequence
[1/26/14 9:04:18 PM] William Hernebrink: oh okey
[1/26/14 9:04:21 PM] James Stone: but if you get an error they will all stop
[1/26/14 9:04:26 PM] James Stone: if you do
[1/26/14 9:04:28 PM] James Stone: command &
[1/26/14 9:04:33 PM] James Stone: it runs in the background
[1/26/14 9:04:35 PM] James Stone: so don't do that
[1/26/14 9:04:45 PM] James Stone: then you have to run ps
[1/26/14 9:04:46 PM] William Hernebrink: thanks
[1/26/14 9:04:48 PM] James Stone: then get the pid
[1/26/14 9:04:53 PM] James Stone: then run kill with the correct id
[1/26/14 9:04:55 PM] James Stone: no fun
[1/26/14 9:05:16 PM] James Stone: once you get this set up
[1/26/14 9:05:26 PM] James Stone: you will mostly just navigate around to differrent folders
[1/26/14 9:05:31 PM] James Stone: and run commands like
[1/26/14 9:05:36 PM] James Stone: foundation new project
[1/26/14 9:05:40 PM] James Stone: so, this is the hard part
[1/26/14 9:06:05 PM] William Hernebrink: wouldn't have done it without your guidance (Y)
[1/26/14 9:06:11 PM] William Hernebrink: thanks a lot
[1/26/14 9:06:17 PM] William Hernebrink: for doing this for me
[1/26/14 9:06:25 PM] James Stone: you can see how this was a little beyond a youtube comment ;)
[1/26/14 9:06:29 PM] James Stone: np
[1/26/14 9:06:31 PM] James Stone: happy to help
[1/26/14 9:06:40 PM] William Hernebrink: hehe, yeah i get that
[1/26/14 9:06:58 PM] James Stone: after those installs
[1/26/14 9:06:59 PM] James Stone: run
[1/26/14 9:06:59 PM] James Stone: gem update --system
[1/26/14 9:07:10 PM] James Stone: gem install bundler foreman pg rails thin --no-rdoc --no-ri
[1/26/14 9:07:18 PM] James Stone: http://robots.thoughtbot.com/using-rbenv-to-manage-rubies-and-gems
[1/26/14 9:07:34 PM] James Stone: so
[1/26/14 9:07:37 PM] James Stone: if no more errors
[1/26/14 9:07:45 PM] James Stone: type
[1/26/14 9:07:50 PM] James Stone: rbenv rehash
[1/26/14 9:07:51 PM] James Stone: then
[1/26/14 9:07:58 PM] James Stone: gem install foundation
[1/26/14 9:08:00 PM] James Stone: then
[1/26/14 9:08:04 PM] James Stone: rbenv rehash
[1/26/14 9:08:10 PM] James Stone: everytime you install or change a gem
[1/26/14 9:08:16 PM] James Stone: you have to type rbenv rehash
[1/26/14 9:08:22 PM] James Stone: so, you will want to remember it
[1/26/14 9:08:35 PM] William Hernebrink: i'm not very familiar with what a `gem` is..
[1/26/14 9:08:37 PM] James Stone: that should be it
[1/26/14 9:08:43 PM] James Stone: a gem is a package
[1/26/14 9:08:44 PM] James Stone: so
[1/26/14 9:08:56 PM] James Stone: a package manager is like home brew
[1/26/14 9:08:58 PM] James Stone: apt-get
[1/26/14 9:09:00 PM] James Stone: npm
[1/26/14 9:09:06 PM] James Stone: they will install say foundation
[1/26/14 9:09:11 PM] James Stone: but see that it has dependancies
[1/26/14 9:09:16 PM] James Stone: such as sass
[1/26/14 9:09:20 PM] James Stone: and compass
[1/26/14 9:09:37 PM] James Stone: and it will go through everything and make sure every thing needed for it to run is installed
[1/26/14 9:09:42 PM] James Stone: so when you run gem install foundation
[1/26/14 9:09:48 PM] James Stone: it might install 50 things
[1/26/14 9:10:02 PM] James Stone: so when you see npm install meteor
[1/26/14 9:10:04 PM] James Stone: same thing
[1/26/14 9:10:06 PM] James Stone: just node
[1/26/14 9:10:12 PM] James Stone: brew
[1/26/14 9:10:18 PM] James Stone: same thing, ported apps for macosx
[1/26/14 9:10:24 PM] James Stone: and all of them can update everything
[1/26/14 9:10:27 PM] James Stone: gem update foundation
[1/26/14 9:10:29 PM] James Stone: gem update
[1/26/14 9:10:31 PM] James Stone: updates everything
[1/26/14 9:10:40 PM] James Stone: you can install a specific version if you want
[1/26/14 9:10:42 PM] James Stone: etc.
[1/26/14 9:10:45 PM] James Stone: otherwise
[1/26/14 9:10:57 PM] James Stone: back in the day you would compile the source for everything in order
[1/26/14 9:11:03 PM] James Stone: it was a real paid
[1/26/14 9:11:04 PM] James Stone: pain
[1/26/14 9:11:42 PM] James Stone: brb
[1/26/14 9:11:50 PM] William Hernebrink: ok!
[1/26/14 9:12:04 PM] William Hernebrink: It will be all fun when i master all of this :)
[1/26/14 9:18:55 PM] James Stone: back
[1/26/14 9:18:59 PM] James Stone: so how did it go?
[1/26/14 9:19:02 PM] James Stone: still installing?
[1/26/14 9:19:30 PM] William Hernebrink: It's looking good. Am at this one: gem install bundler foreman pg rails thin --no-rdoc --no-ri
[1/26/14 9:19:37 PM] James Stone: cool
[1/26/14 9:19:37 PM] William Hernebrink: had to use sudo before that
[1/26/14 9:19:42 PM] James Stone: oh yeah
[1/26/14 9:19:49 PM] James Stone: same with the other gem install commands
[1/26/14 9:20:02 PM] James Stone: after the foundation install and the rehash
[1/26/14 9:20:08 PM] James Stone: go to your home directory
[1/26/14 9:20:11 PM] James Stone: cd ~
[1/26/14 9:20:15 PM] James Stone: ~ means home
[1/26/14 9:20:20 PM] James Stone: create a new directory
[1/26/14 9:20:25 PM] James Stone: mkdir temp
[1/26/14 9:20:26 PM] James Stone: cd temp
[1/26/14 9:20:33 PM] James Stone: then create a project
[1/26/14 9:20:43 PM] James Stone: foundation new first_project
[1/26/14 9:20:54 PM] James Stone: ping me back once you get there or if you have any issues
[1/26/14 9:21:00 PM] William Hernebrink: Sure!
[1/26/14 9:21:15 PM] William Hernebrink: got this now tho: rake's executable "rake" conflicts with /usr/bin/rake
Overwrite the executable? [yN]
[1/26/14 9:21:45 PM] William Hernebrink: yes or no?
[1/26/14 9:22:00 PM] William Hernebrink: Fetching: rake-10.1.1.gem (100%)
rake's executable "rake" conflicts with /usr/bin/rake
Overwrite the executable? [yN]
[1/26/14 9:25:44 PM] James Stone: oh yeah
[1/26/14 9:25:45 PM] James Stone: Y
[1/26/14 9:25:48 PM] James Stone: overwrite that
[1/26/14 9:26:00 PM] James Stone: capital Y to say yes to everything
[1/26/14 9:26:30 PM] James Stone: see
[1/26/14 9:26:47 PM] James Stone: it is installing rails and rake because it is a dependency of the foundation gem
[1/26/14 9:26:53 PM] James Stone: even if you don't use it
[1/26/14 9:28:16 PM] James Stone: if you want after this we can install meteor
[1/26/14 9:29:08 PM] James Stone: so who are some of your favorite interaction designers or people in your field?
[1/26/14 9:29:16 PM] William Hernebrink: Williams-iMac:temp_1 hernebrink$ foundation new first_project
Can't find bower. You can install it by running: sudo npm install -g bower
[1/26/14 9:29:21 PM] James Stone: yep
[1/26/14 9:29:22 PM] James Stone: do that
[1/26/14 9:29:38 PM] James Stone: bower is a package manager for front end tech
[1/26/14 9:29:40 PM] James Stone: built with node
[1/26/14 9:29:50 PM] William Hernebrink: cool
[1/26/14 9:29:54 PM] James Stone: so, javascript and css libraries
[1/26/14 9:30:00 PM] James Stone: then you can just run bower update
[1/26/14 9:30:22 PM] James Stone: so the foundation cli (command line app) abstracts most of that
[1/26/14 9:30:36 PM] James Stone: but it uses bower to maintain and update the js libs and scss
[1/26/14 9:30:56 PM] James Stone: and grunt to integrate with libsass if you go that route for faster compiles
[1/26/14 9:31:12 PM] James Stone: so after you install bower
[1/26/14 9:31:15 PM] James Stone: just hit the up arrow
[1/26/14 9:31:21 PM] James Stone: it will cycle through your previous commands
[1/26/14 9:31:28 PM] James Stone: run the foundation command again and look for errors
[1/26/14 9:31:33 PM] William Hernebrink: Williams-iMac:temp_1 hernebrink$ foundation new first_project
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /Library/Ruby/Gems/2.0.0 directory.
Can't find compass. You can install it by running: gem install compass
[1/26/14 9:31:40 PM] James Stone: yep
[1/26/14 9:31:41 PM] James Stone: do that
[1/26/14 9:31:47 PM] James Stone: then run rbenv rehash
[1/26/14 9:32:00 PM] William Hernebrink: what would happen if i forgot to do that?
[1/26/14 9:32:04 PM] James Stone: maybe sudo gem install compass
[1/26/14 9:32:21 PM] James Stone: it won't work as intended
[1/26/14 9:32:31 PM] James Stone: so scss is like a markup language
[1/26/14 9:32:35 PM] James Stone: compass has additional commands
[1/26/14 9:32:43 PM] James Stone: @import is the most important
[1/26/14 9:32:45 PM] William Hernebrink: so every time i install anything with gem, i should make that rehash?
[1/26/14 9:32:57 PM] James Stone: which foundation uses to keep its sass in different files
[1/26/14 9:33:01 PM] James Stone: yep
[1/26/14 9:33:03 PM] James Stone: exactly
[1/26/14 9:33:22 PM] James Stone: so there is a bunch of cool cli apps you can install with it
[1/26/14 9:33:27 PM] James Stone: image_optim is one
[1/26/14 9:33:36 PM] James Stone: squashes images to small sizes
[1/26/14 9:33:57 PM] James Stone: anything that calls itself a gem
[1/26/14 9:34:09 PM] James Stone: it is because ZURB is a ruby house
[1/26/14 9:34:14 PM] William Hernebrink: all seems very cool i must say
[1/26/14 9:34:15 PM] James Stone: and so they like sass
[1/26/14 9:34:18 PM] James Stone: a ruby tech
[1/26/14 9:34:24 PM] James Stone: less is node js based
[1/26/14 9:34:31 PM] James Stone: and this is why all the stuff
[1/26/14 9:34:39 PM] James Stone: years of being in ruby now using some node stuff
[1/26/14 9:34:47 PM] James Stone: its like double the things to install
[1/26/14 9:35:02 PM] James Stone: also uglifier is good
[1/26/14 9:35:06 PM] James Stone: compresses js files
[1/26/14 9:35:17 PM] James Stone: you can go really deep with this stuff
[1/26/14 9:35:29 PM] James Stone: or just use it like utilities to help you build static and php web sites
[1/26/14 9:35:38 PM] James Stone: jslint
[1/26/14 9:35:47 PM] James Stone: that might be npm
[1/26/14 9:35:56 PM] James Stone: coffeescript
[1/26/14 9:36:13 PM] James Stone: coffeescript is a preprocessor for javascript, makes it much more modern / ruby like
[1/26/14 9:36:18 PM] James Stone: so instead of the
[1/26/14 9:36:32 PM] James Stone: var something = function(e) { }
[1/26/14 9:36:36 PM] James Stone: it is like
[1/26/14 9:36:48 PM] James Stone: something = (e) ->
[1/26/14 9:36:52 PM] William Hernebrink: ah i see
[1/26/14 9:36:53 PM] William Hernebrink: run the foundation command again and look for errors
[1/26/14 9:36:56 PM] James Stone: the (e) is ( e )
[1/26/14 9:37:00 PM] William Hernebrink: you wrote
[1/26/14 9:37:04 PM] James Stone: yeah
[1/26/14 9:37:11 PM] William Hernebrink: which did you mean?
[1/26/14 9:37:20 PM] James Stone: so hit up until you see the foundation new ...
[1/26/14 9:37:27 PM] James Stone: then enter to run the command
[1/26/14 9:37:31 PM] James Stone: up arrow
[1/26/14 9:38:03 PM] William Hernebrink: Williams-iMac:temp_1 hernebrink$ foundation new first_project
Creating ./first_project
       exist  first_project
fatal: destination path 'first_project' already exists and is not an empty directory.
Installing dependencies with bower...
error: Could not remove config section 'remote.origin'
./first_project was created
[1/26/14 9:38:18 PM] James Stone: oh snap
[1/26/14 9:38:27 PM] James Stone: just change the name to second_project
[1/26/14 9:38:54 PM] James Stone: this cli foundation app really should be marked beta
[1/26/14 9:38:57 PM] William Hernebrink: Williams-iMac:temp_1 hernebrink$ foundation new second_project
Creating ./second_project
      create  second_project
remote: Reusing existing pack: 72, done.
remote: Total 72 (delta 0), reused 0 (delta 0)
Unpacking objects: 100% (72/72), done.
Installing dependencies with bower...
./second_project was created
[1/26/14 9:39:04 PM] James Stone: bam
[1/26/14 9:39:06 PM] James Stone: you are done
[1/26/14 9:39:08 PM] James Stone: so
[1/26/14 9:39:11 PM] James Stone: cd second_project
[1/26/14 9:39:21 PM] William Hernebrink: Thank you 'lord', or should i just call ju James? ^^
[1/26/14 9:39:25 PM] James Stone: lol
[1/26/14 9:39:27 PM] James Stone: then
[1/26/14 9:39:29 PM] James Stone: open .
[1/26/14 9:39:36 PM] James Stone: that will open the directory in the finder
[1/26/14 9:39:49 PM] James Stone: you can edit any of the files in your editor of choice
[1/26/14 9:39:56 PM] William Hernebrink: (which was that command i was wondering about before)
[1/26/14 9:39:58 PM] James Stone: or drag the directory onto sublime text if you have it
[1/26/14 9:40:08 PM] James Stone: so you can do
[1/26/14 9:40:11 PM] James Stone: open index.html
[1/26/14 9:40:14 PM] James Stone: it will open in a browser
[1/26/14 9:40:19 PM] James Stone: it is opening something in the finder
[1/26/14 9:40:23 PM] James Stone: . is the current directory
[1/26/14 9:40:30 PM] James Stone: ../ is one directory down
[1/26/14 9:40:34 PM] James Stone: ~ is home
[1/26/14 9:40:36 PM] James Stone: you can do
[1/26/14 9:40:42 PM] James Stone: open ~ and it will open your home diretory
[1/26/14 9:40:53 PM] William Hernebrink: sweet
[1/26/14 9:40:58 PM] James Stone: then
[1/26/14 9:40:58 PM] William Hernebrink: looking at the index.html
[1/26/14 9:41:00 PM] James Stone: last step
[1/26/14 9:41:00 PM] William Hernebrink: without css
[1/26/14 9:41:06 PM] James Stone: we are using compass
[1/26/14 9:41:06 PM] James Stone: so
[1/26/14 9:41:11 PM] James Stone: just run compass watch
[1/26/14 9:41:24 PM] James Stone: that will then create a app.css file
[1/26/14 9:41:34 PM] James Stone: and watch all of the scss files for changes
[1/26/14 9:41:45 PM] James Stone: and compile the css if there is one
[1/26/14 9:42:05 PM] James Stone: if you want to follow what I was doing
[1/26/14 9:42:10 PM] James Stone: just download a copy of sublime text
[1/26/14 9:42:13 PM] James Stone: it will just nag you
[1/26/14 9:42:18 PM] William Hernebrink: got sublime up and running
[1/26/14 9:42:20 PM] James Stone: to register but it is fully featured
[1/26/14 9:42:28 PM] William Hernebrink: love it
[1/26/14 9:42:36 PM] James Stone: this is my personal philosophy
[1/26/14 9:42:39 PM] William Hernebrink: seems not to have compiled
[1/26/14 9:42:49 PM] William Hernebrink: Williams-iMac:second_project hernebrink$ compass watch
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
[1/26/14 9:42:55 PM] James Stone: oh snap
[1/26/14 9:43:34 PM] James Stone: type
[1/26/14 9:43:35 PM] James Stone: ls
[1/26/14 9:43:40 PM] James Stone: and paste it in skype
[1/26/14 9:43:50 PM] William Hernebrink: Williams-iMac:second_project hernebrink$ ls
README.md   bower_components  humans.txt    js      scss
bower.json    config.rb   index.html    robots.txt
[1/26/14 9:44:39 PM] James Stone: try
[1/26/14 9:44:42 PM] James Stone: sudo gem update
[1/26/14 9:44:42 PM] James Stone: then
[1/26/14 9:44:49 PM] James Stone: rbenv rehash
[1/26/14 9:44:55 PM] James Stone: the run compass watch again
[1/26/14 9:44:56 PM] James Stone: like
[1/26/14 9:44:58 PM] James Stone: compass watch
[1/26/14 9:45:57 PM] James Stone: i knew it wouldn't be that easy ;)
[1/26/14 9:46:34 PM] William Hernebrink: i will have to do this all over, on my macbook pro too, lol
[1/26/14 9:46:47 PM] James Stone: yep
[1/26/14 9:46:47 PM] William Hernebrink: some other day, that is
[1/26/14 9:46:51 PM] James Stone: hope you took notes ;)
[1/26/14 9:47:11 PM] James Stone: i will take all of this and do a blog post
[1/26/14 9:47:11 PM] William Hernebrink: I will take this chat conversation to my grave!
[1/26/14 9:47:20 PM] James Stone: and ask for people to send updates
[1/26/14 9:47:36 PM] James Stone: i think it is pretty important, because some people just don't know how to get started with this stuff
[1/26/14 9:47:44 PM] James Stone: and
[1/26/14 9:47:45 PM] William Hernebrink: exactly!
[1/26/14 9:47:54 PM] James Stone: it is a bit of an opinionated install
[1/26/14 9:48:35 PM] William Hernebrink: When all of this is done, it would be nice with a list of "what the hell did i just install" -list :)
[1/26/14 9:48:44 PM] James Stone: yep
[1/26/14 9:48:44 PM] William Hernebrink: I'm just typing commands.
[1/26/14 9:48:59 PM] William Hernebrink: basically
[1/26/14 9:49:01 PM] James Stone: maybe you can copy and past the entire terminal into an email and send it to me
[1/26/14 9:49:05 PM] James Stone: jamesmanofstone@gmail.com
[1/26/14 9:49:14 PM] William Hernebrink: that i can do
[1/26/14 9:49:35 PM] James Stone: on the mbp, if you didn't install node, try doing it with brew
[1/26/14 9:49:57 PM] James Stone: the computers in france are so ex
[1/26/14 9:49:59 PM] James Stone: pensive
[1/26/14 9:50:07 PM] James Stone: the are 50% more than in the us
[1/26/14 9:50:21 PM] James Stone: it is 17% vat + like 33% import duty
[1/26/14 9:50:23 PM] William Hernebrink: Still get this:
[1/26/14 9:50:23 PM] William Hernebrink: Williams-iMac:second_project hernebrink$ compass watch
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
[1/26/14 9:50:47 PM] James Stone: type compass version
[1/26/14 9:51:05 PM] William Hernebrink: Williams-iMac:second_project hernebrink$ compass version
/Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sass/script/node (LoadError)
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches/browser_support.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:2:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions/monkey_patches.rb:1:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass/sass_extensions.rb:9:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:5:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `each'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/lib/compass.rb:4:in `<top (required)>'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Site/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:20:in `block in <top (required)>'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:8:in `fallback_load_path'
  from /Library/Ruby/Gems/2.0.0/gems/compass-0.12.2/bin/compass:19:in `<top (required)>'
  from /usr/bin/compass:23:in `load'
  from /usr/bin/compass:23:in `<main>'
[1/26/14 9:51:16 PM] James Stone: rather
[1/26/14 9:51:19 PM] James Stone: compass --version
[1/26/14 9:51:46 PM] William Hernebrink: same error
[1/26/14 9:51:52 PM] William Hernebrink: ls
[1/26/14 9:52:04 PM] James Stone: type ruby --version
[1/26/14 9:52:19 PM] William Hernebrink: ruby 2.0.0p247 (2013-06-27 revision 41674) [universal.x86_64-darwin13]
[1/26/14 9:52:19 PM] James Stone: did you upgrade to mavericks?
[1/26/14 9:53:02 PM] William Hernebrink: [2014-01-26 21:00:34] James Stone: brew update
brew install rbenv
brew install ruby-build
[2014-01-26 21:00:44] James Stone: then
[2014-01-26 21:00:44] James Stone: rbenv install 1.9.3-p0
rbenv local 1.9.3-p0
rbenv rehash
[2014-01-26 21:01:09] James Stone: then same thing but replace 1.93-p0
[2014-01-26 21:01:10] James Stone: with
[2014-01-26 21:01:11] James Stone: 2.0.0-p247
[2014-01-26 21:02:17] James Stone: also
brew install rbenv-gem-rehash
[1/26/14 9:53:07 PM] William Hernebrink: did those
[1/26/14 9:53:13 PM] William Hernebrink: after that install brew thing
[1/26/14 9:54:25 PM] James Stone: try thins
[1/26/14 9:54:29 PM] James Stone: try this
[1/26/14 9:54:30 PM] James Stone: sudo gem uninstall sass
sudo gem install sass -v 3.2.12
[1/26/14 9:54:34 PM] James Stone: then
[1/26/14 9:54:38 PM] James Stone: rbenv rehash
[1/26/14 9:54:42 PM] James Stone: then compass watch
[1/26/14 9:54:46 PM] William Hernebrink: does it matter which folder I'm in?
[1/26/14 9:54:51 PM] James Stone: no
[1/26/14 9:54:54 PM] James Stone: except for the compass watch
[1/26/14 9:55:20 PM] William Hernebrink: Remove executables:
  sass, sass-convert, scss
[1/26/14 9:55:24 PM] William Hernebrink: in addition to the gem? [Yn]
[1/26/14 9:55:26 PM] James Stone: Y
[1/26/14 9:55:59 PM] James Stone: this is why I always try and hang back one os on a dev machine
[1/26/14 9:56:01 PM] James Stone: for apple
[1/26/14 9:56:12 PM] James Stone: they are always buggy on the latest os release
[1/26/14 9:56:27 PM] James Stone: unless you need something for it
[1/26/14 9:56:28 PM] James Stone: like
[1/26/14 9:56:32 PM] James Stone: ios dev
[1/26/14 9:56:46 PM] William Hernebrink: Now it seems to be working! :)
[1/26/14 9:56:50 PM] James Stone: awesome
[1/26/14 9:56:52 PM] William Hernebrink: Williams-iMac:second_project hernebrink$ compass watch
>>> Change detected at 21:56:10 to: app.scss
   create stylesheets/app.css
>>> Compass is watching for changes. Press Ctrl-C to Stop.
[1/26/14 9:56:56 PM] James Stone: that is the fix for compass
[1/26/14 9:56:57 PM] James Stone: so
[1/26/14 9:56:58 PM] James Stone: now
[1/26/14 9:57:01 PM] James Stone: any project you create
[1/26/14 9:57:04 PM] James Stone: just run compass watch
[1/26/14 9:57:11 PM] James Stone: while you edit the scss
[1/26/14 9:57:12 PM] James Stone: or
[1/26/14 9:57:15 PM] James Stone: compass compile
[1/26/14 9:57:21 PM] James Stone: thats it
[1/26/14 9:57:24 PM] James Stone: you can try and to the
[1/26/14 9:57:46 PM] William Hernebrink: Thats awesome!
[1/26/14 9:57:58 PM] James Stone: now you can go through that video and hopefully give me an awesome comment ! :)
[1/26/14 9:58:10 PM] William Hernebrink: I sure can, and will! :)
[1/26/14 9:58:23 PM] James Stone: send me that terminal stuff in an email
[1/26/14 9:58:26 PM] James Stone: i will copy this chat
[1/26/14 9:58:36 PM] William Hernebrink: Any change you are at home tomorrow? If you could help me with that meteor? Really need to go now tho.
[1/26/14 9:58:42 PM] James Stone: do you have a website or twitter handle you want me to link to?
[1/26/14 9:58:47 PM] James Stone: yeah
[1/26/14 9:58:51 PM] James Stone: ping me tomorrow about meteor
[1/26/14 9:58:53 PM] James Stone: np

WH_IxD at twitter

