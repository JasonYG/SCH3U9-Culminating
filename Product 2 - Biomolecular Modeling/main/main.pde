/*
 * Author: Jason Guo
 * Revision Date: January 20, 2018
 * Program Name: Product 2 - Biomolecular Modelling 
 * Program Description:
 *         Program developed as a part of the SCH3U9 culminating project.
 */

int screen = 0; //for switching screens

PImage open_screen; //loads welcome screen

PFont century; //loads font

//loads information screens
PImage intro_text; //loads intro screen text
PImage background_text; //loads background screen text
PImage hydrocarbon_text; //loads hydrocarbon screen text
PImage hydrocarbon_naming; //loads hydrocarbon naming text
PImage alcohol_text; 
PImage alcohol_naming_text;
PImage alcohol_properties_text;
PImage carboxylic_acids_text;
PImage carboxylic_properties_text;
PImage periodic_trends_text;
PImage more_trends_text;
PImage relevance_to_orgo;
PImage amino_acids_text;
PImage bio_reactions_text;
PImage condensation_text;
PImage example_reaction_text;
PImage energy_change_text;
PImage redox_text;
PImage redox_reaction_text;
PImage stoich_text;
PImage stoich_continued;
PImage organic_acid_bases_text;
PImage pka_text;
PImage pka_ph_text;
PImage organic_base_text;
PImage acidity_of_carboxylic_acids_text;
PImage career_text;

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
  alcohol_text = loadImage("Alcohol information.png");
  alcohol_naming_text = loadImage("Alcohols continued.png");
  alcohol_properties_text = loadImage("More properties.png");
  carboxylic_acids_text = loadImage("Carboxylic acids.png");
  carboxylic_properties_text = loadImage("Properties of carboxylic acids.png");
  periodic_trends_text = loadImage("Connection to periodic trends.png");
  more_trends_text = loadImage("More periodic trends.png");
  relevance_to_orgo = loadImage("Importance in biological molecules.png");
  amino_acids_text = loadImage("Amino acids and proteins.png");
  bio_reactions_text = loadImage("Biological reactions.png");
  condensation_text = loadImage("Creating proteins.png");
  example_reaction_text = loadImage("Example reaction.png");
  energy_change_text = loadImage("Free energy change.png");
  redox_text = loadImage("Redox reactions.png");
  redox_reaction_text = loadImage("Example redox reaction.png");
  stoich_text = loadImage("The mole and stoichiometry.png");
  stoich_continued = loadImage("Stoichiometry continued.png");
  organic_acid_bases_text = loadImage("Organic acids and bases.png");
  pka_text = loadImage("Calculating pKa.png");
  pka_ph_text = loadImage("Relating pKa and pH.png");
  organic_base_text = loadImage("Example of an organic base.png");
  acidity_of_carboxylic_acids_text = loadImage("Acidity of carboxylic acids.png");
  career_text = loadImage("Career opportunities.png");
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

  case 5:
    alcohol_properties();
    break;

  case 6:
    carboxylic_acids();
      break;

  case 7:
    carboxylic_properties();
    break;

  case 8:
    periodic_trends();
    break;

  case 9:
    more_trends();
    break;

  case 10:
    relevance_to_orgo();
    break;

  case 11:
    amino_acids();
    break;

  case 12:
    bio_reactions();
    break;

  case 13:
    condensation();
    break;

  case 14:
    example_reaction();
    break;

  case 15:
    energy_change();
    break;

  case 16:
    redox();
    break;

  case 17:
    redox_reaction();
    break;

  case 18:
    stoich();
    break;

  case 19:
    stoich_continued ();
    break;

  case 20:
    organic_acid_bases();
    break;

  case 21:
    pka();
    break;

  case 22:
    pka_ph();
    break;

  case 23:
    organic_base();
    break;

  case 24: 
    acidity_of_carboxylic_acids();
    break;

  case 25:
    career();
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