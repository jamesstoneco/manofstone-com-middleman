---
title: Ruby Slim and Zurb Foundation
date: 2013/10/29
tags: foundation-quick-tips, ruby, slim, zurb-foundation
category: foundation, zurb, rwd, responsive
featured_image: /blog/featured-images/foundation-and-slim.jpg
signup_zurb: "true"
---

Today I spent a lot of time working with Foundation and Bootstrap using Ruby Slim. If you haven't used slim before and you are still using erb or haml you should give it a try. If you love Emmet or Zencoding (which shall be referred from this point forward as Emmet) you will love slim. It is nearly the same format. For this Zurb Quicktip I will tell you how maintain your row structures for great Zurb Foundation presentational goodness.

SPLIT\_SUMMARY\_BEFORE\_THIS

I do a lot of work with static website generators and ruby based CMS systems such as [MiddleMan](http://www.middlemanapp.com) and [HardWired](https://github.com/nathanaeljones/hardwired) so this technique will work well with either of them. If you are a seasoned Ruby veteran this may not be anything new to you.

Often I will create an array or a hash and cycle through it to automate the building of some sort of interface or content in a page. Normally this doesn't present much of a problem but Zurb Foundation and Twitter Bootstrap both have the issue of having to have row wrapper classes. For example:

<pre><code class="html">&lt;div class=&quot;row&quot;&gt;
  &lt;div class=&quot;large-12 columns&quot;&gt;
    &lt;div class=&quot;row&quot;&gt;
      &lt;div class=&quot;large-4 columns&quot;&gt;&lt;/div&gt;
        ...
</code></pre>

This works out really great in slim as it does with Emmet.

<pre><code class="ruby">.row
  .large-12.columns
    .row
      .large-4.columns
         ...
</code></pre>

Which ends up being very similar to Emmet.


<pre><code class="html">.row&gt;.large-12.columns&gt;.row&gt;.large-4.columns&gt;...</code></pre>

And so if you want to make these structures dynamic it is very easy. For example to populate a ul:

<pre><code class="ruby">- texts = [&quot;This is one thing&quot;, &quot;This is another thing&quot;, &quot;This is yet another thing&quot; &quot;This is thing 1&quot;, &quot;and this is thing 2&quot;, &quot;this is the last thing&quot;]
ul.side-nav
- texts.each do | t | 
  li
    a #{t}
</code></pre>

An so this works really well for ul tags and other elements that can take an indeterminate number of elements. This becomes a problem however, when you want to use things like the standard Foundation 4 grid because of these pesky .row divs.

Maybe if you are like me, you might have considered using conditional statements with the each_with_index method. Maybe do a conditional on the modulus of the number of columns. The problem with this approach is that slim by its very nature is hierarchical which is great and also bad. Well bad in that the simple non ruby way doesn't work. Luckily Ruby has a great way to handle this situation and it is called the each_slice(n) method.

Lets take a look at how this plays out:

<pre><code class="ruby">- texts = [&quot;This is one thing&quot;, &quot;This is another thing&quot;, &quot;This is yet another thing&quot; &quot;This is thing 1&quot;, &quot;and this is thing 2&quot;, &quot;this is the last thing&quot;]
- number_of_columns = 3
- texts.each_slice(number_of_columns) do | text_block | 
  .row
    - text_block.each do | t | 
      .large-4.columns
        h1 #{t}
</code></pre>

So here our texts.each_slice(n) method creates a code block which adds a row. This will give use nice arrays that have n elements (with the exception of the last one, which could be smaller). First we create a .row. Awesome. Next we create another block that traverses each element of the text block.

This is pretty nice. It only adds one line of code but allows use to get more granularity while maintaining a similar looping structure with the .each method as we used before.

This should keep your grid nice and tight and eliminate those pesky last divs that never seem to align right. Well, without their precious divs.

If you are new to Foundation or to using it with Ruby let me know if you have any other tips or questions. Don't forget to let me know in the comments if you have any questions about Foundation or have other topics you would like to hear about.

Until next time.

Photo Credit, David Niblack, [Imagebase.net](http://www.imagebase.net/)