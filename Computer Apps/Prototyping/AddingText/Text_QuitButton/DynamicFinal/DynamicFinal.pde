//Global Variables: declaration and assignment

void setup() {
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  size(500, 600);
  
  //Font Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  
  quitButtonSetup();
  
}

void draw () {
  quitButtonDraw();
}

void mouseClicked() { 
  quitButtonMouseClicked();
}
