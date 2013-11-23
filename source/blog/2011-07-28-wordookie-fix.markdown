---
title: Wordookie Processing Library Compiled for Java 1.5
date: 2011/07/28
tags: code, fix, library, processing, wordookie
---

I am playing around with the Wordookie (Worldle like) Processing library and had to recompile it with the Java 1.5 JDK which was a bit of a pain. It seems to be working for me now on Macosx and might save some people some time in working with the library. I am linking to the complete distribution with a recompiled Wordookie.jar file.

SPLIT\_SUMMARY\_BEFORE\_THIS

update:

this can also be resolved by turning off java 1.5 on the mac. You go to Applications/Utilities/Java Preferences, then turn off the java 1.5 option if you have 1.6. This seems to resolve a lot of these issues with other libraries.

here is the fix:

[Wordookie.zip](http://www.manofstone.com/wp-content/uploads/2011/07/Wordookie.zip)

This is to resolve the following bug:

`
UnsupportedClassVersionError: A library is using code compiled with an unsupported version of Java
`

discussed here:

[http://code.google.com/p/wordookie/issues/detail?id=1](http://code.google.com/p/wordookie/issues/detail?id=1)

The original Wordookie library can be found here:

[http://code.google.com/p/wordookie/](http://code.google.com/p/wordookie/)
