//Global Variables
color circleRed = #FF0303, white=255, black=0;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;

void setup() {
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
}

void draw() {
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  //
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  //
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  //
  fill(black);
  //
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  //
  fill(circleRed);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
}
