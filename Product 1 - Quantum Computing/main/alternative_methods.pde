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
  
  imageMode(CENTER);
  image(n_v_pair, 650, 480, 300, 175);
  textAlign(CENTER);
  textSize(10);
  text("(Thomas, 2012)", 650, 585);
}