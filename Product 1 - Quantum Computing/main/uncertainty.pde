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
}