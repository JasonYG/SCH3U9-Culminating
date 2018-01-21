class Atom {
  float xpos, ypos, size;
  color colour;
  Atom(float x, float y, float r, color c) {
    xpos = x;
    ypos = y;
    size = r;
    colour = c;
  }
  void display() {
    noStroke();
    fill(colour);
    ellipse(xpos, ypos, size, size);

    resetSettings();
  }
}