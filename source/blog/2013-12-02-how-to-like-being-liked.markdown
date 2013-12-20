---
title: "How to Like Being Liked"
date: 2013/12/02
time: 13:32 PM CET
tags: Ruby, Middleman, Facebook, Socialite, JavaScript
featured_image: /blog/featured-images/facebook-like.jpg
---

Facebook really isn't my thing, but I heard something recently that changed my mind.

> There are 1.2 billion people on Facebook...
> That is 1 out of every 6 people on the planet...
> there has to be someone that is interested in what you have to say on Facebook

SPLIT\_SUMMARY\_BEFORE\_THIS

> Leslie Samuel, [episode 135](http://www.becomeablogger.com/17293/135-the-backlinking-strategy-that-caused-my-traffic-to-skyrocket/) of the Learning with Leslie Podcast

<blockquote class="twitter-tweet" lang="en"><p><a href="https://twitter.com/manofstone">@manofstone</a> That&#39;s awesome. All the best with your <a href="https://twitter.com/search?q=%23Facebook&amp;src=hash">#Facebook</a> efforts!</p>&mdash; Leslie Samuel (@LeslieSamuel) <a href="https://twitter.com/LeslieSamuel/statuses/407579758273499137">December 2, 2013</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

I think he has a good point. Sure, in my techie purist mind I want to only to gravitate towards certain places online that I think are cool or hip. The reality is that Facebook can be a great place to share value with your audience.

Heres why. If I already have an audience, and I post a link to my article, anyone who likes it has a direct interaction with my page. Also, every time someone likes it, it is shared with their entire network, for each person, so on and so forth.

Also, when someone comes across your site through other social networks or through organic search traffic the effect is the same. When they click like it is then shared with their Facebook friends. That means that any of their Friends can like it and it can continue if you have interesting and engaging content.

This is amazing! Here's why.

Since nearly everyone is on Facebook it gives yo a high likely hood of connecting with your audience. Also, you can have a comment stream that can be more personal, because people who might not share publicly on your blog, might leave you comments on Facebook. And I am sure you know, Facebook will let you know the very second someone responds.

Well, I'm sold.

I set out to create a better experience for my Facebook readers. Of course I wanted to do this with [Middleman](http://www.middlemanapp.com/), my static-website-building-blogging-from-markdown-ruby-based-kung-fu of choice.

If you are interested in how I did it or how to do it yourself, read on.

### The Social(ite) Transformation

First up, adding social icons. In projects for [my book](/zurb-foundation-blueprints) I have been using the [Socialite JavaScript libraryy](http://socialitejs.com/) and I really like it. It works with most of the major social platforms, doesn't need a bunch of api-keys and loads async very fast.

To make this work with Middleman was pretty simple. First I added a link to the Socialite library in my application.js

<pre><code class="javascript">//= require vendor/socialite/socialite

...

$(document).ready(function() {

  ...
  Socialite.load("blog-social");
});</code></pre>

Then I added the following boiler plate code, with some mixed in ERB variables to make life easier.


<pre><code class="ruby">&lt;% permalink_url = &quot;http://www.manofstone.com#{current_page.url}&quot; %&gt;

&lt;div class=&quot;row&quot;&gt;
  &lt;div class=&quot;small-12 medium-5 large-5 small-centered columns blog-social&quot;&gt;
    &lt;ul class=&quot;social-buttons cf&quot;&gt;
      &lt;li&gt;
        &lt;a href=&quot;http://twitter.com/share&quot; class=&quot;socialite twitter-share&quot; data-text=&quot;&lt;%= current_page.title %&gt;&quot; data-url=&quot;&lt;%= permalink_url %&gt;&quot; data-count=&quot;vertical&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span class=&quot;vhidden&quot;&gt;Share on Twitter&lt;/span&gt;&lt;/a&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;a href=&quot;https://plus.google.com/share?url=&lt;%= permalink_url %&gt;&quot; class=&quot;socialite googleplus-one&quot; data-size=&quot;tall&quot; data-href=&quot;&lt;%= permalink_url %&gt;&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span class=&quot;vhidden&quot;&gt;Share on Google+&lt;/span&gt;&lt;/a&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;a href=&quot;http://www.facebook.com/sharer.php?u=&lt;%= permalink_url %&gt;&amp;t=&lt;%= URI.encode(current_page.title) %&gt;&quot; class=&quot;socialite facebook-like&quot; data-href=&quot;&lt;%= permalink_url %&gt;&quot; data-send=&quot;false&quot; data-layout=&quot;box_count&quot; data-width=&quot;60&quot; data-show-faces=&quot;false&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span class=&quot;vhidden&quot;&gt;Share on Facebook&lt;/span&gt;&lt;/a&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;a href=&quot;http://www.linkedin.com/shareArticle?mini=true&amp;url=&lt;%= permalink_url %&gt;&amp;title=&lt;%= URI.encode(current_page.title) %&gt;&quot; class=&quot;socialite linkedin-share&quot; data-url=&quot;&lt;%= permalink_url %&gt;&quot; data-counter=&quot;top&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;span class=&quot;vhidden&quot;&gt;Share on LinkedIn&lt;/span&gt;&lt;/a&gt;
      &lt;/li&gt;
    &lt;/ul&gt;
  &lt;/div&gt;
&lt;/div&gt;
</code></pre>

The important ruby bits hidden in the ERB are the following:

<pre><code class="ruby">permalink_url = "http://www.manofstone.com#{current_page.url}"
current_page.title
URI.encode(current_page.title)</code></pre>

Note: you will need to add <span class="inline-code">require 'uri'</span> to your <span class="inline-code">config.rb</span> in order to use <span class="inline-code">URI.encode</span> if you haven't done so already.

So that takes care of the like buttons. I like the result.

If you do too, don't forget to like it if you make it to the end.

### The Post-Like Likeness

If you have a middleman blog and you share your posts, or maybe you have seen this happen with another blog or page, Facebook sure tries but often misses the mark.

On some of my posts I sometimes have a cta or additional images and for some reason Facebook always seems to get it wrong. And this makes me mad.

Of course it is easy to scroll through and pick the right image, maybe typing something, but the problem is that no one else will ever, ever take the time to do this. Ever.

So [Open Graph Protocol](http://ogp.me/) to the rescue. It sounds a lot more complicated than it is. OG is a set of formatted meta elements that help to define and control the social experience. Nice.

Lets start by taking a look at what needs to change for a particular site with the [Facebook Object Debugger](https://developers.facebook.com/tools/debug/og/object). Just enter a url and it will give a warning and suggestions for the Open Graph elements that are missing.

![Facebook Object Debugger](/images/blog/2013/facebook-object-debugger.png)


I went back and forth with this and finally came up with the following. I created a new wrapping layout for my blog so that I didn't effect the rest of my non-blog site and made the following changes.

<pre><code class="html">&lt;head&gt;

  ...
  &lt;meta property=&quot;og:title&quot; content=&quot;&lt;%= current_page.data.title || &quot;James Stone&quot; %&gt;&quot; /&gt;
  &lt;meta property=&quot;og:url&quot; content=&quot;&lt;%= URI.join(&quot;http://www.manofstone.com&quot;, current_page.url) %&gt;&quot; /&gt;
  &lt;% unless current_page.data.featured_image.nil? %&gt;
    &lt;meta property=&quot;og:image&quot; content=&quot;&lt;%= &quot;http://www.manofstone.com#{asset_url(current_page.data.featured_image)}&quot; %&gt;&quot;/&gt;
  &lt;% end %&gt;
  &lt;% unless current_page.data.seo_desc.nil? %&gt;
    &lt;meta property=&quot;og:description&quot; content=&quot;&lt;%= current_page.data.seo_desc %&gt;&quot;&gt;
    &lt;meta name=&quot;description&quot; content=&quot;&lt;%= current_page.data.seo_desc %&gt;&quot;&gt;
  &lt;% else %&gt;
    &lt;meta property=&quot;og:description&quot; content=&quot;&lt;%= strip_all_html(current_page.summary).lstrip.chomp[0..299] %&gt;&quot;&gt;
    &lt;meta name=&quot;description&quot; content=&quot;&lt;%= strip_all_html(current_page.summary).lstrip.chomp[0..299] %&gt;&quot;&gt;
  &lt;% end %&gt;
  &lt;title&gt;&lt;%= current_page.data.title || &quot;James Stone&quot; %&gt;&lt;/title&gt;
  ...

&lt;/head&gt;</code></pre>

So on each of my pages I have a <span class="inline-code">featured\_image</span> in my yml tags. It looks something like <span class="inline-code">/blog/featuedimage/awesomesauce.jpg</span> and because I use the cache buster extension I append it to my full domain and run it through the <span class="inline-code">asset_url</span> method which points us to the correct renamed file once it is built and deployed to my site.

So that's it. Just a few modifications which make things a little bit smoother.

Of course if you are using wordpress you can just add a cagillion plugins or some premium theme to accomplish this. But if you are down with Middleman and the super fast scalable goodness that it provides, this approach can get it running just a bit smoother for your readers.

Have you added any social media elements to your Middleman blog? Have you done something even cooler? Are you new to Middleman and wondering where to start? If so, I definitely want to hear from you in the comments.

[Photo](http://www.flickr.com/photos/44124395142@N01/5761539779/in/photolist-9M8p3K-e5mxaw-7VjTKm-dwJjxg-9wAjpV-ajNiFJ-dFE54D-a2tCRZ-7VASV3-c39g6C-9GfYgv-eBcwTj-8TCqbP-dgenYz-dgekLu-dgekG4-ai1GjF-84VeiA-dfsbmE-eB9qUr-bA7J6x-eBcA6U-bZUkjL-dJTXwh-dHYkwa-dqCQ31-abD2ku-e1BbSx-eeNyXu-e3tpK2-dKA2nG-bzQHiB-e3z2Af-aN5wH2-aN5vVc-aN5wCP-aN5w5r-aN5vR2-aN5whz-aN5vJk-aN5wea-aN5wyR-aN5w9X-aN5wqv-aN5wmv-aN5vMR-efcnxV-aCTUN5-8GrFkP-7VxCLM-bsh4Fp) courtesy of [Thomas Angermann](http://www.flickr.com/photos/angermann/) through a [CC BY-SA 2.0](CC BY-SA 2.0)) license.
