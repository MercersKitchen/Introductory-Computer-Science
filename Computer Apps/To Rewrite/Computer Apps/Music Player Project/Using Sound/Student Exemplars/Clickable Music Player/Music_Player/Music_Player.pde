/*
Author:DJ Palmer
Date: Nov 24 2015
Purpose:Music player
*/
//Global Variables
  int one;
  int value;
  int height1 = height;
  int width1 = width;
  import ddf.minim.*;

  Minim minim;
  AudioPlayer player;
  AudioInput input;

void setup () {
  size(800,800);        //canvas size    
  background(#000000);   //Black background
  minim = new Minim(this);
  player = minim.loadFile("ASGORE.mp3");
  player = minim.loadFile("Song That Might Play When You Fight Sans.mp3");
}


void draw () {
  //Asgores image
  PImage pic1;
  pic1 = loadImage("Asgore_Thumbnail.jpg");
  image(pic1,5,5,width/5,height/5);
  
  
  //Sans' image
  PImage pic2;
  pic2 = loadImage("Sans_Thumbnail.png");
  image(pic2,160,55,width/7,height/7);
  
  
  //Mettaton image
  PImage pic3;
  pic3 = loadImage("Mettaton_Thumbnail.png");
  image(pic3,270,13,width/5,height/5);
  
  
  
  //MettatonEX image
  PImage pic4;
  pic4 = loadImage("MettatonEX_Thumbnail.png");
  image(pic4,430,3,width/4.2,height/4.2);
  
  
  
  
  //Undyne image
  PImage pic5;
  pic5 = loadImage("Undyne_Thumbnail.png");
  image(pic5,630,20,width/5,height/5);


  //Toriel image
  PImage pic6;
  pic6 = loadImage("Toriel_Thumbnail.png");
  image(pic6,5,200,width/5,height/5);
  
  
  
  //Papyrus image
  PImage pic7;
  pic7 = loadImage("Papyrus_Thumbnail.jpg");
  image(pic7,140,195,width/5,height/5);
  
  
  
  //Flowey image
  PImage pic8;
  pic8 = loadImage("Flowey_Thumbnail.png");
  image(pic8,280,260,width/8,height/8);
  
  
  
  //Asriel Dreemur
  PImage pic9;
  pic9 = loadImage("Asriel_Dreemurr_Thumbnail.jpg");
  image(pic9,400,205,width/8,height/5);
  
  
  
  //Omega Flowey
  PImage pic10;
  pic10 = loadImage("Omega_Flowey_Thumbnail.jpg");
  image(pic10,10,437,400,360);
  
  
  
  //Asriel Angel of death version
  PImage pic11;
  pic11 = loadImage("Asriel_Angel_of_Death_Thumbnail.jpg");
  image(pic11,412,480,385,250);
  
  
  
  //Frisk & Chara
  PImage pic12;
  PImage pic13;
  pic12 = loadImage("Chara.png");
  pic13 = loadImage("Frisk.png");
  image(pic12,533,295);
  image(pic13,520,305); //IMPORTANT ------> overlays previous image because of how one of the endings goes in the game, otherwise they would be right next to each other
  noLoop();
}
void mousePressed() {
  if (mouseX > 4 & mouseX < 150 & mouseY < 160 & mouseY > 4) {
    value = 255;
    player.mute();
    player = minim.loadFile("ASGORE.mp3");
    player.play();
  } 
  if (mouseX > 155 & mouseX < 255 & mouseY < 163 & mouseY > 50) {
   value = 255;
   player.mute();
   player = minim.loadFile("Song That Might Play When You Fight Sans.mp3");
   player.play();
  }
 if (mouseX > 270 & mouseX < 427 & mouseY < 163 & mouseY > 10) {
   value = 255;
   player.mute();
   player = minim.loadFile("Metal Crusher.mp3");
   player.play();
 }
 if (mouseX > 440 & mouseX < 600 & mouseY < 175 & mouseY > 10) {
   value = 255;
   player.mute();
   player = minim.loadFile("Death by Glamour.mp3");
   player.play();
 }
 if (mouseX > 630 & mouseX < 800 & mouseY < 175 & mouseY > 10) {
   value = 255;
   player.mute();
   player = minim.loadFile("Spear of Justice.mp3");
   player.play();
 }
 if (mouseX > 4 & mouseX < 145 & mouseY < 350 & mouseY > 200) {
   value = 255;
   player.mute();
   player = minim.loadFile("Heartache.mp3");
   player.play();
 }
 if (mouseX > 170 & mouseX < 275 & mouseY < 355 & mouseY > 190) {
   value = 255;
   player.mute();
   player = minim.loadFile("Bonetrousle.mp3");
   player.play();
 }
 if (mouseX > 280 & mouseX < 379 & mouseY < 355 & mouseY > 250) {
   value = 255;
   player.mute();
   player = minim.loadFile("Your Best Friend.mp3");
   player.play();
 }
 if (mouseX > 405 & mouseX < 500 & mouseY < 360 & mouseY > 205) {
   value = 255;
   player.mute();
   player = minim.loadFile("Hopes and Dreams.mp3");
   player.play();
 }
 if (mouseX > 4 & mouseX < 410 & mouseY < 800 & mouseY > 433) {
   value = 255;
   player.mute();
   player = minim.loadFile("Finale.mp3");
   player.play();
 }
 if (mouseX > 412 & mouseX < 800 & mouseY < 724 & mouseY > 473) {
   value = 255;
   player.mute();
   player = minim.loadFile("His Theme.mp3");
   player.play();
 }
 if (mouseX > 520 & mouseX < 570 & mouseY < 365 & mouseY > 285) {
   value = 255;
   player.mute();
   player = minim.loadFile("MEGALOVANIA.mp3");
   player.play();
 }
 else {
   value = 0;
 }
}


void keyPressed() {
  if (key =='s') {
    player.mute();
  }
}
