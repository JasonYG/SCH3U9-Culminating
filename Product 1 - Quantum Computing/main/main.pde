/*
 * Author: Jason Guo
 * Revision Date: November 5, 2017
 * Program Name: Product 1 - Quantum Computing
 * Program Description:
 *         Program developed as a part of the SCH3U9 culminating project.
 */
int screen = 0; //for switching screens

PImage open_screen; //loads welcome screen

void settings() {
  size(800, 600);
  //fullScreen();
}

void setup() {
  open_screen = loadImage("open_screen.png");
}

void draw() {
  switch(screen) {
  case 0:
    opening_screen();
    break;

  case 1:
    intro_screen();
    break;
  }
}

/* resets all settings to default*/
void resetSettings() {
  rectMode(CORNER);
  imageMode(CORNER);
  textMode(CORNER);
  fill(0);
  strokeWeight(1);
  stroke(0);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      screen += 1;
      background(255);
    }
    if (keyCode == LEFT && screen != 0) {
      screen -=1;
      background(255);
    }
  }
}