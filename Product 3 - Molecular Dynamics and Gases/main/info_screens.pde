void intro_screen() {
  background(255);
  imageMode(CENTER);
  image(intro_text, width/2, height/2, width, height);
}

void how_MD_works() {
  background(255);
  imageMode(CENTER);
  image(how_MD_works_text, width/2, height/2, width, height);
}

void applications() {
  background(255);
  imageMode(CENTER);
  image(applications_text, width/2, height/2, width, height);
}

void applications_cont() {
  background(255);
  imageMode(CENTER);
  image(applications_cont_text, width/2, height/2, width, height);
}

void dab() {
  background(255);
  for (Particle p : gas_particles) {
    p.move();
    p.update();
  }
}