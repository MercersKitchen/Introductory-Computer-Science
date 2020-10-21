// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean rectOn=false, circleOn=false;
color white=#000000;

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  population();
  buttonX = width/2;
  buttonY = height/2;
  buttonWidth = width*1/5;
  buttonHeight = height*1/5;
  rectDisplayX = width*1/8;
  rectDisplayY = height*1/8;
  rectDisplayWidth = width*1/5;
  rectDisplayHeight = height*1/5;
  circleX = width*6/8;
  circleY = height*1/8;
  circleWidth = width*1/8;
  circleHeight = height*1/8;
}

void draw() {
  background(white);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  if (rectOn == true && circleOn == false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if (rectOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed() {
  // Booleans on and off
  println ("Before", rectOn, circleOn);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    if (rectOn == true) {
      rectOn = false;
      circleOn = true;
    } else {
      rectOn = true;
      circleOn = false;
    }
  }
  println ("After", rectOn, circleOn);
}
