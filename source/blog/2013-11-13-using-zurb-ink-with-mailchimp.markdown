---
title: Using Zurb Ink with MailChimp
date: 2013/11/13
time: 8:00 PM CET
tags: Zurb Ink, MailChimp, Email, rwd, responsive
signup_zurb: "true"
featured_image: /blog/featured-images/iphone-blur.jpg
---

Zurb Ink is for email as Zurb Foundation is for the web. [Zurb teased us late last year](http://zurb.com/article/1119/create-emails-for-any-device-introducing-) with their responsive email templates but they have now taken it one huge step further. They have created a easy to use responsive framework that is available with the same permissive MIT license. I wanted to see how difficult it would be to use this new framework with MailChimp, my newsletter and email provider. Turns out, it was super simple. Lets take a look at how I went about it.

SPLIT\_SUMMARY\_BEFORE\_THIS

Email and mobile email is becoming so important today. Not only is a lot of traffic going mobile but email is increasing an important tool for connecting with your audience and increasing engagement with your apps. Giving your customers a great mobile experience through email seems to be the next level of responsive design and modern website marketing and engagement.

I read through all the documentation and there is one big issue with Zurb Ink. Ironically, it isn't Microsoft technology (I'm looking at you IE) but rather from Google. The issue is with the Gmail app on android displaying the desktop style grid. However, the Gmail app for iOS works great. Go figure. Hopefully Google will catch on soon. Another note is this is just the Android Gmail app. If you use the built in android mail client it displays fine. Boo Google and awesome job MS, I commend you.

I wanted to send out a simple newsletter and I took some time to see what types of elements caused the largest distortion in that particular email client. I noticed that the large social media buttons at the bottom of most of the templates that Zurb provides seemed to be the most glaring. Maybe because of the bold colors.

I started with the [Newsletter Template](http://zurb.com/ink/templates.php) (included in the all templates download) and edited and removed what I didn't need. Here is what I ended up with:

<code><pre class="html">&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;
&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head&gt;
  &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;
  &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width&quot;/&gt;
  &lt;style&gt;
/**********************************************
* Ink v1.0.1 - Copyright 2013 ZURB Inc        *
**********************************************/

/* Client-specific Styles &amp; Reset */
...
  &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;table class=&quot;body&quot;&gt;
    &lt;tr&gt;
      &lt;td class=&quot;center&quot; align=&quot;center&quot; valign=&quot;top&quot;&gt;
        &lt;center&gt;
          &lt;table class=&quot;row header&quot;&gt;
            &lt;tr&gt;
              &lt;td class=&quot;center&quot; align=&quot;center&quot;&gt;
                &lt;center&gt;
                  &lt;table class=&quot;container&quot;&gt;
                    &lt;tr&gt;
                      &lt;td class=&quot;wrapper last&quot;&gt;
                        &lt;table class=&quot;twelve columns&quot;&gt;
                          &lt;tr&gt;
                            &lt;td class=&quot;six sub-columns&quot;&gt;
                              &lt;span class=&quot;template-label&quot;&gt;ZURB FOUNDATION 4 BLUEPRINTS&lt;/span&gt;
                            &lt;/td&gt;
                            &lt;td class=&quot;six sub-columns last&quot; style=&quot;text-align:right; vertical-align:middle;&quot;&gt;
                              &lt;span class=&quot;template-label&quot;&gt;NEWSLETTER&lt;/span&gt;
                            &lt;/td&gt;
                          &lt;/tr&gt;
                        &lt;/table&gt;
                      &lt;/td&gt;
                    &lt;/tr&gt;
                  &lt;/table&gt;
                &lt;/center&gt;
              &lt;/td&gt;
            &lt;/tr&gt;
          &lt;/table&gt;
          &lt;br&gt;
          &lt;table class=&quot;container&quot;&gt;
            &lt;tr&gt;
              &lt;td&gt;
                &lt;!-- content start --&gt;
                &lt;table class=&quot;row&quot;&gt;
                  &lt;tr&gt;
                    &lt;td class=&quot;wrapper last&quot;&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td&gt;
                            &lt;h3&gt;Email Subject/Headline&lt;/h3&gt;
                            &lt;p class=&quot;lead&quot;&gt;My intro paragraph.&lt;/p&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                    &lt;/td&gt;
                  &lt;/tr&gt;
                &lt;/table&gt;
                &lt;!-- Article List 1 --&gt;
                &lt;table class=&quot;row&quot;&gt;
                  &lt;tr&gt;
                    &lt;td class=&quot;wrapper&quot;&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td class=&quot;three sub-columns&quot;&gt;
                            &lt;!-- Top Left sub-grid --&gt;
                            &lt;img width=&quot;110&quot; height=&quot;110&quot; src=&quot;http://placehold.it/220&quot;&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;nine sub-columns last&quot;&gt;
                            &lt;!-- Top Right sub-grid --&gt;
                            &lt;h5&gt;Article 1&lt;/h5&gt;
                            &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, iusto, odio, blanditiis aliquam quod recusandae quas cum nihil placeat aliquid numquam vero iste corporis beatae?&lt;/p&gt;
                            &lt;!-- custom wrapped button --&gt;
                            &lt;table width=&quot;150&quot;&gt;
                              &lt;tr&gt;
                                &lt;td&gt;
                                  &lt;a class=&quot;button&quot; href=&quot;#&quot;&gt;
                                    &lt;table&gt;
                                      &lt;tr&gt;
                                        &lt;td&gt;
                                          Read article &amp;raquo;
                                        &lt;/td&gt;
                                      &lt;/tr&gt;
                                    &lt;/table&gt;
                                  &lt;/a&gt;
                                &lt;/td&gt;
                              &lt;/tr&gt;
                            &lt;/table&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td class=&quot;three sub-columns&quot;&gt;
                            &lt;!-- Top Left sub-grid --&gt;
                            &lt;img width=&quot;110&quot; height=&quot;110&quot; src=&quot;http://placehold.it/220&quot;&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;nine sub-columns last&quot;&gt;
                            &lt;!-- Top Right sub-grid --&gt;
                            &lt;h5&gt;Article 2&lt;/h5&gt;
                            &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, iusto, odio, blanditiis aliquam quod recusandae quas cum nihil placeat aliquid numquam vero iste corporis beatae?&lt;/p&gt;
                            &lt;!-- custom wrapped button --&gt;
                            &lt;table width=&quot;150&quot;&gt;
                              &lt;tr&gt;
                                &lt;td&gt;
                                  &lt;a class=&quot;button&quot; href=&quot;#&quot;&gt;
                                    &lt;table&gt;
                                      &lt;tr&gt;
                                        &lt;td&gt;
                                          Read article &amp;raquo;
                                        &lt;/td&gt;
                                      &lt;/tr&gt;
                                    &lt;/table&gt;
                                  &lt;/a&gt;
                                &lt;/td&gt;
                              &lt;/tr&gt;
                            &lt;/table&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                    &lt;/td&gt;
                  &lt;/tr&gt;
                &lt;/table&gt;
                &lt;!-- Panel with call to action --&gt;
                &lt;table class=&quot;row  callout&quot;&gt;
                  &lt;tr&gt;
                    &lt;td class=&quot;wrapper last&quot;&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td class=&quot;panel&quot;&gt;
                            &lt;p&gt;If you love Zurb Foundation, be sure to check out my other Zurb Related Articles. &lt;a href=&quot;http://www.manofstone.com/blog/zurb-foundation/&quot;&gt;Take me to the Blogosphere &raquo;&lt;/a&gt;&lt;/p&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                    &lt;/td&gt;
                  &lt;/tr&gt;
                &lt;/table&gt;
                &lt;br&gt;
                &lt;!-- Article List 2 --&gt;
                &lt;table class=&quot;row&quot;&gt;
                  &lt;tr&gt;
                    &lt;td class=&quot;wrapper&quot;&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td class=&quot;three sub-columns&quot;&gt;
                            &lt;!-- Top Left sub-grid --&gt;
                            &lt;img width=&quot;110&quot; height=&quot;110&quot; src=&quot;http://placehold.it/220&quot;&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;nine sub-columns last&quot;&gt;
                            &lt;!-- Top Right sub-grid --&gt;
                            &lt;h5&gt;Article 3&lt;/h5&gt;
                            &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, iusto, odio, blanditiis aliquam quod recusandae quas cum nihil placeat aliquid numquam vero iste corporis beatae?&lt;/p&gt;
                            &lt;!-- custom wrapped button --&gt;
                            &lt;table width=&quot;150&quot;&gt;
                              &lt;tr&gt;
                                &lt;td&gt;
                                  &lt;a class=&quot;button&quot; href=&quot;#&quot;&gt;
                                    &lt;table&gt;
                                      &lt;tr&gt;
                                        &lt;td&gt;
                                          Read article &amp;raquo;
                                        &lt;/td&gt;
                                      &lt;/tr&gt;
                                    &lt;/table&gt;
                                  &lt;/a&gt;
                                &lt;/td&gt;
                              &lt;/tr&gt;
                            &lt;/table&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                      &lt;table class=&quot;twelve columns&quot;&gt;
                        &lt;tr&gt;
                          &lt;td class=&quot;three sub-columns&quot;&gt;
                            &lt;!-- Top Left sub-grid --&gt;
                            &lt;img width=&quot;110&quot; height=&quot;110&quot; src=&quot;http://placehold.it/220&quot;&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;nine sub-columns last&quot;&gt;
                            &lt;!-- Top Right sub-grid --&gt;
                            &lt;h5&gt;Article 4&lt;/h5&gt;
                            &lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, iusto, odio, blanditiis aliquam quod recusandae quas cum nihil placeat aliquid numquam vero iste corporis beatae?&lt;/p&gt;
                            &lt;!-- custom wrapped button --&gt;
                            &lt;table width=&quot;150&quot;&gt;
                              &lt;tr&gt;
                                &lt;td&gt;
                                  &lt;a class=&quot;button&quot; href=&quot;#&quot;&gt;
                                    &lt;table&gt;
                                      &lt;tr&gt;
                                        &lt;td&gt;
                                          Read article &amp;raquo;
                                        &lt;/td&gt;
                                      &lt;/tr&gt;
                                    &lt;/table&gt;
                                  &lt;/a&gt;
                                &lt;/td&gt;
                              &lt;/tr&gt;
                            &lt;/table&gt;
                          &lt;/td&gt;
                          &lt;td class=&quot;expander&quot;&gt;&lt;/td&gt;
                        &lt;/tr&gt;
                      &lt;/table&gt;
                    &lt;/td&gt;
                  &lt;/tr&gt;
                &lt;/table&gt;
              &lt;!-- container end below --&gt;
              &lt;/td&gt;
            &lt;/tr&gt;
          &lt;/table&gt;
        &lt;/center&gt;
      &lt;/td&gt;
    &lt;/tr&gt;
  &lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;</pre></code>

The first time I opened one of these templates I was thinking, wow. This some sort of nested table bad dream. I thought we had moved past tables and started using divs for most of everything. Well, I guess when it comes to email, even mobile email we are still circa 1996. If you are interested in the real reason for the table use I suggest you check out [Zurb's original post](http://zurb.com/article/1119/create-emails-for-any-device-introducing-).

What is an improvement here though is the use of clearly labeled presentational class names. They look familiar because they use the old Zurb Foundation 3 naming convention: twelve columns, etc. What is nice here is you can just inline the css that comes with the framework in a style tag and that will get you set for the next step. Getting this all to work with MailChimp.

## MailChimp Integration

So how difficult was it to get it to work with MailChimp. Not difficult at all. I just copied and pasted all of this html, nested table nonsense and it gave me the option to auto inline the css. Everything looked great, just as I expected it.

<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/blog/2013/zurb-ink-mailchimp/mailchimp-preview-options.png"><img src="../../../images/blog/2013/zurb-ink-mailchimp/mailchimp-preview-options.png" class="th" width="200"></a></li>
  <li><a href="../../../images/blog/2013/zurb-ink-mailchimp/mailchimp-builtin-preview.png"><img src="../../../images/blog/2013/zurb-ink-mailchimp/mailchimp-builtin-preview.png" class="th" width="200"></a></li>
</ul>
<br>

If you have a paid monthly MailChimp account there is this great feature called inbox inspection. It is not instantaneous but it tests your email against either the top 10 email clients used on your list or your choice of 10. What is even better is that it is powered by Litmus, the same service that Zurb recommends for testing your emails. Just as a point of comparison, the cheapest Litmus account is the freelance account and it is $39 per month. Thank you MailChimp. If you are curious what types of results I got, check out the screenshots below.

<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/blog/2013/zurb-ink-mailchimp/inbox-inspection.png"><img src="../../../images/blog/2013/zurb-ink-mailchimp/inbox-inspection.png" class="th" width="200"></a></li>
</ul>

<br>

Have you started using Zurb Ink or is responsive email in your road map? I would love to hear about your thoughts about responsive email or if you have any questions about Zurb Ink. Just post in the comments.
