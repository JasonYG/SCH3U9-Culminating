PImage free_energy1;
PImage free_energy2;
void inAs_reaction() {  
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Creating InAs", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("The following chemical reaction can occur to produce indium arsenide:", 50, 100);
  
  textAlign(CENTER);
  textSize(28);
  text("In + As --> InAs", width/2, 150);
  
  textAlign(LEFT);
  textSize(18);
  text("This is a typical synthesis chemical reaction that can produces InAs. The following is the \ncalculation of the change in free energy of this reaction (per mole at 298 K):", 50, 200);
  
  imageMode(CENTER);
  image(free_energy1, width/2, 400, 700, 300);
  
  
  resetSettings();
}
void free_energy_calc() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Free energy", width/2, 50);
  
  imageMode(CENTER);
  image(free_energy2, width/2, 220, 700, 300);
  
  textAlign(LEFT);
  textSize(18);
  text("Since the free energy is negative, this implies that the reaction is spontaneous \n(Libretexts, 2016), and is exergonic.", 50, 415);
  
  resetSettings();
}