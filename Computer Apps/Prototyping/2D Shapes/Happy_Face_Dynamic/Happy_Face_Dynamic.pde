// Global Variables
int leftEyeX;
int leftEyeY;
int rightEyeX;
int eyeDiameter;
int measleDiameter;

void setup() {
  size(500, 500);

  leftEyeX = width*1/4;
  leftEyeY = height*1/4;
  int rightEyeX = width*3/4;
  int rightEyeY = leftEyeY;
  eyeDiameter = width*1/8;
  int nose1X = width*1/2;
  int nose1Y = height*1/3;
  float nose2X = width*2.5/4;
  float nose2Y = height*2.5/4;
  float nose3X = width*1.5/4;
  float nose3Y = height*2.5/4;
  int mouthLeftX = width*1/4;
  int mouthLeftY = height*3/4;
  int mouthRigthX = width*3/4;
  int mouthRightY = mouthLeftY;
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
}
