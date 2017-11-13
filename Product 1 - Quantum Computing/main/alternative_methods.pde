PImage n_v_pair;
void alternative_methods() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Alternative materials", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Another method currently being tested to facilitate electron capture is through carbon \nlattices, with a particular focus on diamond.", 50, 100);
  text("In diamond, all carbon atoms are covalently bonded to neighbouring carbons, forming a \ncovalent network with extremely strong intermolecular forces.", 50, 170);
  text("When a carbon atom in the lattice is replaced with a nitrogen atom and another carbon \natom is removed, a nitrogen-vacancy pair (N-V) is created, where an extra electron is \ntrapped by an otherwise strong lattice (Derbyshire, 2014).", 50, 250);
  text("Silicon carbide (SiC) is another compound being experimented on as a way to capture \nelectrons (Abate, 2017).", 50, 350);
  text("Its lattice structure is not unlike diamond's, where \nsilicon atoms are covalently bonded to carbon atoms \nto form a covalent network.", 50, 420);
  text("Rather than nitrogen atoms replacing carbon atoms, \nsilicon atoms are instead removed to create colour \ncenters - areas in the lattice with one or more \nunpaired electrons (The Editors of Encyclopædia Britannica, 2006).", 50, 510);
  
  imageMode(CENTER);
  image(n_v_pair, 650, 480, 300, 175);
  textAlign(CENTER);
  textSize(10);
  text("(Thomas, 2012)", 650, 585);
  
  resetSettings();
}
void siC() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("SiC", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("SiC is an ionic compound, and is thus named silicon carbide, however, it is also known as \ncarborundum (Abate, 2017).", 50, 100);

  text("The following chemical reaction can occur to produce silicon carbide:", 50, 170);
  textAlign(CENTER);
  textSize(28);
  text("SiO2 + 3C --> SiC + 2CO", width/2, 220);
  
  textAlign(LEFT);
  textSize(18);
  text("This reaction is an example of a thermal degradation reaction (Weimer, 1997), which is in \nessence a chemical decomposition reaction caused by heat.", 50, 270);
  
  resetSettings();
}