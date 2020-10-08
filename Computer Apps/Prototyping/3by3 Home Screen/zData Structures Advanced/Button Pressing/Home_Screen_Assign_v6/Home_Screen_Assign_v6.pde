//Global Variables
color circleRed = #FF0303, white=255, black=0, pink=#FF00E6, brown=#BC6F2F;
color yellow=#FFF300;
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false; 
float ptDiameter, rectWidth, rectHeight;
float[] ptX = new float[17]; //index zero not counted, left as null here
float[] ptY = new float[17];
float[] buttonX = new float[5]; 
float[] buttonY = new float[5];
float[] buttonWidth = new float[5];
float[] buttonHeight = new float[5];
//float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
//float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
//float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
//float button1X, button1Y, button1Width, button1;
//float button2X, button2Y, button2Width, button2Height;
//float button3X, button3Y, button3Width, button3Height;
//float button4X, button4Y, button4Width, button4Height;

void setup() {
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  for (int i=1; i<14; i=i+4) {
    ptX[i] = width*0;
  }
  //pt1X = pt5X = pt9X = pt13X = width*0;
  //
  for (int i=2; i<15; i=i+4) {
    ptX[i] = width*1/3;
  }
  //pt2X = pt6X = pt10X = pt14X = width*1/3;
  //
  for (int i=3; i<16; i=i+4) {
    ptX[i] = width*2/3;
  }
  //pt3X = pt7X = pt11X = pt15X = width*2/3;
  //
  for (int i=4; i<17; i=i+4) {
    ptX[i] = width*3/3;
  }
  //pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  for (int i=1; i<5; i++) {
    ptY[i] = height*0;
  }
  // pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  for (int i=5; i<9; i++) {
    ptY[i] = height*1/3;
  }
  //pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;/
  //
  for (int i=9; i<13; i++) {
    ptY[i] = height*2/3;
  }
  // pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  //
  for (int i=13; i<17; i++) {
    ptY[i] = height*3/3;
  }
  //pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  //
  //Button to illustrate arithmetic
  buttonX[1] = width * 1/3 * 1/3; //Section 1, subsection 1
  buttonY[1] = height * 1/3 * 1/3; //Section 1, subsection 1
  buttonWidth[1] = width * 1/3 * 1/3;
  buttonHeight[1] = height * 1/3 * 1/3;
  //
  //Button to illustrate arithmetic
  buttonX[2] = width * 3/6; //Section 2, subsection 1: denominator is 3*2, numerator is counted
  buttonY[2] = height * 2/6 ; //Section 2, subsection 0: denominator is 3*2, numerator is counted
  buttonWidth[2] = width * 1/3 * 1/2;
  buttonHeight[2] = height * 1/3 * 1/2;
  //
  //Button to illustrate arithmetic
  buttonX[3] = width * 11/15; //Section 3, subsection 2: denominator is 3*5, numerator is counted
  buttonY[3] = height * 14/16; //Section 3, subsection 4: denominator is 3*5, numerator is counted
  buttonWidth[3] = width * 1/3 * 1/5;
  buttonHeight[3] = height * 1/3 * 1/5;

  //Last Button to Test Concept of Buttons
  buttonX[4] = width*11/15; 
  buttonY[4] = height*1/15; 
  buttonWidth[4] = width*3/15;
  buttonHeight[4] = height*3/15;
}

void draw() {
  //fill(white);
  rect(ptX[1], ptY[1], rectWidth, rectHeight); //FOR will not work with parameters
  //Bug: must press reset, Btn#4, each time to reset colour
  if (turnOnYellow == true ) {
    fill(yellow);
  }
  if (turnOnPink == true) {
    fill(pink);
  }
  if (turnOnBrown == true) {
    fill(brown);
  }
  rect(ptX[2], ptY[2], rectWidth, rectHeight);
  fill(white);
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  //
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  //
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  //Button Rectangles
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    fill(yellow);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(black);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(yellow);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } else {
    fill(black);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    fill(yellow);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(black);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  }
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4] ) {
    fill(yellow);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  } else {
    fill(black);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  }
  fill(black); //Reset all IF-ELSE
  //
  ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
  ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
  ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
  ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
  ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
  ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
  ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
  ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
  //
  fill(circleRed);
  ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
  ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
  ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
  ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
  ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
  ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
  ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
  fill(white);
}

void mousePressed() {
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    println("Btn 1 activated");
    turnOnYellow = true;
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    println("Btn 2 activated");
    turnOnPink = true;
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    println("Btn 3 activated");
    turnOnBrown = true;
  }
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4] ) {
    println("Btn 4 activated");
    turnOnYellow = false;
    turnOnPink = false;
    turnOnBrown = false;
  }
}
