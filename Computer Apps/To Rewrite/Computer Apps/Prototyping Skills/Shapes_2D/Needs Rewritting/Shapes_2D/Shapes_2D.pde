//Global Variables
color red = #FF0307;
color white = #FFFFFF;
int faceX;
int faceY;
int leftEyeX;
int leftEyeY;
int rightEyeX;
int rightEyeY;
int eyeDiameter;
float measlesX, measlesY, measlesDiamter;

void setup() {
  size(500, 600);
  //ellipse (x, y, horizontal-diameter, vertical-diameter);
  faceX = width/2;
  faceY= height/2;
  leftEyeX = width/4;
  leftEyeY = height/4;
  rightEyeX = width*3/4;
  rightEyeY = height/4;
  eyeDiameter = width/8;
  ellipse(faceX, faceY, width, width); //Face
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter); //Left Eye
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); //Rigtht Eye
  //line(x-point1, y-point1, x-point2, y-point2);
  line(width/4, height*3/4, width*3/4, height*3/4); //fix the tear to a smile
  //triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4); //nose, broken a little
  fill(red);
}

void draw() {
  fill(red); 
  measlesX = random(width);
  measlesY = random(height);
  measlesDiamter = width*1/60;
  ellipse(measlesX, measlesY, measlesDiamter, measlesDiamter);
  fill(white); //White
  ellipse(width/4, height/4, width/8, width /8);
}
