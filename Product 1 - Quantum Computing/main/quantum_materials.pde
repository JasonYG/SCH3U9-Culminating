PImage inAs;
PImage band_gap;
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
  text("InAs is an ionic compound, and is thus named indium arsenide. It has a high \nmelting point of 942 degrees celsius (AZoM, 2013) due to its intermolecular forces.", 50, 100);
  text("The ion-ion forces that hold it together require a lot of energy to break, hence the high \nmelting point.", 50, 170);
  text("GaAs is an ionic compound as well, and is thusly named gallium \narsenide. It shares many properties to InAs.", 50, 250);
  text("According to official chemical naming guidelines outlined by the \nInternational Union of Pure and Applied Chemistry (IUPAC), the \nformal name of indium gallium arsenide is InXGa1-XAs, where X \nis the proportion of InAs and 1-X is the proportion of GaAs (\"International Union of Pure \nand Applied Chemistry\").", 50, 320);
  text("InGaAs is an excellent semiconductor due to its unusually high electron mobility. \nElectrons are able to move easily throughout the material.", 50, 480);

  imageMode(CENTER);
  image(inAs, 700, 270, 200, 200);
  textAlign(CENTER);
  textSize(10);
  text("Ionic lattice structure of InAs (B., 2017)", 700, 380);
  
  resetSettings();
}

void semiconductor() {
  background(0);
  fill(255);
  
  textAlign(CENTER);
  textSize(28);
  text("Semiconductors", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Semiconductors rely on almost-overlapping electron orbitals to conduct electricity \n(HyperPhysics, 2015).", 50, 100);
  text("The band gap, or the distance between the valence band and conduction band, must be \nsmall for a semiconductor to work.", 50, 170);
  text("The band gap of a material can be predicted using periodic trends; atoms with higher \nelectronegativity, especially non-metals towards the top right of the periodic table, have \nbigger band gaps due to their high effective nuclear charge (ENC) and empty conduction \nband (\"Bonds, Bands, and Doping: How Do LEDs Work?\", 2002).", 50, 250);
  text("Using the example of sodium (Na) and \nfluorine (F), Na's conduction band, or its three \nempty 3p degenerate orbitals, is close to its \nvalence band, or its 3s orbital, and it thus has a \nlow band gap. F, on the other hand, has a large \ndistance between its conduction band, the 3s \norbital, and its valence band, the 2p orbital, \ndue to its high ENC, which makes the radius of the atom smaller.", 50, 380);
  
  imageMode(CENTER); 
  image(band_gap, 620, 450, 350, 200);
  textAlign(CENTER);
  textSize(10);
  text("Band gap diagram (Wikimedia Commons, 2015)", 620, 560);
  
  resetSettings();
}
void semiconductor_continued() {
  background(0);
  fill(255);
  
  textAlign(CENTER);
  textSize(28);
  text("Semiconductors continued", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Semiconductors, because of their small band gap, have a conductivity between \nconductors and insulators. Conductors' conduction and valence band overlap, while \ninsulators have a large gap between their conduction and valence band.", 50, 100);
  text("Indium and gallium are all part of group 13 of the periodic table, or the boron group, and \nare characterized by having 3 valence electrons (Kotz, Treichel, Townsend, Raymond, \n2009).", 50, 200);
  text("Indium and gallium have similar electronegativities, at 1.78 and 1.81 respectively (Lide, \n2000). Indium arsenide has a small band gap of 0.354 eV, and gallium arsenide has a \nband gap of 1.424 eV (AZoM, 2013). These small band gaps allow for high electron \nmobility, due to there being less distance for electrons to travel, which in turn creates an \nexcellent semiconductor.", 50, 300);
  
}