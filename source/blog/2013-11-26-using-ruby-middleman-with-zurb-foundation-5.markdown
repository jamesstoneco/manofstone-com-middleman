---
title: "Using Ruby Middleman with Zurb Foundation 5"
date: 2013/11/26
time: 11:18 PM CET
tags: Zurb Foundation Quick Tips, Zurb Foundation, Middleman
signup_zurb: "true"
featured_image: /blog/featured-images/middleman-foundation.jpg
---

I have been using the Ruby based [MiddleMan](http://www.middlemanapp.com) static website and blog generator for some time now and I love it. With the release of Foundation 5 last week, I couldn't wait to upgrade it from Foundation 4 to Foundation 5. If you [read how I spliced Foundation 4](/blog/shoehorn-zurb-foundation-into-weird-stuff/) to work with Middleman you have a pretty good idea about my approach. The verdict is in: It wasn't as easy as I expected, but it wasn't that difficult either.

SPLIT\_SUMMARY\_BEFORE\_THIS

With Foundation 5 there are a lot of under the hood improvements that I think are generally fantastic for the community. They have created a new cli named foundation (easy, right, just like the new gem foundation) which I think is great. Now you just have one gem to install and you can get started with it right away. I was expecting it to spit out a normal compass project like I am used to, but I got really excited when I saw that it installed not only foundation but also jquery and modernizr using [Bower](http://bower.io/) If you haven't used Bower before, it is a package manager that is commonly used for front end libraries as well as Node.js projects. If you don't use Node or npm much you can just think of it as being like gem and or bundler.

This is really great because it keeps the foundation javascript and sass separate from the rest of your app. Also, in the future when you want to upgrade to the latest and greatest, you can just run <span class="inline-code">bower update</span> or <span class="inline-code">foundation update</span> and everything will magically update. To update your sass everything works the same. You can just run <span class="inline-code">compass watch</span> or however you accomplish that and everything should work the same way. Of course there is the new wicked fast [libsass](http://libsass.org/) compiler that you can use optionally. You compile just like with compass by running <span class="inline-code">grunt</span> and you will the same effect. Last week I did some experimentation and got a locally built sassc to compile a Foundation 4 project and [the results were nothing short of spectacularr](/blog/compass-sass-vs-sassc-for-zurb-foundation-4/).

So with these new features comes a dilemma for using Foundation 5 with Middleman. These new improvements work great if you are using Rails or something else that supports the normal Sprockets / Asset Pipeline. They also work great if you are building a sass standalone app. I did get things to work correctly and here is how I went about doing it.

## The Update

Luckily Zurb wrote a [migration guide](http://foundation.zurb.com/docs/upgrading.html) for those of us coming from Foundation 4. First, drop Zepto for jQuery and modify some of your JavaScript. Then install the [jQuery plugin for migrationn](https://github.com/zurb/foundation-migrate) that allows the older style Foundation 4 javascript calls to continue working and gives you depreciation warnings in the console. Since I haven't done any major javascript modification beyond the defaults and I had [already included the medium / tablet grids](/blog/zurb-foundation-5-medium-grid/) I felt that I was in pretty good shape.

Before I was able to just include the <span class="inline-code">zurb-foundation</span> gem and make a few modifications to my config.rb to pull in the paths directly from the gem path for both the javascript and scss. Zurb made some changes to their gem structures so, taking a wild guess:

- zurb-foundation -> foundation 4 ftw, rails or compass
- foundation -> new clip app, installs mostly node, bower, libsass stuff
- foundation-rails -> foundation 5 on rails (not zurb-foundation anymore)

I tried using the <span class="inline-code">foundation</span> gem, but it was a no go. The sass files are no longer stored there. They are pulled directly from a different git repo by bower directly. So my next plan of action was to try and use bower to pull the new files and include them in the same type of way.

### Updating the Config file, config.rb

<pre><code class="ruby">bourbon_path = Gem::Specification.find_by_name('bourbon').gem_dir
    set :js_assets_paths, [File.join(root, 'bower_components')]
    set :sass_assets_paths, [File.join(root, 'bower_components/foundation/scss'), File.join(bourbon_path, 'app/assets/stylesheets')]</code></pre>

You'll notice that I am adding bourbon sass files in the same method I used before and adding it to my new path to my bower_components. So now lets take a look at my changes to the js.

### Updating the JavaScript

<pre><code class="javascript">//= require foundation/js/foundation
//= require foundation/js/foundation/foundation.abide
    // require foundation/js/foundation/foundation.accordion
    // require foundation/js/foundation/foundation.alert
//= require foundation/js/foundation/foundation.clearing
    // require foundation/js/foundation/foundation.dropdown
//= require foundation/js/foundation/foundation.interchange
    // require foundation/js/foundation/foundation.joyride
    // require foundation/js/foundation/foundation.magellan
//= require foundation/js/foundation/foundation.offcanvas
    // require foundation/js/foundation/foundation.orbit
    // require foundation/js/foundation/foundation.reveal
    // require foundation/js/foundation/foundation.tab
    // require foundation/js/foundation/foundation.tooltip
//= require foundation/js/foundation/foundation.topbar
//= require vendor/highlight
//= require vendor/processing
//= require vendor/jquery.timeago
//= require_directory .

$(document).foundation();</code></pre>


### Updating the Sass/Scss

You will notice that this is just normal Sprokets / Asset Pipeline stuff. Here I just removed the = to prevent javascript for components that I am not using from loading. Next up, Sass.

<pre><code class="css">// @import "foundation";

    // Global Foundation Settings
    // @import "settings";
    @import "settings.minimal";

    // Comment out this import if you don't want to use normalize
    @import "normalize";

    // @import "foundation/components/accordion";
    // @import "foundation/components/alert-boxes";
    // @import "foundation/components/block-grid";
    // @import "foundation/components/breadcrumbs";
    @import "foundation/components/button-groups";
    @import "foundation/components/buttons";
    @import "foundation/components/clearing";
    // @import "foundation/components/dropdown";
    // @import "foundation/components/dropdown-buttons";
    @import "foundation/components/flex-video";
    @import "foundation/components/forms";
    @import "foundation/components/grid";
    @import "foundation/components/inline-lists";
    // @import "foundation/components/joyride";
    // @import "foundation/components/keystrokes";
    // @import "foundation/components/labels";
    // @import "foundation/components/magellan";
    // @import "foundation/components/orbit";
    @import "foundation/components/pagination";
    @import "foundation/components/panels";
    // @import "foundation/components/pricing-tables";
    // @import "foundation/components/progress-bars";
    // @import "foundation/components/reveal";
    @import "foundation/components/side-nav";
    // @import "foundation/components/split-buttons";
    // @import "foundation/components/sub-nav";
    // @import "foundation/components/switch";
    // @import "foundation/components/tables";
    // @import "foundation/components/tabs";
    @import "foundation/components/thumbs";
    // @import "foundation/components/tooltips";
    @import "foundation/components/offcanvas";
    @import "foundation/components/visibility";</code></pre>

So with this I thought that I was done. The problem was that I got a bunch of sass errors. This was due to my heavily modified _settings.scss file. I have gotten pretty used to being able to just uncomment things I want to change so my first guess at a fix was to grab the [global styles from the docs](http://foundation.zurb.com/docs/components/global.html) and place them into my _settings.scss file just like I always would.

Unfortunately this did not work and I was surprised. I got really strange behavior with these "gobal styles" such as bad line spacing with paragraphs so I ended up taking another approach.

What I did was to remove all the commented out lines from my old _settings.scss (thank you regex ^//.*$ ) which made the file definitely more manageable. I wasn't sure which variables still had the same effect so I just turned on what was important one at a time and spot checked to see if it was working as intended.

This got me up and running. In a future post I will talk about how I approached the off canvas slides and how I modified my header and footer to accommodate it. If you can't wait, I have posted the [source for this site on github](https://github.com/manofstone/manofstone-com-middleman) so go crazy.

Overall I am very impressed with the new version of Foundation. Although it wasn't quite as smooth as I anticipated it really wasn't very difficult. Since the class names are generally the same (are all of them the same, I haven't hear any official confirmation on that yet?) and since I had already did some prep work by including [the medium grid](/blog/zurb-foundation-5-medium-grid/) I didn't have the touch the html one bit which is awesome.

Have you updated your middleman site to use Foundation 5 yet? Have you found any interesting undocumented features or tricks? Let me know in the comments.
