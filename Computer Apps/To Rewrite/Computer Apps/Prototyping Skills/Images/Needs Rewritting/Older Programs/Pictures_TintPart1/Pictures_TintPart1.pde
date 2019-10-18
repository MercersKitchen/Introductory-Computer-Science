/*
Author: Mark Mercer
Date: Nov 16
Purpose: Review Images and Learn Tint
Notes: issues with aspect ratio, padding, and fractions
*/

// Global Variables
int width1 = 0;  // Formulae based on Canvas Size
int height1 = 0;

int padding = 50; // space around images

PImage pic1;      // variable for tree-image
int treeWidth = 500;  // Dimensions of tree for aspect ratio
int treeHeight = 368;
float treeScale = 1.2;  // Used for changing aspect ratio

void setup() {
  size (1000, 1000); // Setup Canvas Size
  background(25, 155, 98); // RGB Value, Green
  // Use colour selctor if you do not like green
  // I am using images of trees, hence the colour green
  
  pic1 = loadImage("tree.jpg");  // Need parenthesis around name.ext
  
}

void draw() {

   // tint ();
  
  image(pic1, padding, padding, treeWidth/treeScale, treeHeight/treeScale );
  image(pic1, padding+treeWidth+padding, padding, treeWidth/treeScale, treeHeight/treeScale );
  image(pic1, padding, padding+treeHeight+padding, treeWidth/treeScale, treeHeight/treeScale );
  image(pic1, padding+treeWidth+padding, padding+treeHeight+padding, treeWidth/treeScale, treeHeight/treeScale );
  
  // Inifinite LOOP, turn it off
  // We have static image and we do want to use
  // System Resources
  noLoop ();
  
}

