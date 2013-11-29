---
title: Semantic UI Style Grids in Zurb Foundation
date: 2013/09/28
tags: Zurb Foundation, Zurb Foundation Quick Tips, Semantic-UI, grid, semantic, sass, mixins, media queries
signup_zurb: "true"
featured_image: /blog/featured-images/grid-windows.jpg
---

This is the first in a series of Foundation Quicktips, short articles that solve practical problems. Lately [Semantic UI](http://semantic-ui.com/) has been the buzz around HN and the like and there is good reason. The UI elements look fantastic and they provide a new style "semantic" markup that make things like 3 column grids more readable in HTML. I am a big fan of more readable code, so lets take a look at how to accomplish the same thing using Zurb Foundation 4 Sass Mixins.


SPLIT\_SUMMARY\_BEFORE\_THIS

First lets take a look at the example for Semantic UI:

<pre><code class="html">&lt;div class=&quot;ui three column grid&quot;&gt;
  &lt;div class=&quot;column&quot;&gt;1&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;2&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;3&lt;/div&gt;
&lt;/div&gt;</code></pre>

What I think is really great about this syntax is it is very readable. It is very clear that what I have is a 3 column layout and that each column of content is clearly delineated. It is very easy to recreate this functionality with Sass in F4.


<style type="text/css"> @media only screen and (min-width: 768px) {.three-column-grid {width: 100%; margin-left: auto; margin-right: auto; margin-top: 0; margin-bottom: 0; max-width: 62.5em; *zoom: 1; } .three-column-grid:before, .three-column-grid:after {content: " "; display: table; } .three-column-grid:after {clear: both; } .three-column-grid .column {position: relative; padding-left: 0.9375em; padding-right: 0.9375em; width: 33.33333%; float: left; } .four-column-grid {width: 100%; margin-left: auto; margin-right: auto; margin-top: 0; margin-bottom: 0; max-width: 62.5em; *zoom: 1; } .four-column-grid:before, .four-column-grid:after {content: " "; display: table; } .four-column-grid:after {clear: both; } .four-column-grid .column {position: relative; padding-left: 0.9375em; padding-right: 0.9375em; width: 25%; float: left; } } @media only screen and (max-width: 768px) {.three-column-grid {width: 100%; margin-left: auto; margin-right: auto; margin-top: 0; margin-bottom: 0; max-width: 62.5em; *zoom: 1; } .three-column-grid:before, .three-column-grid:after {content: " "; display: table; } .three-column-grid:after {clear: both; } .three-column-grid .column {position: relative; padding-left: 0.9375em; padding-right: 0.9375em; width: 100%; float: left; } .four-column-grid {width: 100%; margin-left: auto; margin-right: auto; margin-top: 0; margin-bottom: 0; max-width: 62.5em; *zoom: 1; } .four-column-grid:before, .four-column-grid:after {content: " "; display: table; } .four-column-grid:after {clear: both; } .four-column-grid .column {position: relative; padding-left: 0.9375em; padding-right: 0.9375em; width: 50%; float: left; } } </style>


<pre><code class="CSS">$medium-up: &quot;only screen and (max-width:&quot;#{$small-screen}&quot;)&quot;;
@media #{$small} { 
  .three-column-grid { @include grid-row(); }
  .three-column-grid .column { @include grid-column(4); }
}
@media #{$medium-up} {
  .three-column-grid { @include grid-row(); }
  .three-column-grid .column { @include grid-column(12); }
}</code></pre>

Working with Media Queries in Foundation can be confusing at times. What I do is just remember it is the opposite of what I think. In this case I created a new Sass variable named <span class="inline-code">$medium-up</span> to match the visibility presentational classes in Foundation. Then, the first media query, named <span class="inline-code">$small</span> is the Large or Desktop Grid. This is similar to classes such as <span class="inline-code">.large-4 .columns</span> which is what we are emulating. Likewise the <span class="inline-code">$medium-up</span> is for the small or mobile grid.


<pre><code class="html">&lt;div class=&quot;three-column-grid&quot;&gt;
  &lt;div class=&quot;column&quot;&gt;1&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;2&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;3&lt;/div&gt;
&lt;/div&gt;</code></pre>

Here you can see how close we are getting to the original concept. Where Semantic UI is a framework and uses multiple classes to accomplish the same thing, we are using just one. This will keep us from polluting our CSS class names and avoid any potential overlap with Foundation. Foundation uses the <span class="inline-code">.columns</span> class so it is safe to use <span class="inline-code">.column</span>, although you might want to change it to prevent confusion in the future.

<pre><code class="CSS">@media only screen and (min-width: 768px) {
  .three-column-grid {
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    margin-top: 0;
    margin-bottom: 0;
    max-width: 62.5em;
    *zoom: 1;
  }
  .three-column-grid:before, .three-column-grid:after {
    content: &amp;quot; &amp;quot;;
    display: table;
  }
  .three-column-grid:after {
    clear: both;
  }
  .three-column-grid .column {
    position: relative;
    padding-left: 0.9375em;
    padding-right: 0.9375em;
    width: 33.33333%;
    float: left;
  }
}
@media only screen and (max-width: 768px) {
  .three-column-grid {
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    margin-top: 0;
    margin-bottom: 0;
    max-width: 62.5em;
    *zoom: 1;
  }
  .three-column-grid:before, .three-column-grid:after {
    content: &amp;quot; &amp;quot;;
    display: table;
  }
  .three-column-grid:after {
    clear: both;
  }
  .three-column-grid .column {
    position: relative;
    padding-left: 0.9375em;
    padding-right: 0.9375em;
    width: 100%;
    float: left;
  }
} </code></pre>

If we take a look at our generated CSS you will see this is where Foundation really shines. We can override the generation of presentational classes at this point on line 88 of our <span class="inline-code">_settings.scss</span> file, by changing it to <span class="inline-code">$include-html-classes: false;</span> Of course you should only do this if you are not using any other presentational classes in other parts of your page, but the advantage should be clear. Our generated CSS file is dramatically smaller and we have removed a lot of the bloat. You can also selectively remove parts of the generated presentational classes with the settings that follow line 88.

In our example below, with nested panels to show the functionality, you can see we get a nice 3 column layout with stacking on mobile, much like the default behavior of Foundation.

<div class="row">
  <div class="small-10 small-centered large-10 columns example">

    <div class="three-column-grid">
      <div class="column">
        <div class="panel">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde, doloribus, rem, error in tempore quaerat quia explicabo aspernatur hic eligendi est ipsum quo nemo nulla!</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Dolorem, perspiciatis minima necessitatibus illo tempora ea dolor debitis ab vitae nihil consequatur nulla sunt error non quibusdam architecto laboriosam aspernatur modi ex libero earum.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Vitae, reiciendis, tempora voluptates accusamus numquam eum dolorem minima recusandae ratione suscipit. Porro, laboriosam, enim adipisci soluta repellat alias ab consequuntur corporis repudiandae magnam. Pariatur!</p>
        </div>
      </div>
    </div>

  </div>
</div>

Lets take this one step further and create a four column layout, another common design pattern in web design. Lets make one change however, we will make it so it displays 2-up on mobile. This is really easy to implement in Sass.

<pre><code class="CSS"> $medium-up: &quot;only screen and (max-width:&quot;#{$small-screen}&quot;)&quot;;
@media #{$small} { 
  .three-column-grid { @include grid-row(); }
  .three-column-grid .column { @include grid-column(4); }
  .four-column-grid { @include grid-row(); }
  .four-column-grid .column { @include grid-column(3); }
}
@media #{$medium-up} {
  .three-column-grid { @include grid-row(); }
  .three-column-grid .column { @include grid-column(12); }
  .four-column-grid { @include grid-row(); }
  .four-column-grid .column { @include grid-column(6); }
} </code></pre>

The only difference here is that we changed our <span class="inline-code">@include grid-column()</span> to 3 from 4 for our Desktop/Large Grid and to 6 from 12 for our Mobile/Small Grid. This is pretty simple math. Just take your total columns 12 and divide by the number of desired columns. 12 / 3 = 4 so 4 columns wide for three columns and 12 / 4 = 3 which leaves 3 columns wide for the four column layout. Pretty smart that Zurb gave us a 12 columns wide grid by default.

<pre><code class="html">&lt;div class=&quot;three-column-grid&quot;&gt;
  &lt;div class=&quot;column&quot;&gt;1&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;2&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;3&lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;four-column-grid&quot;&gt;
  &lt;div class=&quot;column&quot;&gt;1&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;2&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;3&lt;/div&gt;
  &lt;div class=&quot;column&quot;&gt;4&lt;/div&gt;
&lt;/div&gt;
</code></pre>

With our layouts complete we can now use these anywhere on our site or app and get a nice readable CSS class name such as <span class="inline-code">three-column-grid</span> or <span class="inline-code">four-column-grid</span>. Semantic UI is super cool and definitely worth a look at but you don't have to envy its semantic grid classes. Just roll your own with Zurb Foundation 4 and Sass.

<div class="row">
  <div class="small-10 small-centered large-10 columns">
    <div class="three-column-grid">
      <div class="column">
        <div class="panel">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus, aliquam, magnam, illo rem quam totam sequi pariatur illum numquam ipsa sit cupiditate consectetur omnis explicabo.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Ratione, excepturi, tenetur, vitae porro mollitia rerum sunt reprehenderit non quam veniam laborum molestiae sint nam aut optio quasi saepe ad minima exercitationem ducimus quibusdam.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>At, nostrum, velit, exercitationem voluptates omnis dolor illum totam praesentium corrupti culpa sequi suscipit neque nihil id nesciunt doloribus eveniet tenetur quia est debitis rerum?</p>
        </div>
      </div>
    </div>
    <div class="four-column-grid">
      <div class="column">
        <div class="panel">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, nam, omnis, ipsa impedit quod aliquam perspiciatis ea vel ad aut minima saepe eaque porro esse.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Accusantium, cum, culpa, sed sequi obcaecati mollitia velit ex possimus magni quam fuga amet laudantium quos delectus aliquid dolorem aperiam assumenda asperiores autem reprehenderit temporibus.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Aspernatur, magni, excepturi, id, aliquam suscipit quibusdam a ad adipisci nobis perferendis aperiam consequatur cumque. Consequuntur sit itaque quaerat eum ducimus amet magni sequi expedita.</p>
        </div>
      </div>
      <div class="column">
        <div class="panel">
          <p>Recusandae, voluptatibus, ipsa nemo esse facilis veritatis hic aperiam culpa incidunt nisi quas nobis sit corporis quos enim id in delectus sequi doloremque dolorum eum.</p>
        </div>
      </div>
    </div>
  </div>
</div>

If you have any questions about this post or have ideas for future Foundation Quicktips, let me know in the comments. Don't be afraid to reach out. I try and respond to every comment individually.
