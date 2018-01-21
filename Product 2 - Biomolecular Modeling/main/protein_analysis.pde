void protein_analysis() {
  //text
  background(255);
  textAlign(CENTER);
  textSize(30);
  fill(0);
  text("Amino acid analysis", width/2, 50);

  textSize(50);
  text("Try clicking on the atoms!", width/2, 125);

  textSize(30);
  text("PHENYLALANINE", (480 + 30)/2, 200);
  fill(0);

  //creates legend
  stroke(0);
  fill(200, 200, 200);
  rect(520, 180, 280, 420);

  textSize(25);
  fill(0);
  text("Legend", 660, 220);

  fill(0);
  ellipse(580, 270, 40, 40);
  textAlign(LEFT);
  //textSize();
  text("Carbon", 630, 275);

  fill(195, 139, 255);
  ellipse(580, 320, 30, 30);
  textAlign(LEFT);
  //textSize();
  text("Nitrogen", 630, 325);

  fill(255, 0, 0);
  ellipse(580, 370, 20, 20);
  textAlign(LEFT);
  //textSize();
  text("Oxygen", 630, 375);

  fill(0, 0, 255);
  ellipse(580, 420, 10, 10);
  textAlign(LEFT);
  //textSize();
  text("Hydrogen", 630, 425);

  textSize(10);
  fill(0);
  textAlign(CENTER);
  text("Note: this representation is NOT to scale, nor are \nthe bond angles completely accurate. The 3D covalent \nbonds are not shown, however it should be noted that \nthey should be there. Carbon atoms with 4 covalent bonds \nnormally form a tetrahedral shape, with 1 bond sticking out \nof the plane of the page and 1 sticking inwards. Lone pair \nelectrons have also been omitted.", 660, 470);

  benzene_atoms();
  connecting_carbons();
  amine_atoms();
  carboxyl_group();

  for (int i = 0; i < benzene.length; i++) {
    benzene[i].display();
  }

  for (int i = 0; i < connecting_carbons.length; i++) {
    connecting_carbons[i].display();
  }


  for (int i = 0; i < amine_group.length; i++) {
    amine_group[i].display();
  }

  for (int i = 0; i < carboxyl_group.length; i++) {
    carboxyl_group[i].display();
  }

  resetSettings();
}
void benzene_atoms() {
  color black = color(0, 0, 0);
  color blue = color(0, 0, 255);

  //carbon atoms
  benzene[0] = new Atom(80, 400, 40, black);
  benzene[1] = new Atom(80, 350, 40, black);
  benzene[2] = new Atom(130, 300, 40, black);
  benzene[3] = new Atom(180, 350, 40, black);
  benzene[4] = new Atom(180, 400, 40, black);
  benzene[5] = new Atom(130, 450, 40, black);

  //hydrogen atoms
  benzene[6] = new Atom(30, 450, 10, blue);
  benzene[7] = new Atom(30, 300, 10, blue);
  benzene[8] = new Atom(130, 250, 10, blue);
  benzene[9] = new Atom(230, 300, 10, blue);
  benzene[10] = new Atom(130, 500, 10, blue);

  //connecting carbon
  //benzene[10] = new Atom(230, 450, 30, black);
  //c-c bonds
  strokeWeight(5);
  line(benzene[0].xpos-5, benzene[0].ypos, benzene[1].xpos-5, benzene[1].ypos);
  line(benzene[0].xpos+5, benzene[0].ypos, benzene[1].xpos+5, benzene[1].ypos);

  line(benzene[1].xpos, benzene[1].ypos, benzene[2].xpos, benzene[2].ypos);

  line(benzene[2].xpos-5, benzene[2].ypos, benzene[3].xpos-5, benzene[3].ypos);
  line(benzene[2].xpos+5, benzene[2].ypos-2, benzene[3].xpos+5, benzene[3].ypos-2);

  line(benzene[3].xpos, benzene[3].ypos, benzene[4].xpos, benzene[4].ypos);


  line(benzene[4].xpos-5, benzene[4].ypos-2, benzene[5].xpos-5, benzene[5].ypos-2);
  line(benzene[4].xpos+5, benzene[4].ypos, benzene[5].xpos+5, benzene[5].ypos);

  line(benzene[5].xpos, benzene[5].ypos, benzene[0].xpos, benzene[0].ypos);

  //c-h bonds
  line(benzene[6].xpos, benzene[6].ypos, benzene[0].xpos, benzene[0].ypos);
  line(benzene[7].xpos, benzene[7].ypos, benzene[1].xpos, benzene[1].ypos);
  line(benzene[8].xpos, benzene[8].ypos, benzene[2].xpos, benzene[2].ypos);
  line(benzene[9].xpos, benzene[9].ypos, benzene[3].xpos, benzene[3].ypos);
  line(benzene[10].xpos, benzene[10].ypos, benzene[5].xpos, benzene[5].ypos);
}
void connecting_carbons() {
  color black = color(0, 0, 0);
  color blue = color(0, 0, 255);

  //carbons
  connecting_carbons[0] = new Atom(230, 450, 40, black);
  connecting_carbons[1] = new Atom(280, 400, 40, black);

  //hydrogens
  connecting_carbons[2] = new Atom(180, 500, 10, blue);
  connecting_carbons[3] = new Atom(280, 500, 10, blue);
  connecting_carbons[4] = new Atom(230, 350, 10, blue);


  //c-c bonds
  line(connecting_carbons[0].xpos, connecting_carbons[0].ypos, benzene[4].xpos, benzene[4].ypos);
  line(connecting_carbons[1].xpos, connecting_carbons[1].ypos, connecting_carbons[0].xpos, connecting_carbons[0].ypos);

  //c-h bonds
  line(connecting_carbons[0].xpos, connecting_carbons[0].ypos, connecting_carbons[2].xpos, connecting_carbons[2].ypos);
  line(connecting_carbons[0].xpos, connecting_carbons[0].ypos, connecting_carbons[3].xpos, connecting_carbons[3].ypos);
  line(connecting_carbons[1].xpos, connecting_carbons[1].ypos, connecting_carbons[4].xpos, connecting_carbons[4].ypos);
}

void amine_atoms() {
  color purple = color(195, 139, 255);
  color blue = color(0, 0, 255);

  //nitrogen
  amine_group[0] = new Atom(330, 350, 30, purple);

  //hydrogen
  amine_group[1] = new Atom(380, 300, 10, blue);
  amine_group[2] = new Atom(280, 300, 10, blue);

  //N-C bond
  line(connecting_carbons[1].xpos, connecting_carbons[1].ypos, amine_group[0].xpos, amine_group[0].ypos);
  line(amine_group[1].xpos, amine_group[1].ypos, amine_group[0].xpos, amine_group[0].ypos);
  line(amine_group[2].xpos, amine_group[2].ypos, amine_group[0].xpos, amine_group[0].ypos);
}
void carboxyl_group() {
  color red = color(255, 0, 0);
  color blue = color(0, 0, 255);
  color black = color(0, 0, 0);

  //oxygen atoms
  carboxyl_group[0] = new Atom(330, 500, 20, red);
  carboxyl_group[1] = new Atom(380, 400, 20, red);

  carboxyl_group[2] = new Atom(430, 450, 10, blue);
  carboxyl_group[3] = new Atom(330, 450, 40, black);

  //C-C bond
  line(carboxyl_group[3].xpos, carboxyl_group[3].ypos, connecting_carbons[1].xpos, connecting_carbons[1].ypos);

  //C-O bond
  line(carboxyl_group[3].xpos-5, carboxyl_group[3].ypos, carboxyl_group[0].xpos-5, carboxyl_group[0].ypos);
  line(carboxyl_group[3].xpos+5, carboxyl_group[3].ypos+2, carboxyl_group[0].xpos+5, carboxyl_group[0].ypos+2);

  line(carboxyl_group[3].xpos, carboxyl_group[3].ypos, carboxyl_group[1].xpos, carboxyl_group[1].ypos);

  //O-H bond
  line(carboxyl_group[2].xpos, carboxyl_group[2].ypos, carboxyl_group[1].xpos, carboxyl_group[1].ypos);
}

void mousePressed() {
  if (screen == 27) {
    //benzene
    for (Atom a : benzene)
      if (dist(mouseX, mouseY, a.xpos, a.ypos) < a.size) {
        link("https://docs.google.com/document/d/1uq_qG03nqhhOmmvW_icQ0hSETPFLKerClDcV698WWCo/edit?usp=sharing");
      }
    for (Atom a : connecting_carbons) {
      if (dist(mouseX, mouseY, a.xpos, a.ypos) < a.size) {
        link("https://docs.google.com/document/d/12oDxBRslmV3Z5L5teSBwM_vtHr4Xdz7k05s-D28OCkI/edit?usp=sharing");
      }
    }
    for (Atom a : amine_group) {
      if (dist(mouseX, mouseY, a.xpos, a.ypos) < a.size) {
        link("https://docs.google.com/document/d/1nAO__FU7NeL8TbL-pUHoFFt8J-KFmmPGzuQBldJDwLA/edit?usp=sharing");
      }
    }
    for (Atom a : carboxyl_group) {
      if (dist(mouseX, mouseY, a.xpos, a.ypos) < a.size) {
        link("https://docs.google.com/document/d/1A-M-yOlqYWNUW6pnmXZaTYj91x32rxg7Prk2nSHw1Lo/edit?usp=sharing");
      }
    }
  }
  if (screen == 29) {
    //button for last screen
    if (mouseX > width*0.25 - 175 && mouseX < width*0.25 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      screen = 0;
    }
    if (mouseX > width*0.75 - 175 && mouseX < width*0.75 + 175 && mouseY < 510 + 60 && mouseY > 510 - 60) {
      link("https://docs.google.com/document/d/1W9vRBRp9mxXjcBf6fRrAUFOia7qEltq7XL2usYoWDL4/edit?usp=sharing");
    }
  }
}