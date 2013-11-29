---
title: DotRB Ruby Conference in Paris, France
date: 2013/10/23
tags: ruby, news, event
featured_image: /blog/featured-images/dotrb.jpg
signup_zurb: "true"
---

Last week I had the opportunity to attend the [dotRB conference](http://www.dotrb.eu) in Paris, France. Beautiful venue, beautiful city and great food. Whats the catch? The organizer declared it a wifi (pronounced wee fee in French) free day, somewhat akin to being at a spa or on holiday. Since I still haven't quite figured out how to get a microsim *sans engagement* in Paris it took me a few more days to gather my thoughts in to a proper post.

SPLIT\_SUMMARY\_BEFORE\_THIS

## The Format

The organizer of this event is going for a TED style tech conference with short 20 minute presentations that are more technical in nature. I really enjoyed most of the talks and I really enjoyed the humor, level of preparation, storytelling and delivery put forth by some of the speakers. I really admire the direction that this conference is taking and I hope they continue to refine their format and culture into the style of TED. Seems like they are off to quite a good start.

## The Speakers

Really all the speakers are pretty big talent. It is pretty amazing to have everyone assembled under one roof. I am not going to give a play by play of each speaker but I wanted to point out some of the talks that I found very interesting and talk about why I thought they were very effective, for lack of a better way to define it, as technology or developer evangelism. I think that if you are interested in tech evangelism these are some really interesting people to watch. 

## George Brocklehurst, ThoughtBot

<a href="http://www.twitter.com/georgebrock">@georgebrock</a>

Georges presentation was fantastic. Having lived through the past tech-boom-burst-bubble the jokes were great. He starts off with some misdirection, letting you think he is talking about the bubble, but in reality he is describing Jurassic Park, the Movie. He builds up in his story to the scene where they are trapped by the Velociraptors and they need to shut the door. No problem, except for the fact that everything at Jurassic Park is controlled by computers, including the doors. Then, Lex stares at the computer for a moment and exclaims:

> It's a UNIX system! I know this!

Great joke and he spun it in his joke to talk about how to write CLI (command line interface) programs in Ruby, how to package them in gems and how to make them work like people expect unix CLI programs to run. arguments, usage errors, stdout, stderr, and even got a bit into man pages. This can be some really boring stuff, but he really presented it in a way that made it fun, engaging and relevant. I have been interested in doing some basic part of this for some time. Sure I can look some of this up on my own, but there was something very important that came out of his talk. His enthusiasm for making CLI programs run the right way for everyone, because it was easy (in ruby) and he made it pretty fun.

Overall the pace was great and he threw in some other great jokes, taking his live coded CLI and piping it into [figlet](http://www.figlet.org) I also especially enjoyed the way he built up talking about exit codes like they were totally arbitrary and they explained exactly how to get a hold of them in the man pages using the whatis command.

## Steve Klabnik, Free Agent

<a href="http://www.twitter.com/steveklabnik">@steveklabnik</a>

> We have failed non-programmers

Strong and very controversial title for his first slide. His premise is that programmers are projecting too much of what we \[the programmers\] want on other people. Programming with empathy. This was a very interesting proposition and I was on the hook wanting to know where he was going with this. He told a story about the transition from MS Word 5 to MS Word 6 and just after the downgrade to MS Word 5. At the time he was excited about all the features and all the cool ways it could be used, but his mom just wanted to use a word processor.

He also talked about how he is a serious command line but for most things he actually prefers his iPad. For me this was pretty personal, because I have a very similar feeling. There is something about using the iPad that is just fun and more natural. Not anything specific but just a feeling that I have, often coupled with the fear of losing geek status. 

He then used this open the discussion about how he though the future was the browser and how the whole wed standards thing is broken. How there is no direct input and the people who are making the decisions are not the ones using it. He suggested an opposite approach, akin to making a jQuery Polyfill, that would then go native, then get added to browsers, then eventually get voted upon and implemented while retaining backwards compatibility with prefixes. Interesting proposition. Sounds to me like a much better solution.

Then a blast of super opinionated advice:

Rails:

* use apis only
* use rails-api (its more rails than rails)
* use json-api
* use ember (everything he does is basicly a half ember app)
* admit reality

On the last point: rails is no longer hip, edgy or whatever. Its the safe choice and has job security and everyone needs to learn how to write JavaScript.

three closing points:

* use ember
* build cool stuff
* thanks for coming

## Bryan Helmkamp, CodeClimate

<a href="http://www.twitter.com/brynary">@brynary</a>

So what happens when things go wrong? We have all been there, live coding that is painful to watch, slides that don't work, etc. Its a reality that all public speakers are going to have to handle at one point or another. I personally had to deal with this when my mic channel was muted at the beginning of [my talk at TEDxPSU](http://tedxtalks.ted.com/video/TEDxPSU-James-Stone-A-Technolog). Stuff happens.

At DotRB the projector failed and it took them several goes to get it going. Bryan was a champ and joked about how he hadn't done his pre-talk jumping jacks and then proceeded to do them in front of everyone. Hilarious, especially since it just seemed to take forever for them to get the projector sorted. Although he was a bit out of breath at the start he had already won the crowd over with his antics.

What followed was a really interesting talk about building a culture of code quality. He started off with a great analogy of a presenting problem as a medical term. He then described the symptoms as if they were told to a code doctor of slow progress, bugs and whack-a-mole. He stayed with the medical metaphors and called it a viscous cycle.

> Legacy code, n.
> 1. code written by anyone else
> 2. code written by you more than 2 weeks ago

Well how do you break that cycle? He proposes two things. 1) Do no harm. Don't introduce more poor quality code into your ecosystem. You are just making things worse and 2) the boy scout rule: leave things better than when you found them. So if you find something that is totally hosed, clean it up before you file your latest commit.

He also gave a lot of really great advice about improving code quality for teams. lunch and learn, team factoring, early warning systems, etc. He also mentioned that no one likes code reviews and that often people get put on the spot which was echoed by the following xkcdesqe comic.

![WTF Per Min](http://www.osnews.com/images/comics/wtfm.jpg)

[source](http://www.osnews.com/story/19266/WTFs_m)

He proposes that instead of formal code reviews to do github pull requests. Why? They are non-blocking, asynchronous and opt-in. He suggests that you can change the Viscous Cycle into a Virtuous Cycle. Very interesting talk, hope he recovers from all of the pre-talk exercise.

## Erik Michaels-Ober, SoundCloud

<a href="http://www.twitter.com/sferik">@sferik</a>

Erik was one of my favorite speakers and had one of the most unconventional talks. I mean, unconventional for a tech conf, but would be right in line at a TED or TEDx event. He didn't talk about code at all but rather technology in general and took a very optimistic historical approach. He started by talking about the big bang, by playing a sonification of it that, well, wasn't much of a bang. Pretty funny. His presentation was engaging, informative and very funny. He called some early Babylonian Sanskrit a proto-iPad, talked about how it was a beer recipe. He the talked about the inventions of papyrus, the printing press and the telegraph, each time explaining the cultural significance and some interesting facts. He talked about how the shift of power changed with these innovations and placed a different party in control. The point, today the richest companies are software companies and were are a part of the revolution.

Very interesting presentation and very inspiring.

## Developer Evangelism

There were a lot of other really great talks but I wanted to focus on the ones that I thought were outstanding examples of developer evangelism. I encourage everyone who interfaces with other developers and gives talks to take a look at the videos once they are available [online](http://www.youtube.com/user/dotconferences).

If you are asked to speak at an event, you have to remember that it isn't all technical. There is the human element. Sure, you need to nail that demo, but you also have to tell a good story. How do you tell a good story? Well, that can be a long story, right? But looking at story telling techniques, theatrics, humor, etc. can really go a long way. 

Remember your audience. This is not some boring college presentation. Tell some nerdy jokes, wear a nerdy shirt. Go beyond the funny cat pics if you can.

Don't panic. If something goes wrong have a backup plan. Most importantly, give a great performance, inspire people and get them fired up about what you have to say. Remember, it is not just your product that you are pitching. It can also be a philosophy and a lifestyle. Put your own personal spin and passion on it.

If you were at the conference and were also inspired by these or other speakers I would love to hear about it in the comments. Do you have ideas about how to better present and talk with developers I would love to hear from you too.

I will leave you with my favorite quote from the event by Aaron Patterson at the Ruby Implementors Panel.

> I'm dead inside. I write C code.

Stay fired up. Hope to see you at [DotJS in December](http://www.dotjs.eu).




