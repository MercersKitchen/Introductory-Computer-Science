// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean rectOn=false, circleOn=false;
color white=#000000;

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  population(); //illustrates multiple lines of code
  textSetup();
}//End setup()

void draw() {
  background(white);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  textDraw();
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
}//End mousePressed()
