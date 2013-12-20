---
title: Mobile First and Why You Should Care (It's Optional)
date: 2013/12/10
time: 12:36 PM CET
tags: ZURB, ZURB Foundation, Responsive Web Design, Web Design, Mobile
featured_image: "/blog/featured-images/mobile-first-icons.jpg"
signup_zurb: "true"
---

ZURB Foundation went Mobile First in version 4. Version 5 is no different. Why would ZURB do that, and what is Mobile First anyways? Even [IBM](http://www.ibm.com/mobilefirst) is jumping on the Mobile First bandwagon.

SPLIT\_SUMMARY\_BEFORE\_THIS

Sometimes Foundation gets a bad rap for taking a Mobile First approach. Let me clear up one important thing first.

It is completely optional.

Don't like Mobile First? Prefer Desktop First, Tablet First or Paper First? No problem, ZURB Foundation has you covered.

What is important to know is that ZURB Foundation allows a Mobile First approach in its workflow and it is very simple to implement.

Basically you can start from your Mobile Design (previewing on a mobile device or a small width resized browser window) by using the small grid only such as <span class="inline-code">.small-4.columns</span>.

Then, after you have created your mobile interface, you can continue refine your desktop and tablet layouts adding [medium](zurb-foundation-5-medium-grid) and large grids to your existing small grid divs. Or, it is quite possible that you will like the simplicity of your mobile design and just leave it.

The Mobile First implementation in ZURB Foundation stems from a book of the same name written by ZURB Advisor [Luke Wroblewski](http://www.lukew.com/about/) published by A Book Apart. For more details, be sure to check out [my review of Mobile First](mobile-first-by-luke-wroblewski/).

The basic premise is this: if you design for desktop you will add all sorts of features and widgets adding a lot of complexity to your web app. By approaching your design from the mindset that it will be used on a mobile device it forces you to simplify your UX and UI.

This generally leads to more usable products. Specifically thinking about small screen size, large touch targets for buttons, simplified information displays, a distracted audience and only being able to press something with a single finger limit your options. Or in other words, apply huge constraints. But, as Luke explains in his book, this is a wonderful thing.

My advise, read the book.

It will only deepen your appreciation for ZURB Foundation, other frameworks that offer a Mobile First approach and better understanding of great UX in general.

Obviously this has had a tremendous impact on ZURB's philosophy as well as the philosophy of ZURB Foundation. You will see that a lot of elements (navbar, buttons, sections, clearing) provide an enhanced and mobile friendly UX and UI right out of the box.

* The navbar collapses to a hamburger menu and provides large touch targets.
* The buttons get expanded to full width on mobile.
* Sections change orientation to work better on a mobile device.
* The Clearing Gallery has larger targets and is even swipe gesture enabled.

You get this all automatically and you get all this for free. All without having to write a single extra line of code.

This all adds up to much faster prototyping, a much better UX and generally a much better workflow for rapid prototyping especially when taking a Mobile First approach.

If you haven't read the book and you haven't gone Mobile First yet, I highly recommend it with your next personal project.

Have you designed websites or apps taking a Mobile First approach? Did you find that it was useful or a waste of time? Have any questions about how any of this works?

If so, I would love to hear from you in the comments.

