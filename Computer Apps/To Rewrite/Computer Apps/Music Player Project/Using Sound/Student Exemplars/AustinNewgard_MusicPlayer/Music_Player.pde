import processing.sound.*;
int totalSongs = 6;
SoundFile[] song = new SoundFile[totalSongs];
int pause = 0;
int indexSong = 0;
PFont titlefont;
PImage bg;
int y;
String title = "Quit";
String button = "Play/Pause";
int track = 0;
String song1 = "Hollaback Girl";
String song2 = "September";
String song3 = "USSR Anthem";
String song4 = "Danny Phantom";
String song5 = "Rocket Man";
String song6 = "Axel F";

void setup () {
  bg = loadImage("879.jpeg");
  size(400, 400);
  song[0] = new SoundFile (this, "Gwen Stefani - Hollaback Girl.mp3");
  song[1] = new SoundFile (this, "Earth_Wind_Fire_-_September[Mp3Converter.net].mp3");
  song[2] = new SoundFile (this, "National_Anthem_of_USSR[Mp3Converter.net].mp3");
  song[3] = new SoundFile (this, "Danny - Phantom.mp3");
  song[4] = new SoundFile (this, "Elton John - Rocket Man (Official Music Video).mp3");
  song[5] = new SoundFile (this, "Crazy Frog - Axel F.mp3");

background (bg);
fill(#6000E8);
 rect(400*1/16, 400*1/8, 400*14/16, 400*1/3);// Area with text
   fill(#6000E8);
  ellipse(400*1/2, 400*4/5, 150, 150);//main circle
  triangle(30, 320, 100, 290, 100, 350);//Left skip (Shape)
  triangle(370, 320, 300, 290, 300, 350);//Right skip (Shape)
  fill(#FF0303);
  textSize(25);
  text(title, 0, 25);
  fill(#FF0303);
  textSize(25);
  text(button, 135, 320);
  fill(255);
} 

void draw () {
  
fill(#FF0303);
textSize(35);

if(track == 0){
   fill(#6000E8);
    noStroke();
    rect(60,80,300,50);
     fill(#FF0303);
    text(song1 ,60,120);
    fill(255);
  }
  

  if(track == 1){
    noStroke();
     fill(#6000E8);
    rect(60,80,300,50);
   fill(#FF0303);
    text(song2, 60,120);
     fill(255);
  }

 if(track == 2){
   fill(#6000E8);
    noStroke();
    rect(60,80,300,50);
     fill(#FF0303);
    text(song3, 60,120);
    fill(255);
  }
  
   if(track == 3){
   fill(#6000E8);
    noStroke();
    rect(60,80,300,50);
     fill(#FF0303);
    text(song4, 60,120);
    fill(255);
  }
  
   if(track == 4){
   fill(#6000E8);
    noStroke();
    rect(60,80,300,50);
     fill(#FF0303);
    text(song5, 60,120);
    fill(255);
  }
  
    if(track == 5){
   fill(#6000E8);
    noStroke();
    rect(60,80,300,50);
     fill(#FF0303);
    text(song6, 60,120);
    fill(255);
  }  
}
void mousePressed() {

  if (mouseX>=30 && mouseX <=100 && mouseY>=290 && mouseY<=350) {//Left skip
    song[indexSong].stop(); 
    indexSong = indexSong - 1;
    pause = 0;
    track = track - 1;
  }

if (indexSong < 0) { // left check
    indexSong = 0;
  }

  if (mouseX>=300 && mouseX<=370 && mouseY>=290 && mouseY<=350) { // Right Skip
    song[indexSong].stop(); 
    indexSong = indexSong + 1;
    pause = 0;
    track = track + 1;
  }
  
  if (indexSong > 5) { //Right check
    indexSong =  5;
  } 

  if (mouseX>=0 && mouseX<=75 && mouseY>=0 && mouseY<=25) { //Quit button function
    exit ();
  }
  

if (mouseX>=120 && mouseX<=285 && mouseY>=200 && mouseY<=400) { //play / pause function
    if (pause == 0){
       song[indexSong].play();
       pause = 1;
    } else {
        song[indexSong].stop();
        pause = 0;
    }
}

if (track < 0){ // Track left check
track = 0;
}

if(track > 5){ // Track right check
  track = 5;
}
}