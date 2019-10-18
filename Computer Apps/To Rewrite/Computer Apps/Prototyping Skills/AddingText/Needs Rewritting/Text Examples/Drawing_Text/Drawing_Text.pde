// Simple example illustrates printing text with
// different fills and 'fading'

void setup () {
  size (230, 160);
}

void draw() {
  textSize(32);
  fill(255);
  text("word", 10, 30); 
  fill(0, 102, 153);
  text("word", 10, 60);
  fill(0, 102, 153, 1);
  text("word", 10, 90);
}

// Question: change the last number in teh last 'fade' to 
// change based on mouseClicking (See mouseClicking Example)
