/*
Author: Mark Mercer
 Date: Nov 2, 2017
 Purpose: Random, order of layers, while using drawing functions
 */

// Global Variables go here

// GUI Start goes here, beginning of program

void setup () {
  //Notice the overlap of lines, separated by 1 pixel
  size (501, 501); //Bigger than Happy Face, 500 by 500, since a boarder enables the dots to be seen
  //fullScreen();
  //print("Screen Dimension" + "\n  My display width is ", + displayWidth + "\n  My dispaly hieght is " + displayHeight);

  //background(116,62,219);      // Purple

  ellipse (250, 250, 500, 500); // Face Shape
  ellipse (125, 125, 75, 75); // Eye,Left
  ellipse (375, 125, 75, 75); // Eye, Right
  rectMode (CENTER); // Change the Default from CORNER
  rect (250, 250, 50, 50); // Nose

  // Changing the mouth to a line
  //rect (250, 250+90, 250, 20); //Mouth
  strokeWeight(50); // Mounth Line Set-up
  line( 125, 375, 375, 375); // Drawing the mouth
  rectMode (CORNER); // Change back to the Default
  strokeWeight(1); // Mounth Line Set-up
} // End of void setup

void draw () {

  int diameter; // Local Variable, need to move this

  //Printing Measles
  diameter = 15; //
  noStroke(); //
  fill(255, 0, 0); //
  ellipse(random(0, 500), random(0, 500), diameter, diameter);
  stroke(1); // Reset default
  fill(255); 
  ellipse (125, 125, 75, 75); // Eye,Left
}

/*
  Measles Issues: draw from center
 - Coordinate must be the diameter away from the edges of the canvas &
 2d Image for Body part
 body parts
 */