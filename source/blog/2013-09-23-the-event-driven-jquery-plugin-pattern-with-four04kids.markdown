---
title: The Event Driven jQuery Plugin Pattern with four04kids
date: 2013/09/23
tags: code, patterns, jquery, jquery plugin, event driven, coffeescript, mustache, javascript
featured_image: /blog/featured-images/pattern-giraffe.jpg
---

Last night I was chatting with [Jeffrey Horn](http://jeffreyhorn.com/) and found out he was at Startup Weekend in Seattle and working on a new project called [four04kids](http://404kids.org/). Pretty cool idea, they encourage you to add a simple javascript to your 404 error page and it asks if you have seen missing children in your area. I thought this was a great idea and something really positive they were bringing to the community and added their js embed to [my error page on this site](http://www.manofstone.com/WAT).

SPLIT\_SUMMARY\_BEFORE\_THIS

I chatted with him for a bit about their future directions and that a jQuery Plugin version was in the road map. In the spirit of Open Source and Gitrdone I jumped in to refactor their existing code into a proper jQuery Plugin to the best of my ability. What follows is what I learned in the several hour process and how I implemented the Event Driven jQuery Plugin Pattern as written about by Doug Avery in his excellent article titled, [A Few jQuery Plugin Patterns](http://viget.com/inspire/jquery-plugin-patterns) on the [Viget Inspire Blog](http://viget.com/inspire/).

If you have any questions or suggestions on how to refactor this I would love to hear from you in the comments. This is just the solution I built with the time I had available.

So I took a look at the [original javascript](https://github.com/theverything/four04kids/blob/270618d3cca97b2d4392e745e9c610082d361a80/embed/src/embed.coffee) at had a go at it.

I broke it down into the following pieces of functionality:

* Loading JSON data via the API
* Going to the next kid, excluding the last viewed on when the "no" button is pressed
* Adding custom CSS
* Replacing or adding a DIV and filling a template with data from it

Lets take a look at the full source in CoffeeScript:


<pre><code class="coffeescript">$.fn.four04 = (options) -&gt;
  settings = $.extend(
    wrapperClass: &quot;kids404-wrapper&quot;
    kidsId: &quot;kids404&quot;
    apiURL: &quot;http://404kids.org/api/random&quot;
    htmlTemplate: &quot;&quot;&quot;
&lt;div class=&quot;{{wrapperClass}}&quot;&gt;
  &lt;div class=&quot;front&quot;&gt;
    &lt;h2&gt;Missing Person Near &lt;span class=&quot;geo-city&quot;&gt;Seattle&lt;/span&gt;&lt;/h2&gt;
    &lt;div class=&quot;image&quot;&gt;
      &lt;img src=&quot;http://missingkids.com/{{image_url}}&quot;&gt;
    &lt;/div&gt;
    &lt;div class=&quot;info&quot;&gt;
      &lt;h3&gt;{{full_name}}&lt;/h3&gt;
      &lt;h4&gt;Current Age {{ageString}}&lt;/h4&gt;
      &lt;h4&gt;Missing From {{missing_city}}, {{missing_state}}
      &lt;br&gt;since {{month}} {{day}}, {{year}}&lt;/h4&gt;
      &lt;h4 class=&quot;question&quot;&gt;Have You Seen This Person?&lt;/h4&gt;
      &lt;br&gt;
      &lt;a href=&quot;{{missingLink}}&quot; class=&quot;btn&quot;&gt;SEEN&lt;/a&gt;
      &lt;a href=&quot;#&quot; class=&quot;btn&quot; id=&quot;new-kid&quot;&gt;NO&lt;/a&gt;
    &lt;/div&gt;
    &lt;div class=&quot;more-info&quot; onclick=&quot;document.getElementById(&#039;kids404&#039;).className = &#039;flipped&#039;;&quot;&gt;
      &lt;span&gt;?&lt;/span&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;div class=&quot;back&quot;&gt;
    &lt;p&gt;This service is brought to you by &lt;a href=&quot;http://404kids.org&quot;&gt;404kids&lt;/a&gt;, and is intended to help reclaim
    the visibility and independence of missing children.&lt;/p&gt;

    &lt;p&gt;If you would like to aid in
    the search for missing and exploited adolescents, please &lt;a href=&quot;http://404kids.org/docs&quot;&gt;add this widget to your site&lt;/a&gt;.&lt;/p&gt;

    &lt;p&gt;If you have any information to report on one of our featured subjects, we urge you to &lt;a href=&quot;{{missingLink}}&quot;&gt;fill out a report&lt;/a&gt; immediately.&lt;/p&gt;
    &lt;div class=&quot;more-info&quot; onclick=&quot;document.getElementById(&#039;kids404&#039;).className = &#039;&#039;;&quot;&gt;
      &lt;span&gt;x&lt;/span&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
&quot;&quot;&quot;
  , options)
  @each -&gt;
    $this = $(this)
    $this.attr(&quot;id&quot;, &quot;#{settings.kidsId}&quot;)
    newKid = (kid_id) -&gt;
      apiCall = settings.apiURL
      apiCall = apiCall + &quot;?exclude=#{kid_id}&quot; if kid_id
      jqxhr = $.getJSON apiCall, (data) -&gt;
        kid = data.kid
        months = [
          &quot;January&quot;
          &quot;February&quot;
          &quot;March&quot;
          &quot;April&quot;
          &quot;May&quot;
          &quot;June&quot;
          &quot;July&quot;
          &quot;August&quot;
          &quot;September&quot;
          &quot;October&quot;
          &quot;November&quot;
          &quot;December&quot;
        ]
        $this.kidView = 
          wrapperClass: settings.wrapperClass
          image_url: kid.image_url
          full_name: kid.full_name
          ageString: if kid.age then &quot;#{kid.age} Years Old&quot; else &quot;Age Not Provided&quot;
          missing_city: kid.missing_city
          missing_state: kid.missing_state
          year: parseInt(kid.missing_date.slice(0,4), 10)
          month: months[parseInt(kid.missing_date.slice(5,7), 10)]
          day: parseInt(kid.missing_date.slice(8,10), 10)
          missingLink: kid.missing_url
          id: kid.id
      .done( -&gt;
        $this.html Mustache.render(settings.htmlTemplate, $this.kidView)
        # attach click event after generating html
        $this.find(&quot;#new-kid&quot;).click (event) -&gt;
          event.preventDefault()
          $this.trigger &quot;newKid&quot;
        )
      .error( -&gt;
        console.log &quot;error loading json data.&quot;
        )
    $this.bind
      newKid: newKid
    $this.ready -&gt; # show the first kid after everything else
      $this.trigger &quot;newKid&quot;      

</code></pre>

First I define some defaults that can be overrided when calling the plugin. In these defaults I also place a mustache template called htmlTemplate. Next, by calling <span class="inline-code">@each</span> allows jQuery calls to be chained to this plugin. The function <span class="inline-code">newKid (kid_id)</span> does a lot of the heavy lifting, pulling the data from json and returning the template. Following this I bind <span class="inline-code">newKid</span> to <span class="inline-code">$this</span>. Finally <span class="inline-code">$this.ready</span> calls newKid with <span class="inline-code">$this.trigger "newKid"</span>.

I moved the adding of the trigger to the "No" button to the end of the <span class="inline-code">.done()</span> callback for the <span class="inline-code">getJSON</span> method. This ensures that the button has been created by the template before binding it to the correct function. If you try and do this in another part of the plugin, such as in the same scope as <span class="inline-code">$this.bind</span> the problem is that the button has not been created yet, because we are waiting for the <span class="inline-code">getJSON</span> call to complete.

You can take a look at my final [CoffeeScript](https://github.com/manofstone/four04kids/blob/d3983049c6f78d9e648cab617c0523d435f44537/embed/src/embed-jquery.coffee) and [Generated JavaScript](https://github.com/manofstone/four04kids/blob/d3983049c6f78d9e648cab617c0523d435f44537/embed/src/embed-jquery.js) vesions on my final [GitHub commit](https://github.com/manofstone/four04kids/commit/d3983049c6f78d9e648cab617c0523d435f44537) for the session.