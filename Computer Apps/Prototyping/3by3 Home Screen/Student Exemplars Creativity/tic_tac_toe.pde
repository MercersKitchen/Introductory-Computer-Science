//global variables
color black = #000000, white = #FFFFFF, blue = #0D00FF, red = #FF0000;
Boolean turnOnBlue1 = false, turnOnBlue3 = false, turnOnBlue5 = false, turnOnBlue7 = false, turnOnBlue9 = false, turnOnBlue11 = false, turnOnBlue13 = false, turnOnBlue15 = false, turnOnBlue17 = false;
Boolean turnOnRed2 = false, turnOnRed4 = false, turnOnRed6 = false, turnOnRed8 = false, turnOnRed10 = false, turnOnRed12 = false, turnOnRed14 = false, turnOnRed16 = false, turnOnRed18 = false;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y,pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;
float button5X, button5Y, button5Width, button5Height;
float button6X, button6Y, button6Width, button6Height;
float button7X, button7Y, button7Width, button7Height;
float button8X, button8Y, button8Width, button8Height;
float button9X, button9Y, button9Width, button9Height;
float button10X, button10Y, button10Width, button10Height;
float button11X, button11Y, button11Width, button11Height;
float button12X, button12Y, button12Width, button12Height;
float button13X, button13Y, button13Width, button13Height;
float button14X, button14Y, button14Width, button14Height;
float button15X, button15Y, button15Width, button15Height;
float button16X, button16Y, button16Width, button16Height;
float button17X, button17Y, button17Width, button17Height;
float button18X, button18Y, button18Width, button18Height;

void setup() {
  size(500, 600);
  ptDiameter = width* 1 / 30;
  rectWidth = width * 1 / 3;
  rectHeight = height * 1 / 3;
  
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y = height*3/3;
  
  
  button1X = width * 0/9;
  button1Y = height * 1/9;
  button1Width = width * 1/9;
  button1Height = height * 1/9;
  //
  button2X = width * 2/9;
  button2Y = height * 1/9;
  button2Width = width * 1/9;
  button2Height = height * 1/9;
  //
  button3X = width * 3/9;
  button3Y = height * 1/9;
  button3Width = width * 1/9;
  button3Height = height * 1/9;
  //
  button4X = width * 5/9;
  button4Y = height * 1/9;
  button4Width = width * 1/9;
  button4Height = height * 1/9;
  //
  button5X = width * 6/9;
  button5Y = height * 1/9;
  button5Width = width * 1/9;
  button5Height = height * 1/9;
  //
  button6X = width * 8/9;
  button6Y = height * 1/9;
  button6Width = width * 1/9;
  button6Height = height * 1/9;
  //Row2
  button7X = width * 0/9;
  button7Y = height * 4/9;
  button7Width = width * 1/9;
  button7Height = height * 1/9;
  //
  button8X = width * 2/9;
  button8Y = height * 4/9;
  button8Width = width * 1/9;
  button8Height = height * 1/9;
  //
  button9X = width * 3/9;
  button9Y = height * 4/9;
  button9Width = width * 1/9;
  button9Height = height * 1/9;
  //
  button10X = width * 5/9;
  button10Y = height * 4/9;
  button10Width = width * 1/9;
  button10Height = height * 1/9;
  //
  button11X = width * 6/9;
  button11Y = height * 4/9;
  button11Width = width * 1/9;
  button11Height = height * 1/9;
  //
  button12X = width * 8/9;
  button12Y = height * 4/9;
  button12Width = width * 1/9;
  button12Height = height * 1/9;
  //
  button13X = width * 0/9;
  button13Y = height * 7/9;
  button13Width = width * 1/9;
  button13Height = height * 1/9;
  //
  button14X = width * 2/9;
  button14Y = height * 7/9;
  button14Width = width * 1/9;
  button14Height = height * 1/9;
  //
  button15X = width * 3/9;
  button15Y = height * 7/9;
  button15Width = width * 1/9;
  button15Height = height * 1/9;
  //
  button16X = width * 5/9;
  button16Y = height * 7/9;
  button16Width = width * 1/9;
  button16Height = height * 1/9;
  //
  button17X = width * 6/9;
  button17Y = height * 7/9;
  button17Width = width * 1/9;
  button17Height = height * 1/9;
  //
  button18X = width * 8/9;
  button18Y = height * 7/9;
  button18Width = width * 1/9;
  button18Height = height * 1/9;
}

void draw() {
  //RectRow1
  fill(white);
    if (turnOnBlue1 == true ) {
    fill(blue);
  }
    if (turnOnRed2 == true ) {
    fill(red);
  }
  rect(pt1X, pt1Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue3 == true ) {
    fill(blue);
  }
    if (turnOnRed4 == true ) {
    fill(red);
  }
  rect(pt2X, pt2Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue5 == true ) {
    fill(blue);
  }
    if (turnOnRed6 == true ) {
    fill(red);
  }
  rect(pt3X, pt3Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue7 == true ) {
    fill(blue);
  }
    if (turnOnRed8 == true ) {
    fill(red);
  }
  
  rect(pt5X, pt5Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue9 == true ) {
    fill(blue);
  }
    if (turnOnRed10 == true ) {
    fill(red);
  }
  rect(pt6X, pt6Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue11 == true ) {
    fill(blue);
  }
    if (turnOnRed12 == true ) {
    fill(red);
  }
  rect(pt7X, pt7Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue13 == true ) {
    fill(blue);
  }
    if (turnOnRed14 == true ) {
    fill(red);
  }
  rect(pt9X, pt9Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue15 == true ) {
    fill(blue);
  }
    if (turnOnRed16 == true ) {
    fill(red);
  }
  rect(pt10X, pt10Y, rectWidth, rectHeight);
    fill(white);
    if (turnOnBlue17 == true ) {
    fill(blue);
  }
    if (turnOnRed18 == true ) {
    fill(red);
  }
  rect(pt15X, pt12Y, rectWidth, rectHeight);

  fill(black);
    if (mouseX >=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
  fill(blue);
    rect(button1X, button1Y, button1Width, button1Height);
  } else {
    fill(black);
      rect(button1X, button1Y, button1Width, button1Height);
  }
  //
   fill(black);
    if (mouseX >=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
  fill(red);
    rect(button2X, button2Y, button2Width, button2Height);
  } else {
    fill(black);
      rect(button2X, button2Y, button2Width, button2Height);
  }
  //
    fill(black);
  rect(button3X, button3Y, button3Width, button3Height);
      if (mouseX >=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
  fill(blue);
    rect(button3X, button3Y, button3Width, button3Height);
  } else {
    fill(black);
      rect(button3X, button3Y, button3Width, button3Height);
  }
  //
  fill(black);
  rect(button4X, button4Y, button4Width, button4Height);
      if (mouseX >=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
  fill(red);
    rect(button4X, button4Y, button4Width, button4Height);
  } else {
    fill(black);
      rect(button4X, button4Y, button4Width, button4Height);
  }
  
  fill(black);
  rect(button5X, button5Y, button5Width, button5Height);
      if (mouseX >=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<=button5Y+button5Height) {
  fill(blue);
    rect(button5X, button5Y, button5Width, button5Height);
  } else {
    fill(black);
      rect(button5X, button5Y, button5Width, button5Height);
  }
  
  fill(black);
  rect(button6X, button6Y, button6Width, button6Height);
      if (mouseX >=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
  fill(red);
    rect(button6X, button6Y, button6Width, button6Height);
  } else {
    fill(black);
      rect(button6X, button6Y, button6Width, button6Height);
  }
    fill(black);
    if (mouseX >=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
  fill(blue);
    rect(button7X, button7Y, button7Width, button7Height);
  } else {
    fill(black);
      rect(button7X, button7Y, button7Width, button7Height);
  }
  //
   fill(black);
    if (mouseX >=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
  fill(red);
    rect(button8X, button8Y, button8Width, button8Height);
  } else {
    fill(black);
      rect(button8X, button8Y, button8Width, button8Height);
  }
  //
    fill(black);
  rect(button9X, button9Y, button9Width, button9Height);
      if (mouseX >=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<=button9Y+button9Height) {
  fill(blue);
    rect(button9X, button9Y, button9Width, button9Height);
  } else {
    fill(black);
      rect(button9X, button9Y, button9Width, button9Height);
  }
  //
  fill(black);
  rect(button10X, button10Y, button10Width, button10Height);
      if (mouseX >=button10X && mouseX<=button10X+button10Width && mouseY>=button10Y && mouseY<=button10Y+button10Height) {
  fill(red);
    rect(button10X, button10Y, button10Width, button10Height);
  } else {
    fill(black);
      rect(button10X, button10Y, button10Width, button10Height);
  }
  
  fill(black);
  rect(button11X, button11Y, button11Width, button11Height);
      if (mouseX >=button11X && mouseX<=button11X+button11Width && mouseY>=button11Y && mouseY<=button11Y+button11Height) {
  fill(blue);
    rect(button11X, button11Y, button11Width, button11Height);
  } else {
    fill(black);
      rect(button11X, button11Y, button11Width, button11Height);
  }
  
  fill(black);
  rect(button12X, button12Y, button12Width, button12Height);
      if (mouseX >=button12X && mouseX<=button12X+button12Width && mouseY>=button12Y && mouseY<=button12Y+button12Height) {
  fill(red);
    rect(button12X, button12Y, button12Width, button12Height);
  } else {
    fill(black);
      rect(button12X, button12Y, button12Width, button12Height);
  }
      fill(black);
    if (mouseX >=button13X && mouseX<=button13X+button13Width && mouseY>=button13Y && mouseY<=button13Y+button13Height) {
  fill(blue);
    rect(button13X, button13Y, button13Width, button13Height);
  } else {
    fill(black);
      rect(button13X, button13Y, button13Width, button13Height);
  }
  //
   fill(black);
    if (mouseX >=button14X && mouseX<=button14X+button14Width && mouseY>=button14Y && mouseY<=button14Y+button14Height) {
  fill(red);
    rect(button14X, button14Y, button14Width, button14Height);
  } else {
    fill(black);
      rect(button14X, button14Y, button14Width, button14Height);
  }
  //
    fill(black);
  rect(button15X, button15Y, button15Width, button15Height);
      if (mouseX >=button15X && mouseX<=button15X+button15Width && mouseY>=button15Y && mouseY<=button15Y+button15Height) {
  fill(blue);
    rect(button15X, button15Y, button15Width, button15Height);
  } else {
    fill(black);
      rect(button15X, button15Y, button15Width, button15Height);
  }
  //
  fill(black);
  rect(button16X, button16Y, button16Width, button16Height);
      if (mouseX >=button16X && mouseX<=button16X+button16Width && mouseY>=button16Y && mouseY<=button16Y+button16Height) {
  fill(red);
    rect(button16X, button16Y, button16Width, button16Height);
  } else {
    fill(black);
      rect(button16X, button16Y, button16Width, button16Height);
  }
  
  fill(black);
  rect(button17X, button17Y, button17Width, button17Height);
      if (mouseX >=button17X && mouseX<=button17X+button17Width && mouseY>=button17Y && mouseY<=button17Y+button17Height) {
  fill(blue);
    rect(button17X, button17Y, button17Width, button17Height);
  } else {
    fill(black);
      rect(button17X, button17Y, button17Width, button17Height);
  }
  
  fill(black);
  rect(button18X, button18Y, button18Width, button18Height);
      if (mouseX >=button18X && mouseX<=button18X+button18Width && mouseY>=button18Y && mouseY<=button18Y+button18Height) {
  fill(red);
    rect(button18X, button18Y, button18Width, button18Height);
  } else {
    fill(black);
      rect(button18X, button18Y, button18Width, button18Height);
  }
  
  fill(black);
  
  //Row 1
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  //Row 2
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  //Row 3
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);  
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  //Row 4
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
  
  fill(white);
}

void mousePressed() {
  
  if (mouseX >=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    println("Btn 1 activated");
    turnOnBlue1 = true;
  }
  
  if (mouseX >=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<= button2Y+button2Height) {
    println("Btn 2 activated");
    turnOnRed2 = true;
  }
  
  if (mouseX >=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<= button3Y+button3Height) {
    println("Btn 3 activated");
    turnOnBlue3 = true;
  }
  
  if (mouseX >=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<= button4Y+button4Height) {
    println("Btn 4 activated");
    turnOnRed4 = true;
  }
  
  if (mouseX >=button5X && mouseX<=button5X+button5Width && mouseY>=button5Y && mouseY<= button5Y+button5Height) {
    println("Btn 5 activated");
    turnOnBlue5 = true;
  }
  
  if (mouseX >=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<= button6Y+button6Height) {
    println("Btn 6 activated");
    turnOnRed6 = true;
  }
  
  if (mouseX >=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    println("Btn 7 activated");
    turnOnBlue7 = true;
  }
  
  if (mouseX >=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<= button8Y+button8Height) {
    println("Btn 8 activated");
    turnOnRed8 = true;
  }
  
  if (mouseX >=button9X && mouseX<=button9X+button9Width && mouseY>=button9Y && mouseY<= button9Y+button9Height) {
    println("Btn 9 activated");
    turnOnBlue9 = true;
  }
  
  if (mouseX >=button10X && mouseX<=button10X+button10Width && mouseY>=button10Y && mouseY<= button10Y+button10Height) {
    println("Btn 10 activated");
    turnOnRed10 = true;
  }
  
  if (mouseX >=button11X && mouseX<=button11X+button11Width && mouseY>=button11Y && mouseY<= button11Y+button11Height) {
    println("Btn 11 activated");
    turnOnBlue11 = true;
  }
  
  if (mouseX >=button12X && mouseX<=button12X+button12Width && mouseY>=button12Y && mouseY<= button12Y+button12Height) {
    println("Btn 12 activated");
    turnOnRed12 = true;
  }
  
    if (mouseX >=button13X && mouseX<=button13X+button13Width && mouseY>=button13Y && mouseY<= button13Y+button13Height) {
    println("Btn 13 activated");
    turnOnBlue13 = true;
  }
  
  if (mouseX >=button14X && mouseX<=button14X+button14Width && mouseY>=button14Y && mouseY<=button14Y+button14Height) {
    println("Btn 14 activated");
    turnOnRed14 = true;
  }
  
  if (mouseX >=button15X && mouseX<=button15X+button15Width && mouseY>=button15Y && mouseY<= button15Y+button15Height) {
    println("Btn 15 activated");
    turnOnBlue15 = true;
  }
  
  if (mouseX >=button16X && mouseX<=button16X+button16Width && mouseY>=button16Y && mouseY<= button16Y+button16Height) {
    println("Btn 16 activated");
    turnOnRed16 = true;
  }
  
  if (mouseX >=button17X && mouseX<=button17X+button17Width && mouseY>=button17Y && mouseY<= button17Y+button17Height) {
    println("Btn 17 activated");
    turnOnBlue17 = true;
  }
  
  if (mouseX >=button18X && mouseX<=button18X+button18Width && mouseY>=button18Y && mouseY<= button18Y+button18Height) {
    println("Btn 18 activated");
    turnOnRed18 = true;
  }
  
}
