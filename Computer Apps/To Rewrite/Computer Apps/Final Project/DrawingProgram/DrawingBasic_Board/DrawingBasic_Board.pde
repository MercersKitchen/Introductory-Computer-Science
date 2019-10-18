void setup() {
 size (400,400);
background(27,53,203);
}

void draw() {
 stroke(1);
line(mouseX,mouseY, mouseX, mouseY);
stroke(1);
strokeWeight(random(10));

}

void mouseDragged() {
stroke(#FFFFFF);
}

/* This program I have taught in class starting with a flat line draw with strikeWeight
//Variables

void setup() { size (600, 600); }

void draw() {}

void mousePressed() {}

void mouseDragged() {
  strokeWeight(random (1, 16));
  //line (10, 20, mouseX, mouseY);
  ellipse (mouseX, mouseY, 2, 2);
  strokeWeight(1); //resetting default
}
*/