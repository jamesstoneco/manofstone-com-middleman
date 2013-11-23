---
title: Perlin Noise
date: 2013/08/12
tags: studio, processing, artlab, toxi, arduino
---


I just picked up a copy of Daniel Shiffman's book The Nature of Code. In the preface he makes some really interesting analogies to walking algorithms and makes a proclamation, don't just use random(). Then he goes on to explain what perlin noise is both thematically and historically. He then states, "don't use perlin noise all the time."

SPLIT\_SUMMARY\_BEFORE\_THIS

So, it got me thinking and I did some experimentation in Processing 2. Started using the processing package in Sublime Text 2 and I have to say I much prefer this workflow, with the exception of how it spawns "helper" java apps for each time you run build.

I started by creating an abstraction for some of the color functionality of ToxicLibs. ToxicLibs is great, it is deep, but the documentation sucks. You are basicly stuck with the JavaDoc output which, while better than nothing, is not much better.

Much in the style of Daniel Shiffman's libraries I aimed to create a helper class that abstracts most of the commonly used functions and allows it to be used well in a processing context. You can pass it a single color and have it build a color scheme. It automatically sorts the colors by the distance to the original chosen color (the seed) and you can pick the next color in processing color / color() format by calling ColorPicker.nextC().

This can make for some much prettier color choices without much effort as you can see from the examples below. All using Perlin noise. The more vertical stripes use sin() modulating the y-axis based on the frameCount for displacement.

<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/studio/2013/perlin-noise/01.png"><img src="../../../images/studio/2013/perlin-noise/01.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/02.png"><img src="../../../images/studio/2013/perlin-noise/02.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/03.png"><img src="../../../images/studio/2013/perlin-noise/03.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/04.png"><img src="../../../images/studio/2013/perlin-noise/04.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/05.png"><img src="../../../images/studio/2013/perlin-noise/05.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/06.png"><img src="../../../images/studio/2013/perlin-noise/06.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/07.png"><img src="../../../images/studio/2013/perlin-noise/07.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/08.png"><img src="../../../images/studio/2013/perlin-noise/08.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/09.png"><img src="../../../images/studio/2013/perlin-noise/09.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/10.png"><img src="../../../images/studio/2013/perlin-noise/10.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/11.png"><img src="../../../images/studio/2013/perlin-noise/11.png" class="th" width="50" height="100"></a></li>
  <li><a href="../../../images/studio/2013/perlin-noise/12.png"><img src="../../../images/studio/2013/perlin-noise/12.png" class="th" width="50" height="100"></a></li>
</ul>
<br>

Feel free to experiment with the code below. If you create something interesting with it or want to chat about Perlin Noise or Color Systems in creative coding or art, leave a message in the comments.

<pre><code class="language-java">
// toxi core
import toxi.math.conversion.*;
import toxi.geom.*;
import toxi.math.*;
import toxi.geom.mesh2d.*;
import toxi.util.datatypes.*;
import toxi.util.events.*;
import toxi.geom.mesh.subdiv.*;
import toxi.geom.mesh.*;
import toxi.math.waves.*;
import toxi.util.*;
import toxi.math.noise.*;
// toxi color
import toxi.color.*;
import toxi.color.theory.*;


/*****
 * 
 *  a helper class to provide a fast interface to the toxiclib.color
 *  TColor and ColorList objects for experimentation
 *
 *****/

class ColorPicker {
  // color c;
  TColor tc;
  ColorList l;
  int count;


  ColorPicker(String _hex) {
    tc = TColor.newHex(_hex);
    count = 0;
  }

  ColorPicker(color _c) {
    this(hex(_c));
  }

  /*

  Fields in toxi.color.theory declared as ColorTheoryStrategy
  static ColorTheoryStrategy  ColorTheoryRegistry.ANALOGOUS 
  static ColorTheoryStrategy  ColorTheoryRegistry.COMPLEMENTARY 
  static ColorTheoryStrategy  ColorTheoryRegistry.COMPOUND 
  static ColorTheoryStrategy  ColorTheoryRegistry.LEFT_SPLIT_COMPLEMENTARY 
  static ColorTheoryStrategy  ColorTheoryRegistry.MONOCHROME 
  static ColorTheoryStrategy  ColorTheoryRegistry.RIGHT_SPLIT_COMPLEMENTARY
  static ColorTheoryStrategy  ColorTheoryRegistry.SINGLE_COMPLEMENT
  static ColorTheoryStrategy  ColorTheoryRegistry.SPLIT_COMPLEMENTARY
  static ColorTheoryStrategy  ColorTheoryRegistry.TETRAD
  static ColorTheoryStrategy  ColorTheoryRegistry.TRIAD

  */

  void colorSystem(ColorTheoryStrategy s) {
    l = ColorList.createUsingStrategy(s, tc);
    l = l.sortByDistance(false);
  }

  // experiment to build larger color systems, for example:
  // doubleSystem(ColorTheoryRegistry.TETRAD, ColorTheoryRegistry.ANALOGOUS)
  void doubleSystem(ColorTheoryStrategy sO, ColorTheoryStrategy sI) {
    l = new ColorList(); // reset values in list
    ColorList listO = ColorList.createUsingStrategy(sO, tc);
    for (int o = 0; o&lt;listO.size(); o++){
      ColorList listI = ColorList.createUsingStrategy(sI, listO.get(o));
      for (int i = 0; i&lt;listI.size(); i++){
        l.add(listI.get(i));
      }
    }
    l = l.sortByDistance(false);
  }

  color nextC() {
    color rC;
    if (count &gt;= l.size()) count = 0;
    rC =  this.p5c(l.get(count));
    count++;
    return rC;
  }

  color random() {
    return this.p5c(l.getRandom());
  }

  color complement() {
    return tc.getComplement().toARGB();
  }

  color darken(float _amt) {
    return tc.getDarkened(_amt).toARGB();
  }

  color darken(int _amt) {
    return tc.getDarkened(float(_amt)/100).toARGB();
  }

  color lighten(float _amt) {
    return tc.getLightened(_amt).toARGB();
  }

  color lighten(int _amt) {
    return tc.getLightened(float(_amt)/100).toARGB();
  }

  color p5c () {
    return color(tc.toARGB());
  }

  color p5c (TColor _tc) {
    return color(_tc.toARGB());
  }

}

ColorPicker pick;
float t = 0.0;
float x_off = 10000;
color myColor;
float brushSize = width/2;
float density = 0.001;

void setup(){
  size(512, 512);
  frameRate(1000); // froce high fps
  pick = new ColorPicker(&quot;00aec4&quot;);
  pick.colorSystem(ColorTheoryRegistry.COMPLEMENTARY);
  // pick.doubleSystem(ColorTheoryRegistry.COMPLEMENTARY, ColorTheoryRegistry.ANALOGOUS);
  // pick.doubleSystem(ColorTheoryRegistry.TETRAD, ColorTheoryRegistry.ANALOGOUS);
  background(pick.random());
}


void draw(){
  noStroke();
  fill(myColor, 10);    
  translate(-width/2, -height/2);
  scale(2);
  ellipse(noise(t+=density)*width, height/2 + sin(frameCount)*height/2, brushSize, brushSize);
  if (frameCount % int((width/2+10) - brushSize) == 0) { 
    brushSize *= 0.98;
  }
  if (frameCount % 1500 == 0) { 
    myColor = pick.nextC();
  }
  if (brushSize &lt; 1) brushSize = width/2;
}
</code></pre>

