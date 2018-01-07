/*
 * Author: Jason Guo
 * Revision Date: January 5, 2018
 * Program Name: Product 2 - Biomolecular Modelling 
 * Program Description:
 *         Program developed as a part of the SCH3U9 culminating project.
 */

int screen = 0; //for switching screens

PImage open_screen; //loads welcome screen

PFont century; //loads font

PImage intro_text; //loads intro screen text
PImage background_text; //loads background screen text
PImage hydrocarbon_text; //loads hydrocarbon screen text
PImage hydrocarbon_naming; //loads hydrocarbon naming text

void settings() {
  size(800, 600);
}

void setup() {
  open_screen = loadImage("open_screen.png");

  century = createFont("Century_Regular.ttf", 50);
  textFont(century);
  
  intro_text = loadImage("What is biomolecular modeling.png");
  background_text = loadImage("Background information.png");
  hydrocarbon_text = loadImage("Hydrocarbons.png");
  hydrocarbon_naming = loadImage("Hydrocarbon naming.png");

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
    background_info();
    break;
    
  case 3:
    hydrocarbon_info();
    break;
    
  case 4:
    hydrocarbon_table();
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