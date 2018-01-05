/*
 * Author: Jason Guo
 * Revision Date: January 5, 2018
 * Program Name: Product 3 - Molecular Dynamics and Gases
 * Program Description:
 *         Program developed as a part of the SCH3U9 culminating project.
 */

int screen = 0; //for switching screens

PImage open_screen; //loads welcome screen

PFont century; //loads font

PImage intro_text; //loads intro screen text

void settings() {
  size(800, 600);
}

void setup() {
  open_screen = loadImage("open_screen.png");

  century = createFont("Century_Regular.ttf", 50);
  textFont(century);

  intro_text = loadImage("What is molecular dynamics.png");
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
  ellipseMode(CENTER);
  imageMode(CORNER);
  textMode(CORNER);

  fill(0);
  strokeWeight(1);
  stroke(0);

  textSize(18);
  textAlign(LEFT);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT /*&& screen != PUT END SCREEN NUMBER HERE*/) {
      screen += 1;
      background(255);
    }
    if (keyCode == LEFT && screen != 0) {
      screen -=1;
      background(255);
    }
  }
}