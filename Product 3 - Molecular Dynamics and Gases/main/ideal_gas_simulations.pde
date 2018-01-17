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

    if (xpos + size > width || xpos - size < 0) {
      velocityX *= -1;
    } 
    if (ypos + size > height || ypos  - size < 0) {
      velocityY *= -1;
    }
  }
  void update() {
    //background(255);
    ellipse(xpos, ypos, size * 2, size * 2);
  }
}

void ideal_gas() {
}