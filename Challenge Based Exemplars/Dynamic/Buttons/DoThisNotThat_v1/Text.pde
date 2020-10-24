String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont titleFont;
color purple = #2C08FF;

void textSetup() { //To Main Program
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End textSetup

void textDrawPre() { //"Copy and Paste Below
  //Note: visualization rectangle is in main program
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 20); //Change the number until it fits, largest font size
}//End textDrawPre

void textDraw1() { //To Main Program
  textDrawPre();
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(255); //Reset to white for rest of the program
}//End textDraw1

void textDraw2() { //To Main Program
  textDrawPre();
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(255); //Reset to white for rest of the program
}//End textDraw
