//Global Variables: declaration and assignment
PImage pic;
PImage pic2;

void setup() {
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  size(500, 600);
  
  pic = loadImage("ObiOneThumb.jpg"); //Dimensions: 259 Width, 194 Height
  pic2 = loadImage("bike.jpg"); //Dimensions: 860 Width, 529 Height
  //pic3 = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimensions: 800 Width, 600 Height
  
  rect(width*1/4, height*0/16, width*0.518, height*0.3233333); 
  image (pic, width*1/4, height*0/16, width*0.518, height*0.3233333); 
  
  rect(width*0, height*1/3, width*0.58139, width*0.58139); 
  image (pic2, width*0, height*1/3, width*0.58139, width*0.58139); //width*0.5813
  // for some reason, the 
}

void draw () {
  quitButtonDraw();
}

void mouseClicked() {
  quitButtonMouseClicked();
}
