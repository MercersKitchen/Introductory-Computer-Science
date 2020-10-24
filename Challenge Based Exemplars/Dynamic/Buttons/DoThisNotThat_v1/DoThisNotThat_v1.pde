// Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
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
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  textDraw1();
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  textDraw2();
  if (rectOn == true && circleOn == false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if (rectOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed() {
  // Booleans all off immeidately
  rectOn = false;
  circleOn = false;
  println ("Before", rectOn, circleOn);
  //
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) rectOn = true;
  if (mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) circleOn = true;;
  println ("After", rectOn, circleOn);
}//End mousePressed()
