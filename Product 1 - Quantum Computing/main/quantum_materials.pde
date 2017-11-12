PImage inAs;
void materials() {
  background(0);
  fill(255);
  
  textAlign(CENTER);
  textSize(28);
  text("Materials used in quantum computing", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Quantum computers use materials that are able to trap a single, isolated electron (Abate, \n2017).", 50, 100);
  text("Scientists are currently trying to create quantum computer chips that are reasonably \neasy to maintain.", 50, 170);
  text("One way of creating a laser-electron interaction chamber is through a quantum dot, a \nnanoparticle made of semiconductor material (Boysen, Muir, Dudley, Peterson).", 50, 250);
  text("Indium (III) arsenide (InAs), for example, is currently undergoing trials as a quantum dot.", 50, 320);
  text("Coupled with gallium arsenide (GaAs), these materials would serve as an excellent \nmechanism for trapping electrons.", 50, 370);
  text("Because indium gallium arsenide (InGaAs) is an alloy of InAs and GaAs, it takes on \nproperties of both compounds.", 50, 450);
  text("InGaAs is mainly used in electronics and optoelectronics for its effectiveness as a \nsemiconductor (\"What is InGaAs\").", 50, 530);
  
  resetSettings();
}

void inGaAs() {
  background(0);
  fill(255);
  
  textAlign(CENTER);
  textSize(28);
  text("More on InGaAs", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("InAs is an ionic compound, and is thus named indium arsenide. It has a high \nmelting point of 942 degrees celcius (AZoM, 2013) due to its intermolecular forces.", 50, 100);
  text("The ion-ion forces that hold it together require a lot of energy to break, hence the high \nmelting point.", 50, 170);
  text("GaAs is an ionic compound as well, and is thusly named gallium \narsenide. It shares many properties to InAs.", 50, 250);
  text("According to official chemical naming guidelines outlined by the \nInternational Union of Pure and Applied (IUPAC), the formal \nname of indium gallium arsenide is InXGa1-XAs, where X is the \nproportion of InAs and 1-X is the proportion of GaAs (\"International Union of Pure and \nApplied Chemistry\").", 50, 320);
  text("InGaAs is an excellent semiconductor due to its unusually high electron mobility. \nElectrons are able to move easily throughout the material.", 50, 470);

  imageMode(CENTER);
  image(inAs, 700, 270, 200, 200);
  textAlign(CENTER);
  textSize(10);
  text("Ionic lattice structure of InAs (B., 2017)", 700, 380);
  
  resetSettings();
}