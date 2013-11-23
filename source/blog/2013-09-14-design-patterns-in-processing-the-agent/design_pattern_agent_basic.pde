class Agent {
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
      ellipse(0,0,20,20);
    popMatrix();
  }

}

// globals

ArrayList<Agent> agents;
int numberOfAgents = 100;

void setup(){
  size(256, 256);
  agents = new ArrayList<Agent>();
  for (int i = 0; i < numberOfAgents; i++) {
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