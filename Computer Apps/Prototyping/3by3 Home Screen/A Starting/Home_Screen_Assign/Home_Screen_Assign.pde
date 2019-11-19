//Global Variables
color circleRed = #FF0303, white=255, black=0;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y;
float pt9X, pt9Y;
float pt13X, pt13Y;

void setup() {
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  pt1X = width*0;
  pt1Y = height*0;
  pt2X = width*1/3;
  pt2Y = pt1Y;
  pt3X = width*2/3;
  pt3Y = pt1Y;
  pt4X = width*3/3;
  pt4Y = pt1Y;
  pt5X = pt1X;
  pt5Y = height*1/3;
  pt9X = pt1X;
  pt9Y = height*2/3;
  pt13X = pt1X;
  pt13Y = height*3/3;
}

void draw() {
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  fill(black);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  fill(circleRed);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
}
