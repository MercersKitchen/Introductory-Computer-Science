void setup () {
  size (300,300);  //Canvas Size
}

void draw() {
  textSize(50); // Measured in Pixels
  fill(255);  // Gray Scale
  text("Word", 20, 70); // First Print of "Word"
  
  fill(#859CF5);  // Blue
  text("Word", 20, 140); 
  
  fill(#859CF5, 200);  // Gray Scale
  text("Word", 20, 210); 
  
  noLoop(); //Do not need the Void Draw Loop
}

