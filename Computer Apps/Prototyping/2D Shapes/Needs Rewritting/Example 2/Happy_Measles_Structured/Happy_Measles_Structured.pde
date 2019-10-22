//Happy Mealses, Structured Program

//Variables Go Here

void setup () {
  //Notice the overlap of lines, separated by 1 pixel
  size (501, 501);
  //fullScreen();
  //print("Screen Dimension" + "\n  My display width is ", + displayWidth + "\n  My dispaly hieght is " + displayHeight);

  ellipse (250, 250, 500, 500); // Face Shape
  ellipse (125, 125, 75, 75); // Eye,Left
  ellipse (375, 125, 75, 75); // Eye, Right
  rectMode (CENTER); // Change the Default from CORNER
  rect (250, 250, 50, 50); // Nose
  rect (250, 250+90, 250, 20); //Mouth
  rectMode (CORNER); // Change back to the Default
}

void draw () {
  noStroke(); // Change the default
  fill(#E02020); // Beuatiful Red colour
  ellipse (int(random(0, 502)), int(random(0, 502)), 10, 10); // Measles Start, Casting Review
  ellipse (random(0, 502), random(0, 502), 10, 10); // Measles Start, Casting Review with float
  ellipse (random(0, 502), random(0, 502), 10, 10);
  
  stroke(1); // so my eye get a black outline
  fill(255); // so my eye does not get a red colour
  ellipse (125, 125, 75, 75); // Eye,Left
  ellipse (375, 125, 75, 75); // Eye, Right
  rectMode (CENTER); // Change the Default from CORNER
  rect (250, 250, 50, 50); // Nose
  rect (250, 250+90, 250, 20); //Mouth
  rectMode (CORNER); // Change back to the Default
}

//void keyPressed () {}

//mousePressed () {}