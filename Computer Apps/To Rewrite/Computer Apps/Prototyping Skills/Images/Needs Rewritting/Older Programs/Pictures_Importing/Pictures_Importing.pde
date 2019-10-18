/*
Author: Mark Mercer
Date: Nov 10, 2015
Purpose: Importing Images
Unique Code: Local Variable
*/

void setup() {
  size (400, 600);    // Canvas Size
  background(#0E43C4);      // Use Colour Selector
                            //Colour behind image, blue
                            // Based on images saved
}

void draw() {

  PImage pic1;    // Local Variable, reads 60Hz
                  // uses system resources :(
  pic1 = loadImage("ObiOneThumb.jpg");

  image(pic1, 0,0,width,height/4);    // Issue with Aspect Ratio
  
  // Remember to use Copy and Paste
  // Include file extension
  
  
  // May need mini lesson on Aspect Ratio
}

