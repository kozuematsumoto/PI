class PiDay {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  boolean pi;

  PiDay(int p, float i) {
    location = new PVector (width*QUARTER_PI, height);
    velocity = new PVector (i, 0);
    mass = PI+(p*PI);
    pi = true;
  }

  void update() {
    location.add(velocity);
    if (pi == true) {
      mass++;
    }
    if (pi ==false) {
      mass--;
    }
    if (mass > height*HALF_PI) {
      mass--;
      pi = false;
    }
    if (mass <0) {
      mass++;
      pi = true;
    }
    checkEdges();
  }

  void display(int p) {
    stroke(p*HALF_PI, p*HALF_PI, TWO_PI*TWO_PI*TWO_PI*TWO_PI);
    noFill();
    rectMode(CENTER);
    rotate(int(TWO_PI*PI));
    rect(location.x-mass, location.y-mass, mass, mass);
    println(mass);
  }

  void checkEdges()
  {
    if (location.x > width || location.x < 0)
    {
      velocity.x = -velocity.x;
    }
  }
  
  float mass()
  {
    return mass;
  }
}

