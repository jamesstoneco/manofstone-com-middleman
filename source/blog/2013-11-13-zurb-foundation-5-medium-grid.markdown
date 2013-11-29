---
title: Zurb Foundation 5 Medium Grid
date: November 13, 2013
time: 4:00 PM CET
tags: Zurb Foundation, rwd, responsive
signup_zurb: "true"
featured_image: /blog/featured-images/ipad-gadgets-desk.jpg
---

One of the [hidden features included with Foundation 4.3](http://zurb.com/article/1226/foundation-4-3-paving-the-road-to-5) is the Tablet or Medium grid. This isn't enabled by default but it is super easy to implement. I just recently added it on this site. Lets take a look at how I went about it.

SPLIT\_SUMMARY\_BEFORE\_THIS

If you are using the sass version of foundation it is super easy to implement. Just uncomment the line:

<code><pre class="scss">// Use this grid if you want to start using the new Foundation 5 grid early.
// It will change breakpoints to min-width: 640px and 1024px.
//
@import "foundation/components/grid-5";
</pre></code>

Thats pretty much it. After running compass compile or watch or automatically if you are using something that supports the Sprocket Asset Pipeline such as Rails or Middleman. Well not exactly, what seems like a simple change has some pretty drastic changes on an already existing site.

All of your medium grid elements will act as mobile, unless you add them specifically. Sometimes this is what you want, but often it is not. A tablet has quite a bit of screen real estate so you don't want to start stacking everything necessarily.

So what do you do? Just mimic your large classes. So if you have a <span class="inline-code">.large-6</span> add a <span class="inline-code">.medium-6</span> to match it. If you have a <span class="inline-code">.large-10.large-uncentered</span> add a <span class="inline-code">.medium-10.medium-uncentered</span> to match it. The same goes for <span class="inline-code">.large-centered</span> and just about everything else.

In my case I wanted to mimic the large grid for nearly everything. The navigation, the blog listings and so on. There was one area where I made a minor tweak where I believe it is improving the user experience.

<code> <pre class="html"><% wrap_layout :layout do %>
...
&lt;div class=&quot;row&quot;&gt;
  &lt;div class=&quot;large-8 large-centered columns&quot;&gt;
    &lt;div class=&quot;entry-content&quot;&gt;
      &lt;% test_featured_image = current_page.data.featured_image %&gt;
      &lt;% if ( defined?(test_featured_image)) %&gt;
        &lt;div class=&quot;row&quot;&gt;
          &lt;div class=&quot;small-12 medium-8 medium-centered large-12 columns&quot;&gt;
            &lt;p&gt;&lt;img src=&quot;&lt;%= current_page.data.featured_image %&gt;&quot;&gt;&lt;/p&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;% end %&gt;
      &lt;%= yield %&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
...
&lt;% end %&gt;
</pre> </code>

I spend a ton of time reading blogs both on my computer and on my iPad. Often most blogs do one of two things. They either stretch the content out from edge to edge or they add white space to the sides to add to the readability. Well, on desktop browsers that is. I can't tell you how frustrating it is when a blog does this on my iPad and disables the zoom. This means I get this really compressed column of text that just makes it irritating to read. Sure you can use a tool such as readability to improve this, but I think that blogs should provide a great experience by default on the browser.

<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/blog/2013/medium-grid/ipad-landscape-before.png"><img data-caption="iPad Landscape Before" src="../../../images/blog/2013/medium-grid/ipad-landscape-before.png" class="th" width="200"></a></li>
  <li><a href="../../../images/blog/2013/medium-grid/ipad-landscape-after.png"><img data-caption="iPad Landscape After" src="../../../images/blog/2013/medium-grid/ipad-landscape-after.png" class="th" width="200"></a></li>
</ul>

<br>



So, this was a case where I left the medium grid off. This means on a desktop browser with the large grid you you get a reasonable amount of white space which improves readability, but I get edge to edge on my iPad, which also improves readability. The problem is that I calculated images sizes for retina iPhones, 320px wide doubled to 640px. On the iPad now, 640px isn't enough to fill the screen. In addition, I think it would take up too much screen real estate even if I took this approach.

So what I came up with was to wrap my image with a <span class="inline-code">.small-12.medium-8.medium-centered.large-12.columns</span> which acts to compress the image width on the medium grid.


<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/blog/2013/medium-grid/ipad-portrait-before.png"><img data-caption="iPad Potrait Before" src="../../../images/blog/2013/medium-grid/ipad-portrait-before.png" class="th" width="200"></a></li>
  <li><a href="../../../images/blog/2013/medium-grid/ipad-portrait-after.png"><img data-caption="iPad Potrait After" src="../../../images/blog/2013/medium-grid/ipad-portrait-after.png" class="th" width="200"></a></li>
</ul>

<br>

Have you used the Zurb Foundation 4.3/5 Medium Grid yet? What else have you discovered? Do you have any questions about it? Let me know in the comments.



