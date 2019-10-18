//Variables, no call needed for variables-only
//String[] fontList = PFont.list(); // Lists all fonts avaiable on system
//PImage pic0, pic1, pic2; //Progression to array

PImage[] pic = new PImage[3]; //Array; .length is "3"

void setup() {
  size(600, 600); //uses width and height
  //fullScreen(); //uses displayWidth and displayHeight
  //println("Screen Width is " + displayWidth + "\n       Height is " + displayHeight);
  //note: able to use find a replace with variables
  //println("Starting of Console"); // If you cannot see this, the find another way to see the list on the program 
  //printArray(fontList); // for listing all possible fonts to choose from, then createFontprintArray(fontList);

  //Font created from Font Create: BradleyHandITC-48
  //Check Data Folder

  pic[0] = loadImage("ObiOneThumb.jpg"); //Dimensions: 259 x 159
  pic[1] = loadImage("bike.jpg"); //Dimensions: 860 x 529
  pic[2] = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimensions: 800 x 600

  rect(0, height*0/3, width, height/3);
  rect(0, height*1/3, width, height/3);
  rect(0, height*2/3, width, height/3);

  //image(pic[0], 0, height*0/3, width, height/3);
  //image(pic[1], 0, height*1/3, width, height/3);
  //image(pic[2], 0, height*2/3, width, height/3);

  for (int i=0; i<pic.length; i++) {
    image(pic[i], 0, height*i/3, width, height/3);
  }
}

//void draw() {}

//void mousePressed() {}

//void keyPressed() {}

//void GUI_Setup();

//void quitButton() {}

//float fontCalculator() {}

//void printText() {}