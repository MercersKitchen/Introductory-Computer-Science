// Global Variables
int leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y;
int mouthLeftX, mouthLeftY, mouthRigthX, mouthRightY;
int measleDiameter;

void setup() {
  size(500, 500);
  //fullScreen();

  leftEyeX = width*1/4;
  leftEyeY = height*1/4;
  rightEyeX = width*3/4;
  rightEyeY = leftEyeY;
  eyeDiameter = width*1/8;
  nose1X = width*1/2;
  nose1Y = height*1/3;
  nose2X = width*2.5/4;
  nose2Y = height*2.5/4;
  nose3X = width*1.5/4;
  nose3Y = height*2.5/4;
  mouthLeftX = width*1/4;
  mouthLeftY = height*3/4;
  mouthRigthX = width*3/4;
  mouthRightY = mouthLeftY;
  measleDiameter = width*1/50; //Value = 10

  ellipse(width*1/2, height*1/2, width, height); // Face - Circle
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  line(mouthLeftX, mouthLeftY, mouthRigthX, mouthRightY);

  //Optional: ears, fill(),
}

void draw() {
  color red = #FF0303;
  fill(red);
  noStroke(); //outline of measles
  ellipse(random(width), random(height), measleDiameter, measleDiameter);
  fill(255); //default, gray scale
  stroke(1); //default

  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  line(mouthLeftX, mouthLeftY, mouthRigthX, mouthRightY);
}
