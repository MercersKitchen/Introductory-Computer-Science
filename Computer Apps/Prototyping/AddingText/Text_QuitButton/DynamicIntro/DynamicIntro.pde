//Global Variables: declaration and assignment

void setup() {
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  size(500, 600);

  //Text in Setup
  String title= "Quit"; //Local Variable here, will not work
  PFont titleFont;  //Local Variable here, will not work
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}

void draw () {
  quitButtonDraw();

  //Text in Quit Button
  fill(#2C08FF); //Purple Ink, copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  textFont(titleFont, 50); //Change the number until it fits, largest font size
  text(title, width*15/16, height*0/16, width*1/16, height*1/16);
  fill(255); //Reset to white for rest of the program
}

void mouseClicked() { 
  quitButtonMouseClicked();
}
