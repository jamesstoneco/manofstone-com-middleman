---
title: Compass Sass vs Sassc for Zurb Foundation 4
date: November 16, 2013
time: 12:24 AM CET
tags: Zurb Foundation, Zurb Foundation Quick Tips, rwd, responsive
signup_zurb: "true"
featured_image: /blog/featured-images/compass-vs-sassc.jpg
---

Thats a lot of S's. Try and say that five times fast. I was pretty excited about the [Zurb announcement of Zurb Foundation 5](http://zurb.com/article/1274/we-feel-the-need-the-need-for-speed-what-) due for release this next week. One thing that caught my eye was this line:

SPLIT\_SUMMARY\_BEFORE\_THIS

> Finally, for the nerd in all of you, we've built a new command line tool that will let you spin up Foundation projects preposterously fast, and those projects will now use <span class="inline-code">Libsass</span>, a back-end Sass compiling library that will dramatically speed up how long it takes for your SCSS changes to take effect while you work.

Well, I was curious and wanted to find out what [libsass](https://github.com/hcatlin/libsass) was all about. I can tell you, they are being very modest about the speed difference.


I ran two tests on a fairly basic compass sass install of Zurb Foundation 4.3. The speed difference was staggering.

      $ time sassc -o output.css -I /Users/james/.rbenv/versions/1.9.3-p448/lib/ruby/gems/1.9.1/gems/zurb-foundation-4.3.2/scss sass/app.scss

      real  0m0.187s
      user  0m0.168s
      sys 0m0.016s
      [20131116_001450] james@MNWA:~/temp/zurbfun
      $ time compass compile
      overwrite stylesheets/app.css

      real  0m6.151s
      user  0m5.210s
      sys 0m0.215s
      [20131116_001504] james@MNWA:~/temp/zurbfun

Yes you are reading that correctly. That is 6.151 seconds for compass compared to 0.187 seconds for sassc. That is over 32 times faster!

Now, if I can just get it working with grunt watch like [this guy](http://benfrain.com/lightning-fast-sass-compiling-with-libsass-node-sass-and-grunt-sass), I will be all set.
