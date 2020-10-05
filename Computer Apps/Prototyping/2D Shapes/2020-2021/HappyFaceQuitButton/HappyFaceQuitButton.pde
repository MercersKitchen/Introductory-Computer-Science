//Global Variables
int reset;
int faceX, faceY, faceDiameter;
int leftEyeX, leftEyeY, leftEyeDiameter;
int rightEyeX, rightEyeY, rightEyeDiameter;
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
color red = #FF0303;
color measlesColor = red;
color white = 255;
color colorReset = white;
float measlesX, measlesY, measlesDiameter;
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple;
String quit = "X";
PFont titleFont;
color quitButtonPurple = #2C08FF;
color quitButtonColor = quitButtonPurple;

void setup() {
  size (700, 500);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  //String[] fontList = PFont.list(); //To list fonts available on OS
  //println("Start of Console");
  //printArray(fontList);
  //
  population();
  //
  //faceDraw();
  background(0);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}//End setup

void draw() {
  //
  if (mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight) { //Button Hoverover
    buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  fill(buttonColour); //Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(quitButtonColor);
  textAlign(CENTER, CENTER); //Aligns the X&Y
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, width*1/35);
  text(quit, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset
  //
  measlesX = random(width*1/2-height*1/2, width*1/2+height*1/2);
  measlesY = random(height);
  measlesDiameter = random(height*1/70, height*1/40);
  fill(measlesColor);
  //Parameters are randomly set ;)
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<width && mouseY>buttonY && mouseY<buttonHeight ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
