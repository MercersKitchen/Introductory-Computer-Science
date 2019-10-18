PImage photo;

PImage playButton;


import ddf.minim.*;
Minim minim;
AudioPlayer player;


void setup() {
  size(960, 540);
  photo = loadImage("Background.jpg");
  
  playButton = loadImage("Play Button.png");

   minim = new Minim(this);
  player = minim.loadFile("MonsterCat Haywyre-Back and Forth.mp3");
  player.play();
  
}

void draw() {
  image(photo, 0, 0);
  
  image(playButton, 325, 200);
   
  
  
  for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
  }
}



void play() {
    
 
  
}
