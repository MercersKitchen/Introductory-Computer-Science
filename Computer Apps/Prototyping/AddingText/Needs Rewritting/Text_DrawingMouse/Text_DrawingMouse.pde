/*
Author: Mark Mercer
Date: Nov 18
Purpose: Text to Canvas, adding font
*/

// Global Variables
PFont f1; //Adds a font variable

void setup () {
  size (700,700);  //Canvas Size
  
  f1 = createFont("vineta bt", 30, true); //Similar to load image but for fonts
    //Note: "FontName", size in pixels, boolean
  textFont(f1, 60); // Changes the font size I already made
   
}

void draw() {
  
  background(#FF03FB); // Purple
   
  textAlign(CENTER);  // Aligns text similar to WORD or Google DOCs
  // Moves the starting point to the middle
  // Similar for Images and shapes
  fill(#FEFF03); // Fill for text, yellow
  text("Come build a robot army!", mouseX, mouseY); //Text that moves
    
  textSize(50); // Measured in Pixels
  fill(255);  // Gray Scale
  text("Word", 150, 70); // First Print of "Word"
  
  fill(#859CF5);  // Blue
  text("Word", 20, 140); 
  
  fill(#859CF5, 200);  // Gray Scale
  text("Word", 90, 210); 
  
  ellipse (mouseY, mouseX, width/2, height/2); // Interactive Ellipse Shape
  // Play with interactions
  
  // noLoop(); //We now need Void Draw Loop
}

