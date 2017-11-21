//creates entangled electrons (circles)
float[][] entangled = new float[20][4]; 
float[][] colours = new float[20][3];
//see void updateElectrons() for creation of circles

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
        if (dist(entangled[i][0], entangled[i][1], entangled[i][2], entangled[i][3]) < 25) {
          check = false;
          break;
        }
      }
    }
  }
}
void tangle_explanation() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Entanglement", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Entanglement is when quantum particles are inextricably linked in perfect unison, \nregardless of the distance between them.", 50, 100);
  text("These particles are so fundamentally connected that even when placed at distances \napproaching infinity, such as on opposite ends of the universe, they will still act in \nperfect unison (\"Quantum computing 101\", 2013).", 50, 170);
  text("In the previous simulation, two like-coloured circles represent entangled electrons. \nWhen one electron was moved, the other moved too, despite there being no visible \nconnection between them.", 50, 270);
  text("In quantum computing, if the state of one qubit, the equivalent to a binary digit or bit of \nclassical computing (Rouse, 2005), is known, then its entangled qubit counterpart's state \nis known as well.", 50, 370);
  text("Describing a system of multiple qubits, i.e. a quantum computer, describes all the \ncorrelations between the different qubits, and not necessarily their individual states \n(Freiberger, 2015).", 50, 470);

  resetSettings();
}
void einstein_quote() {
  //creates cool background gradient colour
  for (int i = width; i > 0; i--) {
    stroke(map(i, width, 0, 0, 255));
    rectMode(CENTER);
    rect(width/2, height/2, i, i);
  }
  
  textAlign(CENTER);
  textSize(50);
  text("\"Spooky action at a distance\"", width/2, 250);
  
  textAlign(LEFT);
  textSize(25);
  text("-Albert Einstein on quantum entanglement", 100, 400);
  
  resetSettings();
}
void mouseDragged() {
  //move entangled electrons
  if (screen == 20) {
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