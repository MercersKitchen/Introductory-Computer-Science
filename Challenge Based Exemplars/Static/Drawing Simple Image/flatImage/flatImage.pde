// Notice Aspect Ratio ensures missing part on bottom
// Problem that must be solved with other design aspects
//
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight;
float imageWidthRatio;
float imageHeightRatio;
//
size(800, 800); //fullScreen(), displayWidth & displayHeight
//
pic = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg"); //Dimension: 800 Width, 606Height
imageWidthRatio = 800.0/800.0; //must be decmals due to float, larger # for aspect ratio
imageHeightRatio = 600.0/800.0; //must be decmals due to float, <1 for aspect ratio
imageStartWidth = width*0;
imageStartHeight = height*0;
imageWidth = width*imageWidthRatio; //Aspect Ratio
imageHeight = height*imageHeightRatio; //Aspect Ratio
//
//rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
