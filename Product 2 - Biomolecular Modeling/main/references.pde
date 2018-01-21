void references() {
  background(255);

  textAlign(CENTER);
  textSize(50);
  fill(0);
  text("The End", width/2, height/2);

  rectMode(CENTER);
  noStroke();
  fill(0);
  rect(width*0.25, 510, 350, 120);
  textMode(CENTER);
  fill(255);
  textSize(30);
  text("Opening Screen", width*0.25, 520);

  rectMode(CENTER);
  noStroke();
  fill(0);
  rect(width*0.75, 510, 350, 120);
  fill(255);
  textSize(30);
  text("View References", width*0.75, 520);
}