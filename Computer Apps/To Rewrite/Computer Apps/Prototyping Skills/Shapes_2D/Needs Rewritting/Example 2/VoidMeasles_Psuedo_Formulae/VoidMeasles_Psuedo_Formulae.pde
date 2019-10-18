/*
Author: Mark Mercer
 Date: Nov 4, 2015
 Purpose: Random, order of layers, while using drawing functions
*/

// Global Variable
int diameter=7;                // Measles diameter variable
int width1 = 0;
int height1 = 0;

void setup () {
  size(300, 300);                // Keep the face small
  width1 = width;
  height1 = height;
  background(116, 62, 219);      // Purple
  rect(width1/6, height1/6, width1-(width1/6)-(width1/6), height1-(height1/6)-(height1/6));        // Border by 50 pixels
  ellipse(width1/2, height1/2, width1-(width1/6)-(width1/6), height1-(height1/6)-(height1/6));    // Face circle
}

void draw () {
  
  // Drawing Measles
  noStroke();
  fill(255, 0, 0);                // Fill measles red
  ellipse(  random((width1/6)+diameter, width1-(width1/6)-diameter), random((height1/6)+diameter, height1-(height1/6)-diameter), diameter, diameter);
  // Note the +- of diameter in the randome code, moves the measles over so they do not happen in the purple area
  
  // Try to do code for Ellipse Lines that fill in only on the face, similar to other program
    
  stroke (1);
  fill (255);
  ellipse(width1/3, height1/3, (width1-(width1/6)-(width1/6))/8, (height1-(height1/6)-(height1/6))/8);      // Right Eye
  ellipse(2*width1/3, height1/3, (width1-(width1/6)-(width1/6))/8, (height1-(height1/6)-(height1/6))/8);      // Left Eye
  
  strokeWeight(width1/6);              // Mounth Line Set-up
  line(width1/3, 2*height1/3, 2*width1/3, 2*height1/3);        // Drawing the mouth
  strokeWeight(1);                // Default
}


/*
Extending this code
Make the measles go in the circle, not on the rectangle
Make no part of the measle touch the purple - done
Hints: print the face circle first
Hints: change the random coordinates
*/



