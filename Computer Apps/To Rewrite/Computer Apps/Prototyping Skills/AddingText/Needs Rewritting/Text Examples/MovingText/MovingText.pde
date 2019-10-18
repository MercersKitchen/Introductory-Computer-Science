// Example that illustrates how to bring in fonts,
// initalling varaibles, and using variables to make
// interactive and appropriate to screen size

void setup(){
  size(800,400);
}
void draw(){
 background(239,240,31);  //yellow 
 
 PFont f1;
 f1 = createFont( "vineta bt", 15,true  );
 textFont(f1,15);
 fill(173,99,85);  //pink
 
 textAlign(CENTER);
 text("Come build a robot army!!!!", mouseX, 160); // X-value is
 // related to the mouse position, see below
 
 ellipse(mouseX, mouseY, 30,30);
}
