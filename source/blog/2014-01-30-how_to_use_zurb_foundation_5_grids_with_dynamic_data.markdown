---
title: How to use ZURB Foundation 5 Grids with Dynamic Data
date: 2014/01/30
time: 13:35 PM CET
tags: ZURB Foundation, Responsive Web Design, Web Design, Mobile, Video
featured_image: "/blog/featured-images/featured-video.jpg"
signup_zurb: "true"
---

I wanted to reach out and thank everyone for their kind comments and great questions from my last screencast, [Getting Started with the ZURB Foundation 5 Grid](getting-started-with-the-zurb-foundation-5-grid). I thought that there are probally a lot of people dealing with dynamic data across a variety of different languages and templating engines. I wanted to address some common issues that I come across using the ZURB Foundation 5 grid and how to solve them.

SPLIT\_SUMMARY\_BEFORE\_THIS

If you enjoy this screencast, don't forget to subscribe so you will be the first to know when I publish my next video. If you have any ideas for future episodes or just want to reach out, I would love to hear from you in the comments. Hope you like it, and let me know what you think.

<div class="flex-video widescreen"><iframe width="960" height="720" src="//www.youtube.com/embed/UjN_aX84Qco?rel=0" frameborder="0" allowfullscreen></iframe></div>

Video description from YouTube:

> In this screencast I talk about how to approach one of the most common situations you face when using ZURB Foundation with Dynamic Data: How to keep the grid looking good and displaying the way you want to. In this video you learn how to write a couple of conditional statements using the modulus operator that will allow you to close rows and fill empty content to get consistent and expected visual design. Although I demonstrate how to do with with JavaScript and jQuery the same principals and operators can be applied to nearly any language.

This video contains Episodes 1 - 6 in one easy to watch format:

 * [Episode 1](http://www.youtube.com/watch?v=hSSitbSCn6Y&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): Introduction to the ZURB Foundation Store Template and Explanation of Why Grids Break with Dynamic Data
 * [Episode 2](http://www.youtube.com/watch?v=cWUurEPMrx4&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): Dynamic Data with jQuery and Wrapping Issues
 * [Episode 3](http://www.youtube.com/watch?v=t9RBHnMYRVk&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): Closing Your Rows, Dynamically
 * [Episode 4](http://www.youtube.com/watch?v=v4XVOa1lwCY&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): 1st Conditional and Modulus, Closing Rows
 * [Episode 5](http://www.youtube.com/watch?v=-z5qs8KwKpU&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): Handling the End of the Loop, 2nd Conditional and Loop
 * [Episode 6](http://www.youtube.com/watch?v=I5dD9sx3eI8&list=PL1gbVstzjPTbo5J9Efl0-gUk0wWBTyzb4): Testing the Result, Where to Get the Code and Wrap Up

If you would like to view the entire project, jump over to the [github repo](https://github.com/manofstone/demo-zurb-foundation-5-grids-with-dynamic-data).

## Example Code

javascripts/app.js ( [view on github](https://github.com/manofstone/demo-zurb-foundation-5-grids-with-dynamic-data/blob/master/js/app.js) ):

<pre><code class="javascript">$(document).ready( function() {
  $(document).foundation();

  var products = [{name: &quot;iPad&quot;, price: &quot;$499.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/1/&quot;},
                  {name: &quot;Technics Some Really Long Name&quot;, price: &quot;$499.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/2/&quot;},
                  {name: &quot;Netbook&quot;, price: &quot;$299.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/3/&quot;},
                  {name: &quot;Ear Pods&quot;, price: &quot;$29.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/5/&quot;},
                  {name: &quot;Sony Headphones&quot;, price: &quot;$49.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/6/&quot;},
                  {name: &quot;Shure Earbuds&quot;, price: &quot;$194.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/7/&quot;},
                  {name: &quot;65\&quot; HDTV&quot;, price: &quot;$397.99&quot;, image: &quot;http://lorempixel.com/400/400/technics/9/&quot;}
  ];

  var output = &quot;&lt;div class=\&quot;row\&quot;&gt;&quot;;
  var numCols = 3;

  $.each(products, function(index, product) {
    output += &quot;&lt;div class=\&quot;large-4 small-6 columns\&quot;&gt; &lt;img src=\&quot;&quot; + product.image +
              &quot;\&quot;&gt; &lt;div class=\&quot;panel\&quot;&gt; &lt;h5&gt;&quot; + product.name +
              &quot;&lt;/h5&gt; &lt;h6 class=\&quot;subheader\&quot;&gt;&quot; + product.price + &quot;&lt;/h6&gt; &lt;/div&gt; &lt;/div&gt; &quot;

    // close and open new row when filled

    if (index % numCols === numCols - 1) {
      output += &quot; &lt;/div&gt;&lt;div class=\&quot;row\&quot;&gt; &quot;
    }

    // if this is the last product, add empty divs to fix formatting

    if (index == products.length - 1) {
      for (var c = 0; c &lt; numCols - 1 - index % numCols; c++) {
        output += &quot;&lt;div class=\&quot;large-4 small-6 columns\&quot;&gt;&lt;/div&gt;&quot;
      }
    }

  });

  output += &quot;&lt;/div&gt;&quot;

  $(&quot;.product-listing&quot;).html(output);
});</code></pre>


Modifications to the index.html, starting at line 107 ( [view on github](https://github.com/manofstone/demo-zurb-foundation-5-grids-with-dynamic-data/blob/master/index.html) ) :

<pre><code class="html">
...
  &lt;!-- End Side Bar --&gt;

  &lt;!-- Thumbnails --&gt;

      &lt;div class=&quot;large-8 columns product-listing&quot;&gt;
      &lt;div class=&quot;row product-listing&quot;&gt;

          &lt;div class=&quot;large-4 small-6 columns&quot;&gt;
            &lt;img src=&quot;http://placehold.it/1000x1000&amp;text=Thumbnail&quot;&gt;

            &lt;div class=&quot;panel&quot;&gt;
              &lt;h5&gt;Item Name&lt;/h5&gt;
              &lt;h6 class=&quot;subheader&quot;&gt;$000.00&lt;/h6&gt;
            &lt;/div&gt;
          &lt;/div&gt;
...</code></pre>

## Ruby/Slim Templates

If you are looking for a more effecient way to handle this situation with Ruby and Ruby SLIM templates, check out my post called [Ruby Slim and Zurb Foundation](ruby-slim-and-zurb-foundation). It covers ZURB Foundation version 4 but the syntax is identical to ZURB Foundation 5 for this example.

So what did you think of this video? Do you use dynamic data or templates in your work with ZURB Foundation? Do you have any ideas for future screencasts? If so, I would love to hear from you in the comments.

