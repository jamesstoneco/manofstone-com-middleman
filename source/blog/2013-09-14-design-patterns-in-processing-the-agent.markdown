---
title: Design Patterns in Processing, the Agent
date: 2013/09/14
tags: studio, code, processing, patterns
featured_image: /blog/featured-images/grey-blocks.jpg
---

No this is not the GoF. You won't find Singletons or Factories or anything like that here. What I am attempting to define and describe are patterns used in Processing (p5) which could also be used in similar languages, libraries or applications that use OOP and have a game style loop.

SPLIT\_SUMMARY\_BEFORE\_THIS

## So what is the Agent and what is it used for?

The Agent is a way of abstracting the idea of a physical object, or rather something that is a representation of a physical object within our 2d/3d graphical world created in Processing. This Agent is self aware and supporting and contains everything it needs in order to interact with its world. It is often placed in an <span class="inline-code">ArrayList</span> with many tens, hundreds or thousands of its kind. It is the building block for many patterns in Processing and is similar to that of the Movie Clip from old school Adobe Flash.

Lets take a look at the basic Agent pattern:

<pre><code data-language="java">class Agent {
  PVector location;
  PVector velocity;
  PVector target;

  Agent() {
    location = new PVector();
  }

  Agent(float _x, float _y) {
    this();
    location.x = _x;
    location.y = _y;
  }

  void calc() { }

  void display() { }

}
</code></pre>

The keystone of our Agent class are the <span class="inline-code">PVector location, velocity, target</span> variables. These hold the current location of our Agent as well as its current velocity and targeting vector, if used.

Next we define our constructors. Another pattern you might see used a lot in Processing and Processing Libraries is chaining of multiple constructors. Basically, you can call <span class="inline-code">this()</span> or <span class="inline-code">super()</span> in the case of an inherited class to call the main constructor, usually where you instantiate objects contained within the class. In this case are going to instantiate our <span class="inline-code">PVector location</span>.

At the end we have two skeleton methods <span class="inline-code">void calc()</span> and <span class="inline-code">void display()</span>. The plan here is to call each method once per frame in our Processing / game style loop.

> You might be thinking, why have the <span class="inline-code">calc()</span> method? It seems easy enough to just do our calculations within our <span class="inline-code">display()</span> method. The reason you want to keep these methods separate is that it allows more flexibly in how your objects can be used. For example, if you want to do a time lapse video of your sketch, you can just call <span class="inline-code">calc()</span> n times for every frame.

Now lets take a look at how this works with a simple example. In this series I will be using an iterative approach by adding functionality and behavior by sometimes experimenting outside the Agent class followed by refactoring desired traits within Agent.

First, we must create some agents and place them somewhere on our grid.

<div class="row">
  <div class="medium-8 large-8 columns">
<pre><code data-language="java">class Agent {
  PVector location;
  PVector velocity;
  PVector target;

  Agent() {
    location = new PVector();
  }

  Agent(float _x, float _y) {
    this();
    location.x = _x;
    location.y = _y;
  }

  void calc() {
    // do nothing, yet
  }

  void display() {
    pushMatrix();
      translate(location.x, location.y);
      // draw stuff
      ellipse(0,0,50,50);
    popMatrix();
  }
}

// globals

ArrayList&lt;Agent&gt; agents;
int numberOfAgents = 100;

void setup(){
  size(512, 512);
  agents = new ArrayList&lt;Agent&gt;();
  for (int i = 0; i &amp;lt; numberOfAgents; i++) {
    Agent a = new Agent(random(0,width), random(0,height));
    agents.add(a);
  }
}

void draw(){
  background(127);
  for (Agent a: agents) {
    a.display();
  }
}
</code></pre>

  </div>
  <div class="medium-4 large-4 columns">
<div class="processing-js-canvas">
    <canvas id="design_pattern_agent_basic" data-processing-sources="design_pattern_agent_basic.pde">
    </canvas>
 </div>

  </div>
</div>

<br>

At this point we haven't really gone too much further but it is important to explain how we would use our Agent class out in the wild. You might be thinking that the <span class="inline-code">array</span> is the best place to keep them. Even though this is what they teach  in countless books and classes on Processing it is the wrong approach. You are almost always better off to use an ArrayList right from the start.

Let explain to you why this is the case:

* ArrayLists allow for concise iteration that is much more readable
* ArrayLists allow for quick and easy removal of elements via <span class="inline-code">ArrayList.remove(0)</span> or <span class="inline-code">ArrayList.remove(n)</span>
* ArrayLists allow for quick and easy expansion of elements via <span class="inline-code">ArrayList.add()</span>
* ArrayLists can be accessed non-sequentially using <span class="inline-code">ArrayList.get(n)</span>
* ArrayLists have been known to mutate and create amazing emergent art completely on their own

Okay, this is all true except for that last point. Lets take a look at both approaches side-by-side to better understand the differences and to hopefully cast aside our bad array habits once and for all:

<br>

<div class="row">
  <div class="medium-5 large-5 columns">
<pre><code data-language="java">// init
ArrayList&lt;Agent&gt; agents;

// instantiate
agents = new ArrayList&lt;Agent&gt;();
for (int i = 0; i &lt; n; i++) {
  Agent a = new Agent();
  agents.add(a);
}

// iterate
for (Agent a: agents) {
  a.display();
}

// remove last element
agents.remove(agents.size());

// remove first element
agents.remove(0);

// add one additional element
agents.add(new Agent());
</code></pre>

  </div>
  <div class="medium-2 large-2 columns">
    <h2 align="center">vs.</h2>
  </div>
  <div class="medium-5 large-5 columns">
<pre><code data-language="java">// init
Agent[] agents;

// instantiate
agents = new agents[n];
for (int i = 0; i &lt; n; i++) {
  Agent a = new Agent();
  agents[i] = a;
}

// iterate
for (int i = 0; i &lt; agents.length; i++) {
  agents[i].display();
}

// remove last element
agents = (Agent[]) shorten(agents);

// remove first element
agents = (Agent[]) subset(agents, 1, agents.length);

// add one additional element
agents = (Agent[]) expand(agents, agents.length + 1);
agents[agents.length] = new Agent();
</code></pre>
  </div>
</div>

Although things start off looking pretty similar one can easily identify the complexity of the syntax and the repetition of having to use the processing helper methods (not to knock these, they are great if you are in a pinch and stuck with an array to deal with) along with constantly casting your arrays can be less than ideal.

Lets continue our journey by adding some simple behavior and also tune our performance along the way. Take our next example:

<pre><code data-language="java">class Agent {
  PVector location;
  PVector velocity;
  PVector target;
  float   agentSize;
  int     agentColor;

  Agent() {
    location = new PVector();
    velocity = new PVector();
    agentSize = 50;
    agentColor = 255;
  }

  Agent(float _x, float _y) {
    this();
    location.x = _x;
    location.y = _y;
  }

  Agent(float _x, float _y, float _vx, float _vy) {
    this(_x, _y);
    velocity.x = _vx;
    velocity.y = _vy;
  }

  Agent(float _x, float _y, float _vx, float _vy, float _agentSize) {
    this(_x, _y);
    velocity.x = _vx;
    velocity.y = _vy;
    agentSize = _agentSize;
  }

  void calc() {
    location.add(velocity);
    // bounds
    if (location.y &gt; height) {
      velocity.y *= -0.75; // flip vector to 75% of previous
    }
    if (location.x &gt; width || location.x &lt; 0) {
      velocity.mult(-1); // flip vector
    }
    velocity.y += 0.25;
    if ((abs(velocity.y) &lt; 0.5) &amp;&amp; (height - location.y &lt; 3)) {
      velocity.y = 0;
      velocity.x = 0;
    }
  }

  void display() {
    pushMatrix();
      translate(location.x, location.y);
      noStroke();
      fill(agentColor);
      rect(0,0,agentSize, agentSize);
    popMatrix();
  }
}

// globals
ArrayList&lt;Agent&gt; agents;
int numberOfAgents = 7000;

void setup(){
  size(displayWidth, displayHeight, OPENGL);
  noSmooth();
  agents = new ArrayList&lt;Agent&gt;();
  for (int i = 0; i &lt; numberOfAgents; i++) {
    Agent a = new Agent(random(0,width), -20, random(-3, 3), random(-12, 3), random(5,20));
    a.agentColor = floor(random(127,255));
    agents.add(a);
  }
}

void draw(){
  background(127);
  for (Agent a: agents) {
    a.calc();
    if (random(0,1) &lt; 0.0001) a.velocity.mult(2); // 0.01% chance of 2x boost
    a.display();
  }
}
</code></pre>

<ul class="clearing-thumbs" data-clearing>
  <li><a href="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_01.png"><img src="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_01.png" class="th" width="200" height="150"></a></li>
  <li><a href="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_02.png"><img src="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_02.png" class="th" width="200" height="150"></a></li>
  <li><a href="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_03.png"><img src="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_03.png" class="th" width="200" height="150"></a></li>
  <li><a href="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_04.png"><img src="../../../images/blog/2013/design-patterns-in-processing-the-agent/7k_04.png" class="th" width="200" height="150"></a></li>
</ul>

<br>

In my next post I will break down this example piece by piece and explain how I am using the Agent pattern and what the benefits are. I will also show the power of the PVector class by moving the sketch from 2d to 3d with just a few modifications.

