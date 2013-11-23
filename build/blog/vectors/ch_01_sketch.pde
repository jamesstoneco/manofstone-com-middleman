
class Organism {
  PVector loc;
  PVector vel;
  float h;
  float w;
  color c;
  float rot;
  int alpha;

  Organism() {
    loc = new PVector(width/2, height/2);
    vel = new PVector(0,0);
    h = 50;
    w = 50;
    if (random(0,1) > 0.1) {
      c = color(114, 103, 77);
    } else if (random(0,1) > 0.3) {
      c = color(139, 134, 103);
    } else {
      c = color(121, 120, 104);
    }
    rot = 0.0;
    alpha = 180;
  }

  // HACK: via Daniel Shiffman for p5js, http://shiffman.net/2011/02/03/rotate-a-vector-processing-js/
  void rotate2D(PVector v, float theta) {
    float xTemp = v.x;
    v.x = v.x*cos(theta) - v.y*sin(theta);
    v.y = xTemp*sin(theta) + v.y*cos(theta);
  }


  void calc() {
    loc = PVector.add(loc,vel);
    if (loc.x > width || loc.x < 0) {
      vel.mult(-1);
    }
    if (loc.y > height || loc.y < 0) {
      vel.mult(-1);
    }

  }

  void rotateThis(float r) {
    rot += r;
    rotate2D(vel, r);
  }

  void display() {
    calc();
    noStroke();
    fill(c, alpha);
    pushMatrix();
      translate(loc.x, loc.y);
      rotate(rot);
      ellipse(0, 0, w, h);
    popMatrix();
  }
}

class Diatom extends Organism {
  int offset;

  Diatom() {
    super();
    loc.x = random(0, width);
    loc.y = random(0, height);
    vel.x = random(-0.25,0.25);
    vel.y = random(0.01, 0.01);
    h = w/4;
    rot = random(-PI/3,PI/3);
    rotate2D(vel,rot);
    offset = floor(random(0,9));
  }

  void calc() {
    if ((frameCount + offset) % 10 == 0) {
      if (random(0,1) > 0.9) {
        vel.mult(-1);
      } else {
        rotateThis(random(-PI/30, PI/30));
      }
    }
    super.calc();
  }
}


class Amoeba extends Organism {
  float t;
  float t_inc;

  Amoeba() {
    super();
    loc.x = random(0, width);
    loc.y = random(0, height);
    c = color(153, 141, 141);
    vel.x = 3;
    vel.y = 3;
    h = 5;
    w = 5;
    t = 0.0;
    t_inc = 0.1;
  }

  void calc() {
    if (random(0,1) < 0.1) {
      rotateThis(noise(t+=t_inc*10));
    } else {
      rotateThis(noise(t+=t_inc)/10);
    }
    if (frameCount % 30 == 0) {
      // vel.setMag(random(0.1,5));
      // processing js compat below
      vel.normalize();
      vel.mult(random(0.1,5));
    }
    super.calc();
  }

}

ArrayList<Diatom> diatoms;
ArrayList<Amoeba> amoebas;
int spawn = 200;

void setup(){
  size(970, 247);
  diatoms = new ArrayList<Diatom>();
  amoebas = new ArrayList<Amoeba>();
  for (int i = 0; i < spawn; i++) {
    if (random(0,1) < 0.985) {
      Diatom d = new Diatom();
      diatoms.add(d);
    } else {
      Amoeba a = new Amoeba();
      a.t = random(0,10000); // seed for perlin noise offset
      amoebas.add(a);
    }
  }
}

void draw(){
  background(189, 192, 196);
  for (int i = 0; i < diatoms.size(); i++) {
    diatoms.get(i).display();
  }
  for (int i = 0; i < amoebas.size(); i++) {
    amoebas.get(i).display();
  }
}

