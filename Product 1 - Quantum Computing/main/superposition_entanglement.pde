Boolean verify = true;
float ellipseX = random(width);
float ellipseY = random(175+75, height);
float opacity = random(255);

//creates entangled electrons (circles)
float[][] entangled = new float[20][4]; 
float[][] colours = new float[20][3];
//see void setup() for creation of circles

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

void entanglement() {
  background(0);
  fill(255);

  textAlign(LEFT);
  textSize(28);
  text("The phenomena of...", 25, 30);

  textAlign(CENTER);
  textSize(28);
  text("ENTANGLEMENT", width/2, 100);

  for (int i = 0; i < 20; i++) {
    fill(colours[i][0], colours[i][1], colours[i][2]);
    ellipse(entangled[i][0], entangled[i][1], 50, 50);
    ellipse(entangled[i][2], entangled[i][3], 50, 50);
  }
  resetSettings();
}
void updateElectrons() {
  for (int i = 0; i < 20; i++) {
    Boolean check = false;
    while (!check) {
      check = true;
      entangled[i][0] = random(width);
      entangled[i][1] = random(120, height);
      entangled[i][2] = random(width);
      entangled[i][3] = random(120, height);
      for (int k = 0; k < i; k++) {
        if (k == i) {
          continue;
        }
        if (dist(entangled[i][0], entangled[i][1], entangled[k][0], entangled[k][1]) < 50 || dist(entangled[i][0], entangled[i][1], entangled[k][2], entangled[k][3]) < 50) {
          check = false;
          break;
        }
        if (dist(entangled[i][2], entangled[i][3], entangled[k][0], entangled[k][1]) < 50 || dist(entangled[i][2], entangled[i][3], entangled[k][2], entangled[k][3]) < 50) {
          check = false;
          break;
        }
      }
    }
  }
}
void explanation() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Superposition", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Superposition is the quantum phenomena in which quantum systems can exist in several \nstates at once until it is measured (\"Quantum computing 101\", 2013).", 50, 100);
  text("In the previous simulation, an electron, represented by the circle, is in multiple states at \nonce until observed with a laser, where it is forced to be in only one state. Each state was \nrepresented by the position and opacity of the electron.", 50, 170);
  text("In quantum computing, superposition is taken advantage of to perform many calculations \nsimultaneously.", 50, 270);
  text("Traditional computers make use of only ones and zeroes, whereas quantum computers \nmake use of ones, zeroes, and any \"superposition\" of ones and zeroes (\"Quantum \ncomputing 101\", 2013).", 50, 350); 
 
  resetSettings();
}
void explanation2() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Entanglement", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Entanglement is when quantum particles are inextricably linked in perfect unison, \nregardless of the distance between them.", 50, 100);
  text("These particles are so fundamentally connected that even when placed at distances \napproaching infinity, such as on opposite ends of the universe, they will still move in \nperfect unison (\"Quantum computing 101\", 2013).", 50, 170);
  text("In the previous simulation, two like-coloured circles represent entangled electrons. \nWhen one electron was moved, the other moved too, despite there being no visible \nconnection between them.", 50, 270);
  text("In quantum computing, if the state of one qubit, the equivalent to a binary digit or bit of \nclassical computing (Rouse, 2005), is known, then its entangled qubit counterpart's state \nis known as well.", 50, 370);
  text("Describing a system of multiple qubits, i.e. a quantum computer, describes all the \ncorrelations between the different qubits, and not necessarily their individual states \n(Freiberger, 2015).", 50, 470);
  
  resetSettings();
}
void mousePressed() {
  //button for laser
  if (screen == 2) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 175-75 && mouseY < 175+75) {
      if (verify) {
        verify = false;
      } else if  (!verify) {
        verify = true;
      }
    }
  }
}
void mouseDragged() {
  //move entangled electrons
  if (screen == 3) {
    for (int i = 0; i < 20; i++) {
      if (dist(mouseX, mouseY, entangled[i][0], entangled[i][1]) < 25 || dist(mouseX, mouseY, entangled[i][2], entangled[i][3]) < 25) {
            entangled[i][0] += mouseX - pmouseX;
            entangled[i][1] += mouseY - pmouseY;
            entangled[i][2] += mouseX - pmouseX;
            entangled[i][3] += mouseY - pmouseY;
            break;
      }
    }
  }
}