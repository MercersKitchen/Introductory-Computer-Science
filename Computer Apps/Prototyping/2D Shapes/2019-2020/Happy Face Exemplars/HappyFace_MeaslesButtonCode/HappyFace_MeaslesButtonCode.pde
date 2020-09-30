//Global Variables

//Declaration Only, due to size() keyvariables
int faceX;
int faceY;
int leftEyeX;
int leftEyeY;
int rightEyeX;
int rightEyeY;
int eyeDiameter;
float measlesX, measlesY, measlesDiamter;

//Declaration and Assignment
color red = #FF0307;
color white = #FFFFFF;

void setup() {
  size(500, 600); //due to ratios, able to change this
  
  //Assignment of Face Variables
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
  strokeWeight(50); //big mouth
  line(width/4, height*3/4, width*3/4, height*3/4); //mouth, only place for this formulae
  strokeWeight(1); //default 
  //triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4); //nose, broken a little, only place for this formulae
  
  //Getting Ready to Draw Measles
  measlesDiamter = width*1/60; //Other measles varaibles need to be in draw()
  
  //buttonRectangles(); //Commented out to hide button rectangle planning
  
}

void draw() {

  //Arithmetic for measles first, the draw the measles, using sub programs
  measlesArithmeticDraw();
   
  //Drawing Face Second
  fill(white); //White, resetts fill to default
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4); //nose, broken a little, only place for this formulae
  strokeWeight(50); //big mouth
  line(width/4, height*3/4, width*3/4, height*3/4); //mouth, only place for this formulae
  strokeWeight(1); //default 
  
  //More Face Parts required?
}
