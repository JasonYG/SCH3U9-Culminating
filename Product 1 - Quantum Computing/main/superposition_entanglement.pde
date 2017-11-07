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
    fill(255, 0, 0);
    triangle(width/2, 175+75/2, ellipseX-10, ellipseY-10, ellipseX+10, ellipseY+10);
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
      if (dist(mouseX, mouseY, entangled[i][0], entangled[i][1]) < 50 || dist(mouseX, mouseY, entangled[i][2], entangled[i][3]) < 50) {
        entangled[i][0] += mouseX - pmouseX;
        entangled[i][1] += mouseY - pmouseY;
        entangled[i][2] += mouseX - pmouseX;
        entangled[i][3] += mouseY - pmouseY;
      }
    }
  }
}