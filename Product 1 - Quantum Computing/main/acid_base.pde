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
void titration_explanation() {
  background(0);
  fill(255);

  textAlign(CENTER);
  textSize(28);
  text("Titration", width/2, 50);

  textAlign(LEFT);
  textSize(18);
  text("Titration is a technique used to experimentally determine the concentration of an \nunknown solution. In most cases, a solution of known concentration, or the titrant, is \nadded to a known volume of an unknown concentration, or the analyte. Acid-base \ntitrations use pairs of acids and bases for the titrant and analyte (Clark, 2013).", 50, 100);
  text("An indicator is used to measure the pH of the mixed solutions. When it changes colour, it \nis known as the end point of the titration, when the acid and base neutralize each other. \nThe point at which two solutions are mixed together in exact proportions is known as the \nequivalence point.", 50, 225);
  text("In the previous example, a strong acid, the titrant, is added to a strong base, the analyte. \nThe pH starts at 14, and slowly decreases until near the equivalence point, where there is \na steep plunge in pH.", 50, 350);
  text("By knowing the volume of titrant added at the equivalence point, the concentration of the analyte can be calculated using the exact proportions of the acid to the base, i.e. the molar ratio, of the chemical reaction.", 50, 400);

  resetSettings();
}