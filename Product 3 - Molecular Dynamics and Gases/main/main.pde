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
PImage kmt_text;
PImage ideal_gas_text;
PImage non_ideal_gas_text;
PImage vdw_equation_text;
PImage intermolecular_text;
PImage sa_polarizability_text;

ArrayList<Particle> gas_particles;
ArrayList<Reaction> reactant_particles;

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
  kmt_text = loadImage("Kinetic Molecular Theory.png");
  ideal_gas_text = loadImage("Ideal Gases.png");
  non_ideal_gas_text = loadImage("Non-ideal Gases.png");
  vdw_equation_text = loadImage("Van der Waals equation.png");
  intermolecular_text = loadImage("Intermolecular forces.png");
  sa_polarizability_text = loadImage("SA and polarizability.png"); 
  
  
  
  gas_particles = new ArrayList();
  reactant_particles = new ArrayList();

  reset_particles(gas_particles);
  reset_reaction(reactant_particles);
}

void draw() {
  switch(screen) {
  case 0:
    opening_screen();
    break;

  case 1:
    gas_phase_reaction();
    //intro_screen();
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
  
  case 5:
    kmt();
    break;
    
  case 6:
    ideal_gas_screen();
    break;
    
  case 7:
    non_ideal_gas();
    break;
    
  case 8:
    vdw();
    break;
    
  case 9:
    intermolecular_forces();
    break;
    
  case 10:
    sa_polarizability();
    break;
    
  case 11:
    ideal_gas_simulation();
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