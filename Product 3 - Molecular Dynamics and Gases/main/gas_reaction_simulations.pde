class Reaction extends Particle {
  boolean bonded;
  boolean red;
  int index;
  int connection;
  Reaction(float xpos, float ypos, float velocityX, float velocityY, float size, boolean bond, boolean r, int i) {
    super(xpos, ypos, velocityX, velocityY, size);
    bonded = bond;
    red = r;
    index = i;
  }
  void react() {
    for (Reaction g : reactant_particles) {
      if (this == g) {
        continue;
      }
      if (!bonded && !g.bonded) {
        if (dist(xpos, ypos, g.xpos, g.ypos) < size * 2) {
          if (red && !g.red) {
            if (abs(velocityX) > 3 || abs(velocityY) > 3) {
              velocityX = (velocityX + g.velocityX)/3;
              g.velocityX = velocityX;
              velocityY = (velocityY + g.velocityY)/3;
              g.velocityY = velocityY;

              bonded = true;
              connection = g.index;

              g.bonded = true;
              g.connection = index;
            }
          }
        }
      }
    }
  }
  void reactant_update() {
    float kinetic_energyX = map(abs(velocityX), 0, 10, 20, 100/2);
    float kinetic_energyY = map(abs(velocityY), 0, 10, 20, 100/2);
    float colour = kinetic_energyX + kinetic_energyY;

    colorMode(HSB, 359, 100, 100);
    stroke(0);
    if (red) {
      fill(359, 100, colour);
    } else {
      fill(231, 100, colour);
    }
    ellipse(xpos, ypos, size * 2, size * 2);


    for (Reaction p : reactant_particles) {
      if (bonded && p.bonded) {
        if (index == p.connection) {
          stroke(100);
          strokeWeight(5);
          line(xpos, ypos, p.xpos, p.ypos);
          resetSettings();
        }
      }
    }
  }

  void reactant_collision() {
    for (Reaction p : reactant_particles) {
      if (p == this) {
        continue;
      }
      //walls
      if (xpos + size > width) {
        xpos -= 5;
        velocityX *= -1;
      } else if (xpos  - size < 0) {
        xpos += 5;
        velocityX *= -1;
      }

      if (ypos + size > height) {
        ypos -= 5;
        velocityY *= -1;
      } else if (ypos  - size < 0) {
        ypos += 5;
        velocityY *= -1;
      }

      //other particles
      if (!p.bonded) {
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
      }
    }
  }



  void reacted_collision() {
    //walls
    for (Reaction g : reactant_particles) {
      if (this == g) {
        continue;
      }
      if (index == g.connection) {
        if (xpos + size > width) {
          velocityX *= -1;
          g.velocityX = velocityX;
          g.velocityY = velocityY;
        }

        if (xpos - size < 0) {

          xpos += 5;
          g.xpos += 5;
          velocityX *= -1;
          g.velocityX = velocityX;
          g.velocityY = velocityY;
        } else if (xpos + size < 0) {

          xpos += 5;
          g.xpos += 5;
          velocityX *= -1;
          g.velocityX = velocityX;
          g.velocityY = velocityY;
        }
        if (ypos + size > height) {

          ypos -= 5;
          g.ypos -= 5;
          velocityY *= -1;
          g.velocityY *= -1;
          g.velocityX = velocityX;
        } else if (ypos - size < 0) {

          ypos += 5;
          g.ypos += 5;
          velocityY *= -1;
          g.velocityY *= -1;
          g.velocityX = velocityX;
        }
      }
    }
  }
}

void reset_reaction(ArrayList <Reaction> particles_list) {
  particles_list.clear();
  boolean red;
  for (int i = 0; i < 20; i++) {
    if (i % 2 == 0) {
      red = true;
    } else {
      red = false;
    }
    verify = true;
    while (verify) {
      verify = false;

      float x = random(50, width-50);
      float y = random(50, height-50);
      int xvel = int(random(-10, 10));
      int yvel = int(random(-10, 10));
      float size = 20;

      if (i == 0) {
        particles_list.add(new Reaction(x, y, xvel, yvel, size, false, red, i));
        break;
      }
      for (Reaction p : particles_list) {
        if (dist(x, y, p.xpos, p.ypos) < size * 2 + 10) {
          verify = true;
          break;
        }
      }
      if (verify) {
        continue;
      } else if (red) {
        particles_list.add(new Reaction(x, y, xvel, yvel, size + 5, false, red, i));
      } else {
        particles_list.add(new Reaction(x, y, xvel, yvel, size - 5, false, red, i));
      }
    }
  }
}
void gas_phase_reaction() {
  background(255);
  for (Reaction g : reactant_particles) {
    g.move();
    g.reactant_update();
    if (!g.bonded) {
      g.reactant_collision();
      g.react();
    } else {
      g.reacted_collision();
    }
  }
  resetSettings();
}