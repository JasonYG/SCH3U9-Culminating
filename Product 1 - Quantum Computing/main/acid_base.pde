PImage curve;
void acid_base() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Acid-base calculations with quantum computers", width/2, 50);
  
  textAlign(LEFT);
  textSize(18);
  text("Tradtionally, acid-base calculations have been done by hand, either through an algebraic \napproach or a graphical estimate.", 50, 100);
  text("However, with new advancements in computer software, all of these tedious and \ntime-consuming calculations can be performed by a computer.", 50, 170);
  text("A Computer Algebra System program is capable of doing the calculations and displaying \nthe information graphically (Gambi, Toniolo, 2016).", 50, 250);
  
  imageMode(CENTER);
  image(curve, 620, 405, 315, 230);
  textAlign(CENTER);
  textSize(10);
  text("An example of a hand-made titration curve (Clark, 2013), \na graphical model used to determine the concentration \nof an unknown solution", 620, 540);
  
  textAlign(LEFT);
  textSize(18);
  text("Quantum computers would be able to perform \nthese calculations at a much faster rate than \nnormal computers. Google's D wave 2 system, a \nquantum computer, can outperform modern \nsupercomputers by more than 3 600 times, and \nthe average personal computer by 100 000 000 \ntimes (Olds, 2016).", 50, 320);
  
  resetSettings();
}