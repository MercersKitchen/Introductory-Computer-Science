// MP3 PLayer consisting of 6 songs and a speech by John Kennedy for your everyday intelligence. (In song 4)

// Coded by: Joel Eduardo Rodriguez Fajardo

// Directions;
// Little dark-grey oval on the left PLAYS THE SONG and the one on the right STOPS IT.
// The dark-grey square on the left under the black rectange SKIPS TO NEXT SONG and the one on the right goes BACK A SONG.


import processing.sound.*;


//Variables
//String[] fontList = PFont.list();
int totalSongs = 7;
SoundFile[] song = new SoundFile[totalSongs];
int indexSong = 0;
int totalEffects = 4;
SoundFile[] effect = new SoundFile[totalEffects];
int indexEffect = 0;
PFont titleFont;
Boolean start = false;
float r = random (0, 255), g = random (0, 255), b = random (0, 255);
PFont font;
String title = "Quit";
float textLength = displayWidth*1/2;
color yellow = #F2D52C;
color blue = #3423CE;
color boarder = blue;
color inside = yellow;
int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;


void setup() {
  size(700, 750);
  // Define colors
  b1 = color(255);
  b2 = color(0);



  song[0] = new SoundFile(this, "Ice_Crystals.mp3");
  song[1] = new SoundFile(this, "Casbah_Towers.mp3");
  song[2] = new SoundFile(this, "At_The_Fair.mp3");
  song[3] = new SoundFile(this, "Pilots_Of_Stone.mp3");
  song[4] = new SoundFile(this, "John_F_Kennedy_Inaugural_Speech_January_20_1961.mp3");
  song[5] = new SoundFile(this, "Jolly_Old_St_Nicholas_Instrumental.mp3");
  song[6] = new SoundFile(this, "Sophomore_Makeout.mp3");

  effect[0]= new SoundFile(this, "50_Cal_Shells_Drop.mp3");
  effect[1]= new SoundFile(this, "18V_Cordless_Drill_High_Pitch.mp3");
  effect[2]= new SoundFile(this, "50cal_Gun_Cock_and_Dry_Fire.mp3");
  effect[3]= new SoundFile(this, "A10_Jet_Flyby_fire.mp3");
  //song[1].play();
}


void draw () {
  background(255);

  if (mouseButton == LEFT) {
    fill(0); // Black
  } else if (mouseButton == RIGHT) {
    fill(255); // White
  } else { 
    fill(126); // Gray
  }
  rect(25, 25, 50, 50);

  // Background
  setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  

}

//Called an empty draw loop
void keyPressed() {
  println ("Current Key Pressed: " + key);
}  

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  } else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }

  fill(#464141);
  ellipse(700/2, 700/2, 500, 500); //Biggest Circle
  fill(255);
  fill(#171616);
  ellipse(700/2, 700/2, 450, 450);
  fill(255);
  fill(#5A5454);
  ellipse(700/2, 700/2, 440, 440);
  fill(255);
  line(130, 700/2, 570, 700/2); //startX, startY, endX, endY (Cuts through middle circle)
  fill(#464040);
  ellipse(700*2.3/8, 800/2, 80, 60);// 1st circle on the left
  ellipse(700*5.7/8, 800/2, 80, 60);// 2nd circle on the right
  fill(255);
  fill(#050505);
  rect(700*1/3, 700*2/8, 233, 95);//Black Big Rectangle
  fill(255);
  fill(#464040);
  rect(160, 700*4/10, 380, 60); //The rectangle in the bottom
  fill(#464040);
  ellipse(700/2, 700*6.5/10, 200, 180);
  fill(255);
  fill(#837D7D);
  ellipse(700*1/2, 700*6.8/10, 150, 130);
  fill(255);
  line(700*1/3, 700*4/10, 700*1/3, 340);//Line on the left
  line(700*2/3, 700*4/10, 466, 340);//Line on the right



  titleFont = createFont ("AGaramondPro-Regular", 100);
  fill(#464040);
  rect(500+10, 550+10, 80, 30);//White quit background rect
  rect(500+10, 550+10, 80, 30);//Grey quit background rect
  fill(255);
  textSize(27);
  fill(#FFFFFF);
  text("Quit", 500+50, 550+35);
  //textFont(font, 136);
  textAlign(CENTER);
  textSize(displayHeight*1/8);
  /*
  for (float i=1; textWidth(title)> displayWidth*1/2; i=1-0.01)
   textLength = textLength*i;
   textSize(textLength);
   */
}

void mousePressed () {
  if (mouseX > 500+10 && mouseX < 590 && mouseY > 550+10 && mouseY < 590) {
    exit();
  }
  if (mouseX > 161.25 && mouseX < 241.25 && mouseY > 370 && mouseY < 430) {
    song[indexSong].play();
        println("Playing song " + indexSong + ".");
  }
  if (mouseX > 458.75 && mouseX < 538.75 && mouseY > 370 && mouseY < 430) {
        println("Stopping song " + indexSong + ".");
    song[indexSong].stop();
  }
  if (mouseX > 160 && mouseX < 280 && mouseY > 233.3 && mouseY < 340) {
        println("Choosing next song");
    song[indexSong].stop(); //Must stop the current song or error of playing next song at the same time
    indexSong = indexSong + 1; //Other formulae: index += 1; index++
    println ("Current Song Number is: " + indexSong);
 
  }
  if (mouseX > 466.6 && mouseX < 538 && mouseY > 280 && mouseY < 340) {
        println("Choosing previous song");
    song[indexSong].stop(); //Must stop the current song or error of playing next song at the same time
    indexSong = indexSong - 1; //Other formulae: index -= 1; index--
    println ("Current Song Number is: " + indexSong);
 
    }
    if (indexSong < 0 | indexSong >= song.length) {
    if (indexSong < 0) {
      indexSong = 0;
      println("You are pressing the Previous Button a lot \n" +
        "Please press the Next Button or the Play Button.");
      println("Your song number is changed to " + indexSong + ".");
    } else {
      indexSong = song.length - 1;
      println ("You are at the end of the song list, \n" +
        "Press the Previous Song or Play Keys");
      println("Your song number is changed to " + indexSong + ".");
    }}}