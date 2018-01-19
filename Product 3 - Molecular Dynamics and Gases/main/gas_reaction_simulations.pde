class Reaction extends Particle {
  boolean bonded = false;
  Reaction(float xpos, float ypos, float velocityX, float velocityY, float size, boolean bonded) {
    super(xpos, ypos, velocityX, velocityY, size);
  }
  void react() {
    for (Reaction g : reactant_particles) {
      if (this == g) {
        continue;
      }
      if (!bonded) {
        if (dist(xpos, ypos, g.xpos, g.ypos) < size * 2) {
          velocityX = (velocityX + g.velocityX)/2;
          g.velocityX = velocityX;
          velocityY = (velocityY + g.velocityY)/2;
          g.velocityY = velocityY;
          bonded = true;
          g.bonded = true;
        }
      }
    }
  }
  void reacted_collision() {
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
    }
  }
}
void reset_reaction(ArrayList <Reaction> particles_list) {
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
        particles_list.add(new Reaction(x, y, xvel, yvel, size, false));
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
      } else {
        particles_list.add(new Reaction(x, y, xvel, yvel, size, false));
      }
    }
  }
}
void gas_phase_reaction() {
  background(255);
  for (Reaction g : reactant_particles) {
    g.move();
    g.update();
    if (!g.bonded) {
      g.collision();
    } else {
      g.reacted_collision();
    }
    g.react();
  }
}