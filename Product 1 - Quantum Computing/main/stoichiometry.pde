PImage stoich1;
PImage stoich2;
void stoichiometry() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Creating a quantum chip of silicon carbide", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Using the mole, or 6.02214 x 10^23 particles, one can calculate the mass of the reactants \nand/or products in a chemical reaction. It can also be used to calculate the individual \nnumber of reactant or product particles.", 50, 100);
  text("The following is a stoichiometric calculation to create a 5 mm by 5 mm by 1 mm quantum \nchip of silicon carbide:", 50, 200);

  imageMode(CENTER);
  image(stoich1, width/2, 420, 700, 350);

  resetSettings();
}
void stoichiometry2() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Stoichiometry continued", width/2, 50);
  
  imageMode(CENTER);
  image(stoich2, width/2, 200, 700, 220);
  
  textAlign(LEFT);
  textSize(18);
  text("To summarize, to create a silicon carbide quantum chip that is 5 mm by 5 mm by 1 mm, \none would need 0.0237 g SiO2 and 0.0153 g C to produce 0.0158 g SiC.", 50, 350);
  text("All calculations were done using molar masses of atoms found on the periodic table ().", 50, 420);
}