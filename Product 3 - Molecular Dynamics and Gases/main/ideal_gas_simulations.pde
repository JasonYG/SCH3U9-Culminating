class Particle {
  float xpos, ypos, velocityX, velocityY, size, a_force;
  Particle(float x, float y, float velX, float velY, float r) {
    xpos = x;
    ypos = y;
    velocityX = velX;
    velocityY = velY;
    size = r;

    float distance = dist(xpos, ypos, width/2, height/2);
    a_force = map(distance, 0, sqrt(sq(width/2) + sq(height/2)), 0.5, 0);
  }
  void move() {
    xpos += velocityX;
    ypos += velocityY;
  }

  void update() {
    float kinetic_energyX = map(abs(velocityX), 0, 10, 0, 255/2);
    float kinetic_energyY = map(abs(velocityY), 0, 10, 0, 255/2);
    float colour = kinetic_energyX + kinetic_energyY;

    //colorMode(HSB, 255);
    stroke(0);
    fill(colour, colour, colour);
    ellipse(xpos, ypos, size * 2, size * 2);
  }
  //bounces ellipses back when they collide 
  void collision() {
    //walls
    if (xpos + size > width) {
      xpos -= 10;
      velocityX *= -1;
    } else if (xpos  - size < 0) {
      xpos += 10;
      velocityX *= -1;
    }

    if (ypos + size > height) {
      ypos -= 10;
      velocityY *= -1;
    } else if (ypos  - size < 0) {
      ypos += 10;
      velocityY *= -1;
    }

    //each other
    for (Particle p : gas_particles) {
      if (p == this) {
        continue;
      }
      if (dist(xpos, ypos, p.xpos, p.ypos) < size * 2) {
        if (xpos < p.xpos) {
          xpos -= 10;
          p.xpos += 10;
        } else if (xpos > p.xpos) {
          xpos += 10;
          p.xpos -= 10;
        }

        if (ypos < p.ypos) {
          ypos -= 5;
          p.ypos += 5;
        } else if (ypos > p.ypos) {
          ypos -= 5;
          p.ypos += 5;
        }

        float vx = velocityX;
        float vy = velocityY;
        velocityX = p.velocityX;
        velocityY = p.velocityY;
        p.velocityX = vx;
        p.velocityY = vy;
      }
    }
  }
  void non_ideal_collision(ArrayList <Particle> gas_particles) {
    //walls
    if (xpos + size > width) {
      xpos -= 10;
      velocityX *= -1;
    } else if (xpos  - size < 0) {
      xpos += 10;
      velocityX *= -1;
    }

    if (ypos + size > height) {
      ypos -= 10;
      velocityY *= -1;
    } else if (ypos  - size < 0) {
      ypos += 10;
      velocityY *= -1;
    }

    //each other
    for (Particle p : gas_particles) {
      if (p == this) {
        continue;
      }
      if (dist(xpos, ypos, p.xpos, p.ypos) < size * 2) {
        if (xpos < p.xpos) {
          xpos -= 5;
          p.xpos += 5;
        } else if (xpos > p.xpos) {
          xpos += 5;
          p.xpos -= 5;
        }

        if (ypos < p.ypos) {
          ypos -= 5;
          p.ypos += 5;
        } else if (ypos > p.ypos) {
          ypos -= 5;
          p.ypos += 5;
        }
        float vx = velocityX;
        float vy = velocityY;
        velocityX = p.velocityX;
        velocityY = p.velocityY;
        p.velocityX = vx;
        p.velocityY = vy;
      }
      if (dist(xpos, ypos, p.xpos, p.ypos) > size * 2) {
        if (xpos > width/2 && velocityX > 0) {
          xpos -= a_force;
        } else if (xpos < width/2 && velocityX < 0) {
          xpos += a_force;
        }
      }
    }
  }
  void non_ideal_update() {
    for (Particle p : gas_particles) {
      if (this == p) {
       continue; 
      }
      if (dist(xpos, ypos, p.xpos, p.ypos) < size * 5) {
        stroke(100, 100);
        strokeWeight(5);
        line(xpos, ypos, p.xpos, p.ypos);
        resetSettings();
      }
    }
  }
}
void reset_particles(ArrayList <Particle> particles_list) {
  particles_list.clear();
  for (int i = 0; i < 20; i++) {
    verify = true;
    while (verify) {
      verify = false;

      float x = random(50, width-50);
      float y = random(50, height-50);
      float xvel = random(-10, 10);
      float yvel = random(-10, 10);
      float size = 20;

      if (i == 0) {
        particles_list.add(new Particle(x, y, xvel, yvel, size));
        break;
      }
      for (Particle p : particles_list) {
        if (dist(x, y, p.xpos, p.ypos) < size * 2 + 10) {
          verify = true;
          break;
        }
      }
      if (verify) {
        continue;
      } else {
        particles_list.add(new Particle(x, y, xvel, yvel, size));
      }
    }
  }
}

boolean ideal = true; //checks if ideal gas screen is present
void ideal_gas_simulation() {
  background(255);
  for (Particle p : gas_particles) {
    p.move();
    p.update();
    if (ideal) {
      p.collision();
    } else {
      p.non_ideal_collision(gas_particles);
      p.non_ideal_update();
    }
  }
  rectMode(CENTER);
  if (ideal) {
    fill(255);
    stroke(0);
    rect(100, 25, 200, 50);

    textAlign(CENTER);
    fill(0);
    text("IDEAL GAS", 100, 25);

    rectMode(CENTER);
    fill(255, 200);
    stroke(0, 50);
    rect(700, 25, 200, 50);

    textAlign(CENTER);
    fill(0, 50);
    text("NON-IDEAL GAS", 700, 25);
  } else {
    fill(255, 200);
    stroke(0, 50);
    rect(100, 25, 200, 50);

    textAlign(CENTER);
    fill(0, 50);
    text("IDEAL GAS", 100, 25);


    fill(255);
    stroke(0);
    rect(700, 25, 200, 50);

    textAlign(CENTER);
    fill(0);
    text("NON-IDEAL GAS", 700, 25);
  }
  resetSettings();
}

void mousePressed() {

  //non-ideal gas button
  if (mouseX < width && mouseX > 600) {
    if (mouseY < 100 && mouseY > 0) {
      ideal = false;
      reset_particles(gas_particles);
    }
  }

  //ideal gas button
  if (mouseX < 200 && mouseX > 0) {
    if (mouseY < 100 && mouseY > 0) {
      ideal = true;
      reset_particles(gas_particles);
    }
  }
}