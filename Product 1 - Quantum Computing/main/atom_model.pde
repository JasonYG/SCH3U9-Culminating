PImage oxygen_diagram;
void quantum_model() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Quantum mechanical model of the atom", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("The quantum mechanical model of the atom was created based on our current \nunderstanding of the atom. It adds on to the now-obsolete Bohr-Rutherford diagram, \nwhich does not take into account electron degenerate orbitals, spin, subshells, and more.", 50, 100);
  text("Electrons have been discovered to occupy orbitals around the atom in energy levels. The \nenergy level number corresponds to the number of subshells present in that energy level. \nFor example, the third energy level would have three subshells, which have been named \n's', 'p', 'd' in order from closest to the atom to furthest.", 50, 200);
  text("Each subshell can be further split into degenerate orbitals. The splitting follows a pattern \nin which the first subshell does not split, the second subshell splits once, the third \nsubshell splits twice, and so on. Each degenerate orbital is occupied by oppositely-\nspinning electrons.", 50, 320);
  text("Oxygen, for example, has a total of 8 electrons and 2 energy levels. In the first energy \nlevel, there is only an 's' orbital with 2 electrons. In the second energy level, there is an 's' \norbital with 2 electrons, and a 'p' orbital with the remaining 4 electrons.", 50, 450);
  
  resetSettings();
}
void oxygen() {
  imageMode(CENTER);
  image(oxygen_diagram, width/2, height/2);
  
  resetSettings();
}