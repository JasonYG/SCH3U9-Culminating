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

//loads all the information screens' text
PImage intro_text;
PImage how_MD_works_text; 
PImage applications_text;
PImage applications_cont_text;


ArrayList<Particle> gas_particles;

boolean verify = true;

void settings() {
  size(800, 600);
}

void setup() {
  open_screen = loadImage("open_screen.png");

  century = createFont("Century_Regular.ttf", 50);
  textFont(century);

  intro_text = loadImage("What is molecular dynamics.png");
  how_MD_works_text = loadImage("How MD works.png");
  applications_text = loadImage("Applications.png");
  applications_cont_text = loadImage("Applications continued.png");

  gas_particles = new ArrayList();

  //frameRate(10);
  reset_particles(gas_particles);

}

void draw() {
  switch(screen) {
  case 0:
    opening_screen();
    break;

  case 1:
    ideal_gas();
    break;

  case 2:
    how_MD_works();
    break;

  case 3:
    applications();
    break;

  case 4:
    applications_cont();
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