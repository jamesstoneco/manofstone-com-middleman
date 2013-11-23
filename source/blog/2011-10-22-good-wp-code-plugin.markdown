---
title: Good WP Code Snippet Plugin
date: 2011/10/22
tags: code, wordpress
---

I have been searching around for a good code snippet plugin for word press. I really like the style of [codecolorer](http://wordpress.org/extend/plugins/codecolorer/), however, I wanted something with a clean style and also would allow for the copy to clipboard functionality. A lot of the time I refer to my website in class and have students use processing or arduino code and having the copy button really simplifies things.

Today I came across [Easy Google Syntax Highlighter](http://wordpress.org/extend/plugins/easy-google-syntax-highlighter/) by Neil Burlock. It is incredibly easy to use, but not automatic, as codecolorer was.

SPLIT\_SUMMARY\_BEFORE\_THIS

You use it in the following way:

    
    <pre class="brush: java">
    void setup() {
        size(300,300);
    }
    
    void draw() {
        background(0);
        fill(255);
        rect(0,0,floor(random(width)),floor(random(height)));
    }
    </pre>


and you are provided with something like this:

    
    void setup() {
        size(300,300);
    }
    
    void draw() {
        background(0);
        fill(255);
        rect(0,0,floor(random(width)),floor(random(height)));
    }


There is also some additional documentation for the plug-in here on [Neil's Website](http://blog.burlock.org/wordpress/88-easy-google-syntax-highlighter-for-wordpress).
