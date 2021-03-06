PImage cat;

Boolean verify = true;
float ellipseX = random(width);
float ellipseY = random(175+75, height);
float opacity = random(255);

void superposition() {
  background(0);
  fill(255);

  textAlign(LEFT);
  textSize(28);
  text("The phenomena of...", 25, 30);

  textAlign(CENTER);
  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("S", 50, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("U", 750*2/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("P", 750*3/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("E", 750*4/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("R", 750*5/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("P", 750*6/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("O", 750*7/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  }
  text("S", 750*8/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("I", 750*9/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("T", 750*10/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("I", 750*11/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("O", 750*12/13, 100);

  if (verify) {
    fill(random(255), random(255), random(255));
  } 
  text("N", 750, 100);

  rectMode(CENTER);
  fill(255);
  rect(width/2, 175, 200, 75);

  textMode(CENTER);
  fill(0);
  if (verify) {
    text("Shine a laser!", width/2, 180);
  } else if (!verify) {
    text("Turn off laser", width/2, 180);
  }

  if (!verify) {
    //draws red laser (triangle) to the ellipse
    fill(255, 0, 0);
    triangle(width/2, 175+75/2, ellipseX-15, ellipseY-15, ellipseX+15, ellipseY+15);
  }

  fill(255, opacity);
  if (verify) {
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
    ellipse(random(width), random(175+75, height), 50, 50);
  }
  ellipse(ellipseX, ellipseY, 50, 50);

  if (verify) {
    ellipseX = random(width);
    ellipseY = random(175+75, height);
    opacity = random(255);
  }

  resetSettings();
}


void super_explanation() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Superposition", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Superposition is the quantum phenomena in which quantum particles can exist in several \nstates at once until they are measured (\"Quantum computing 101\", 2013).", 50, 100);
  text("In the previous simulation, an electron, represented by the circle, is in multiple states at \nonce until it is observed with a laser, where it is forced to be in only one state. Each state \nwas represented by the position and opacity of the electron.", 50, 170);
  text("In quantum computing, superposition is taken advantage of to perform many calculations \nsimultaneously.", 50, 270);
  text("Traditional computers make use of only ones and zeroes, whereas quantum computers \nmake use of ones, zeroes, and any \"superposition\" of ones and zeroes (\"Quantum \ncomputing 101\", 2013).", 50, 350); 
  resetSettings();
}
void alive_or_dead() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Is this cat dead or alive?", width/2, 50);

  imageMode(CENTER);
  image(cat, width/2, 250, 550, 350);

  rectMode(CENTER);
  fill(255);
  rect(width*0.25, 510, 350, 120);
  textMode(CENTER);
  fill(0);
  textSize(50);
  text("DEAD", width*0.25, 525);

  rectMode(CENTER);
  fill(255);
  rect(width*0.75, 510, 350, 120);
  fill(0);
  textSize(50);
  text("ALIVE", width*0.75, 525);

  resetSettings();
}
void wrong() {
  background(255);
  fill(255, 0, 0);

  textAlign(CENTER);
  textSize(180);
  text("WRONG!", width/2, height/2);

  resetSettings();
}
void cat() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Schrödinger's cat", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Schrödinger's cat is a famous thought experiment used to point out the flaws in quantum \nmechanics, specifically superposition.", 50, 100);
  text("In the experiment, a cat is placed in a sealed box with a radioactive sample, a \nGeiger counter, and a bottle of poison. If the Geiger counter, which can detect radioactive \nmaterial, is triggered, then the bottle of poison will be smashed and the cat will be killed. .", 50, 170);
  text("However, due to the chances of the radioactive material decaying being around 50/50, \nthere is no way to predict if the cat is alive or dead until the box is opened and the cat is \nobserved (Merz, 2013)", 50, 270);
  text("According to quantum superposition principle, the cat would be both dead and alive until \nit was observed, however for objects as large as a cat, this does not make logical sense.", 50, 370);
  text("And such is why Schrödinger was skeptical of superposition.", 50, 445);
  text("It's ironic how this thought experiment is often used to explain superposition, when in \nreality, it was devised to illustrate the foolishness of quantum mechanics.", 50, 490);

  resetSettings();
}
void mousePressed() {
  //button for laser
  if (screen == 15) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 175-75 && mouseY < 175+75) {
      if (verify) {
        verify = false;
      } else if  (!verify) {
        verify = true;
      }
    }
  }
  //button for yes or no
  if (screen == 17) {
    if (mouseX > width*0.25 - 175 && mouseX < width*0.25 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      screen++;
    }
    if (mouseX > width*0.75 - 175 && mouseX < width*0.75 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      screen++;
    }
  }
  //button for last screen
  if (screen == 27) {
    if (mouseX > width*0.25 - 175 && mouseX < width*0.25 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      screen = 0;
    }
    if (mouseX > width*0.75 - 175 && mouseX < width*0.75 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
    link("https://docs.google.com/document/d/180rKx16U1ASxNJ6FdRtCwlIwd4RDjTyloptTSTgvDUo/edit?usp=sharing");
    }
  }
}