class Particle {
  float xpos, ypos, velocityX, velocityY, size;
  Particle(float x, float y, float velX, float velY, float r) {
    xpos = x;
    ypos = y;
    velocityX = velX;
    velocityY = velY;
    size = r;
  }
  void move() {
    xpos += velocityX;
    ypos += velocityY;
  }
  void update() {
    //background(255);
    ellipse(xpos, ypos, size * 2, size * 2);
  }
  //bounces ellipses back when they collide 
  void collision(ArrayList <Particle> gas_particles) {
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

void ideal_gas() {
  background(255);
  for (Particle p : gas_particles) {
    p.move();
    p.update();
    p.collision(gas_particles);
  }
}