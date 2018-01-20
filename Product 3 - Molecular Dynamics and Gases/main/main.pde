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
PImage ideal_vs_non_ideal_text;
PImage imt_protein_text;
PImage periodic_trends_text;
PImage gas_evolution_text;
PImage gas_stoich_text;
PImage stoich_continued_text;
PImage gaseous_reaction_text;
PImage covalent_properties_text;
PImage collision_theory_text;
PImage collision_and_md_text;
PImage gas_simulation_text;
PImage acid_base_text;
PImage acid_explanation_text;
PImage md_relevance_text;
PImage math_text;
PImage more_math_text;
PImage math_continued_text;
PImage career_text;

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
  ideal_vs_non_ideal_text = loadImage("Ideal versus non-ideal gases.png");
  imt_protein_text = loadImage("Intermolecular forces and proteins.png");
  periodic_trends_text = loadImage("Importance of periodic trends.png");
  gas_evolution_text = loadImage("Gas evolution reactions.png");
  gas_stoich_text = loadImage("Gas stoichiometry.png");
  stoich_continued_text = loadImage("Stoich part 2.png");
  gaseous_reaction_text = loadImage("Example gaseous reaction.png");
  covalent_properties_text = loadImage("Compound properties.png");
  collision_theory_text = loadImage("Collision theory.png");
  collision_and_md_text = loadImage("Collision theory and MD.png");
  gas_simulation_text = loadImage("Gas phase simulation.png");
  acid_base_text = loadImage("Gaseous acid and bases.png");
  acid_explanation_text = loadImage("Acid base explanation.png");
  md_relevance_text = loadImage("MD relevance.png");
  math_text = loadImage("MD math.png");
  more_math_text = loadImage("Math part 2.png");
  math_continued_text = loadImage("Math continued.png");
  career_text = loadImage("Career opportunities.png");

  gas_particles = new ArrayList();
  reactant_particles = new ArrayList();

  reset_particles(gas_particles);
  reset_reaction(reactant_particles);

  //frameRate(5);
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

  case 12:
    simulation_explanation();
    break;

  case 13:
    intermolecular_protein();
    break;

  case 14:
    periodic_trends();
    break;

  case 15:
    gas_evolution();
    break;

  case 16:
    gas_stoich();
    break;

  case 17:
    stoich_continued();
    break;

  case 18:
    gaseous_reaction();
    break;

  case 19:
    covalent_properties();
    break;

  case 20:
    collision_theory();
    break;

  case 21:
    collisions_and_md();
    break;

  case 22:
    gas_phase_reaction();
    break;

  case 23:
    gas_simulation();
    break;

  case 24:
    acid_base();
    break;

  case 25:
    acid_explanation();
    break;

  case 26:
    md_relevance();
    break;

  case 27:
    math();
    break;

  case 28:
    more_math();
    break;

  case 29:
    math_continued();
    break;

  case 30:
    career();
    break;

  case 31:
    references();
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

  colorMode(RGB, 255, 255, 255);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT && screen != 31) {
      screen += 1;
      reset_reaction(reactant_particles);
      background(255);
    }
    if (keyCode == LEFT && screen != 0) {
      screen -=1;
      reset_reaction(reactant_particles);
      background(255);
    }
  }
}

void mousePressed() {
  if (screen == 11) {
    //non-ideal gas button
    if (mouseX < width && mouseX > 600) {
      if (mouseY < 100 && mouseY > 0) {
        ideal = false;
        reset_particles(gas_particles);
      }
    }

    //ideal gas button
    if (mouseX < 200 && mouseX > 0) {
      if (mouseY < 100 && mouseY > 0) {
        ideal = true;
        reset_particles(gas_particles);
      }
    }
  }

  if (screen == 31) {
    //button for last screen
    if (mouseX > width*0.25 - 175 && mouseX < width*0.25 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      screen = 0;
    }
    if (mouseX > width*0.75 - 175 && mouseX < width*0.75 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      link("https://docs.google.com/document/d/1mL24G07L57o8SZ0-QNCDlO19fi53S3kwMHCdoKTwNKo/edit?usp=sharing");
    }
  }
}