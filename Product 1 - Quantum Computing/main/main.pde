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

  inAs = loadImage("InAs lattice structure.png");

  band_gap = loadImage("Band gap diagram.png");

  free_energy1 = loadImage("free energy1.png");
  free_energy2 = loadImage("free energy2.png");

  n_v_pair = loadImage("nitrogen vacancy in diamond.jpg");
  siC_reaction = loadImage("SiC reaction.png");

  stoich1 = loadImage("Stoichiometry Part 1.png");
  stoich2 = loadImage("Stoichiometry Part 2.png");

  curve = loadImage("titration_curve.png");
  
  cat = loadImage("super cat.png");
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
    materials();
    break;

  case 3:
    inGaAs();
    break;

  case 4:
    semiconductor();
    break;

  case 5:
    semiconductor_continued();
    break;

  case 6:
    inAs_reaction();
    break;

  case 7:
    free_energy_calc();
    break;

  case 8:
    alternative_methods();
    break;

  case 9:
    siC();
    break;

  case 10:
    stoichiometry();
    break;

  case 11:
    stoichiometry2();
    break;

  case 12:
    acid_base();
    break;

  case 13:
    career();
    break;

  case 14:
    superposition();
    break;

  case 15:
    super_explanation();
    break;

  case 16:
    alive_or_dead();
    break;

  case 17:
    wrong();
    break;

  case 18:
    cat();
    break;
    
  case 19:
    entanglement();
    break;

  case 20:
    tangle_explanation();
    break;

  case 21:
    einstein_quote();
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
    if (keyCode == RIGHT && screen != 16) {
      screen += 1;
      background(0);
    }
    if (keyCode == LEFT && screen != 0) {
      screen -=1;
      background(0);
    }
  }
  if (screen != 4) {
    updateElectrons();
  }

  for (int i = 0; i < 20; i++) {
    //creates random colours that entangled electrons share
    colours[i][0] = random(255);
    colours[i][1] = random(255);
    colours[i][2] = random(255);
  }
}