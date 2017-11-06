Boolean verify = true;
float ellipseX = random(width);
float ellipseY = random(175+75, height);
float opacity = random(255);

void intro_screen1() {
  background(0);
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
    fill(255, 0, 0);
    triangle(width/2, 175+75/2, ellipseX-10, ellipseY-10, ellipseX+10, ellipseY+10);
  }
  
  fill(255, opacity);
  ellipse(ellipseX, ellipseY, 50, 50);

  if (verify) {
    ellipseX = random(width);
    ellipseY = random(175+75, height);
    opacity = random(255);
  }

  resetSettings();
}

void mousePressed() {
  if (screen == 2 && mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 175-75 && mouseY < 175+75) {
    if (verify) {
      verify = false;
    } else if  (!verify) {
      verify = true;
    }
  }
}