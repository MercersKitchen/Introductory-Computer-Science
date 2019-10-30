//Example 2: Variables

//Global Variables
String name = "Ella";
int textX;
int screenWidth = 750;
PFont f1;

//Main Functions
void setup(){
  size(screenWidth, 400); // Notice the Variable
  background(229,85,37);
  f1 = createFont("Magneto", 20, true);
 
  
  
}
void draw(){
  background(229,85,37);
  name = "Haydn";
  textX = (screenWidth / 2) - 185;
  textFont(f1,30);
  text("Happy Birthday " + name, textX,100);
  text("You are turning 8", textX+20,150);
  
}


//Other Functions