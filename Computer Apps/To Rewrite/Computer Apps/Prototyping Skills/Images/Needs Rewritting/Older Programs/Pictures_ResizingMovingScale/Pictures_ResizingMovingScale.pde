/*
Author: Mark Mercer
Date: Nov 10, 2015
Purpose: Importing Images
Unique Code: Local Variable
*/

void setup() {
  size (600, 600);    // Canvas Size original numbers 400, 600
  background(#0E43C4);      // Use Colour Selector
                            //Colour behind image, blue
                            // Based on images saved
}

void draw() {

  PImage pic1;    // Local Variable, reads 60Hz
                  // uses system resources :(
  pic1 = loadImage("ObiOneThumb.jpg");

  image(pic1, 0,0,width,height/4);    // Issue with Aspect Ratio
  
  //Look up image dimensions in preferences of image
  int widthObi = 259;    // Local Variable, image width
  int heightObi = 194;   // Local Variable, image height
  int space=20;            // Local Variable, space between images
  float scale = 1.1;  // Local Variable, for scaling the image
  
  image(pic1, 0, (height/4)+space, widthObi*scale, heightObi*scale);    // Prints original image
  // This image prints below other image, with a space, with scale
  // Lesson: moving & scale
  
  // Resize window
  // Move 2nd image from (0,0) to another coordinate that works
  // Use variables for moving
  // Load bike
  
 }

// This lessons sets up tint lesson


