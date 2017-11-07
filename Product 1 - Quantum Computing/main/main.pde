/*
 * Author: Jason Guo
 * Revision Date: November 5, 2017
 * Program Name: Product 1 - Quantum Computing
 * Program Description:
 *         Program developed as a part of the SCH3U9 culminating project.
 */
int screen = 0; //for switching screens

PImage open_screen; //loads welcome screen

PFont century; //loads font

void settings() {
  size(800, 600);
  //fullScreen();
}

void setup() {
  open_screen = loadImage("open_screen.png");

  century = createFont("Century_Regular.ttf", 50);
  textFont(century);
}

void draw() {
  switch(screen) {
  case 0:
    opening_screen();
    break;

  case 1:
    intro_screen();
    break;

  case 2:
    superposition();
    break;

  case 3:
    entanglement();
    break;
    
  case 4:
    explanation();
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
    if (keyCode == RIGHT) {
      screen += 1;
      background(0);
    }
    if (keyCode == LEFT && screen != 0) {
      screen -=1;
      background(0);
    }
  }
  if (screen != 3) {
    updateElectrons();
  }

  for (int i = 0; i < 20; i++) {
    //creates random colours that entangled electrons share
    colours[i][0] = random(255);
    colours[i][1] = random(255);
    colours[i][2] = random(255);
  }
}