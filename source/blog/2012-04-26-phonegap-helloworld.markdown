---
title: Hello World on Phonegap (Bundle not of found type)
date: 2012/04/26
tags: android, code, eclipse, java, mobile, phonegap
---


Today I was introduced to Phonegap by my friend Ethan Miller. It seems to be a great intermediate way to develop cross platform mobile applications. In going through the [Hello World Tutorial for Android](http://phonegap.com/start#android) I ran into an issue in Eclipse. Basically there are two additional import statements that are needed for the app to run. Here is the java code from my corrected Hello World example:


SPLIT\_SUMMARY\_BEFORE\_THIS


``` java cordovaExample.java    
package com.phonegap.helloworld;
// these next two lines were what had to be added for the example to compile
import android.app.Activity;
import android.os.Bundle;

import org.apache.cordova.*;
public class App extends DroidGap {
  /** Called when the activity is first created. */    
  @Override
  public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    super.loadUrl("file:///android_asset/www/index.html");    
  }
}
```




I couldn't find an answer online so I thought I would post this here in case anyone else runs into the same issue. I resolved it by looking at the included cordova example "cordovaExample.java".




