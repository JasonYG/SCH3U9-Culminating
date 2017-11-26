PImage uncertainty_equation;
void uncertainty() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Heisenberg's uncertainty principle", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("The uncertainty principle is a well known idea in quantum mechanics that, similarly to \nthe idea of superposition, states that it is impossible to know both the position and \nmomentum of a particle with absolute precision. Instead, the more we know about one \nvalue, the less we know about the other (Jha, 2013).", 50, 100);
  text("The following equation is a mathematical inequality that relates the standard deviation \nof the position and standard deviation of momentum: ", 50, 220);
  
  imageMode(CENTER);
  image(uncertainty_equation, width/2, 300, 275, 90);
  
  textAlign(LEFT);
  textSize(18);
  text("Delta x in this equation represents the uncertainty in position, delta p represents the \nuncertainty in momentum, and h bar represents Planck's constant divided by 2 pi. ", 50, 370);
  text("In order for this inequality to remain true, the product of the uncertainty in position \nand uncertainty in momentum must be always equal to or greater than Planck's constant \ndivided by 4 pi, meaning as one measurement, either the momentum or position, becomes \nmore and more accurate, the other will become less accurate.", 50, 430);
  text("", 50, 500);
}