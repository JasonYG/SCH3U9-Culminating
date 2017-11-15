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

void cat() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Schrödinger's cat", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Schrödinger's cat is a famous thought experiment used to point out the flaws in quantum \nmechanics, specifically superposition.", 50, 100);
}

void mousePressed() {
  //button for laser
  if (screen == 14) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 175-75 && mouseY < 175+75) {
      if (verify) {
        verify = false;
      } else if  (!verify) {
        verify = true;
      }
    }
  }
}