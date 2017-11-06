void intro_screen() {
  background(0);
  textFont(century);
  fill(255);
  
  textAlign(CENTER);
  textSize(28);
  text("What is quantum computing?", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Quantum computers are systems based on light rather than electricity.", 50, 100);
  text("They work by isolating spinning electrons in a new type of semiconductor material, then \nwhen a laser strikes an electron, it reveals which way it is spinning (Abate).", 50, 150);
  text("When the laser strikes an electron, its spin state is revealed through the quanta of light \nemitted (Wiener).", 50, 225);
  text("These spin states replace the ones and zeroes of traditional computing.", 50, 300);
  text("Ordinary computers can only have ones and zeroes, whereas in quantum computers, an \nelectron may have many possible spin states, creating a greater range of possibilities for \nmore complex computing.", 50, 340);
  text("In contemporary times, we lack the technology to obtain information on the interactions \nbetween light and electrons easily.", 50, 450);
  text("Some companies, for example, rely on materials supercooled to near absolute zero, which \nis highly inefficient.", 50, 520);
  
  resetSettings();
}