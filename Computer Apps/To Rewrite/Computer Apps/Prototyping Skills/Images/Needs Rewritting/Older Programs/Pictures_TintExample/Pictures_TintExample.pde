//global variables
PImage pic1;
int width1 = 0;
int height1 = 0;
int padding = 1/20;

void setup(){
  size(700, 700);
  width1 = width;
  height1 = height;
  
  background(25, 155, 98);
  pic1 = loadImage("tree.jpg");
 
  
}
void draw(){
  tint(150);
  image(pic1, 10, 10, 300, 300);
  tint(255, 10);
  image(pic1, 350, 10, 300, 300);
  tint(#F585CC);  // Pink
  image(pic1, 10, 350, 300, 300);
  //tint(255,0,255);
  noTint();
  image(pic1, 350, 350, 300, 300);
    
}

/*
Load image and record origonal width and height pixels of image
Use formulae to place image
Use another formula to get image to resize by scale factor
Remember, I want the image to be in the canvas 4 times
We need to use the origonal pixels and origonal size, as a percent
*/

