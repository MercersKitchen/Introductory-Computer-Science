import processing.sound.*; //Autotyped when using Sketch / Import Library / Sound

//Variables, no call needed for variables-only

//Creating Sound Files, similar to classes (also like Text Files or loading text)
int totalSongs = 7;
SoundFile[] song = new SoundFile[totalSongs]; //Access the song number to access anything about the song
int indexSong = 0; //When program starts, program starts at song zero

int totalEffects = 4;
SoundFile[] effect = new SoundFile[totalEffects];
int indexEffect = 0;

//Alternate method without array
//SoundFile theSimplest = new SoundFile(this, "The_Simplest.mp3");

void setup() {
  //size (100, 100); //Is this necessary when working only in the console
  //background(255);

  //Assigning like varaiables
  song[0] = new SoundFile(this, "Eureka.mp3");
  song[1] = new SoundFile(this, "The_Simplest.mp3");
  song[2] = new SoundFile(this, "Newsroom.mp3");
  song[3] = new SoundFile(this, "Beat_Your_Competition.mp3");
  song[4] = new SoundFile(this, "Cycles.mp3");
  song[5] = new SoundFile(this, "Ghost_Walk.mp3");
  song[6] = new SoundFile(this, "Start_Your_Engines.mp3");

  effect[0]= new SoundFile(this, "Car_Door_Closing.mp3");
  effect[1]= new SoundFile(this, "Spring_Attic_Door.mp3");
  effect[2]= new SoundFile(this, "The_Simplest_Sting.mp3");
  effect[3]= new SoundFile(this, "Wood_Door_Open_and_Close_Series.mp3");

  //Option#1: just plays the song, no control
  //When song ends, no control of the song or the app without the IDE
  //song[0].play();
}

void draw() {
} //Called an empty draw loop

void keyPressed() {
  //println(key); //System Variable that saves the last keypress, as a listener
  println ("Current Key Pressed: " + key);
  println ("Current Song Number is: " + indexSong + ".\n");

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
      //println("You are pressing the Next Button a lot \n" +
      //"Please press the Back Button or the Play Button.");
      println("Your song number is changed to " + indexSong + ".");
    }
  }

  //Using switch, case, break, and default as an option to IF
  //Booleans are not allowed
  switch(key) {
  case 's':
  case 'S':
    println("Playing song " + indexSong + ".");
    song[indexSong].play();
    break;
  case 'x':
  case 'X':
    song[indexSong].stop(); //Must stop the current song or error of playing next song at the same time
    println ("You have stopped playing song " + indexSong + ".");
    break;
  case 'a':
  case 'A':
    println("Choosing previous song");
    song[indexSong].stop(); //Must stop the current song or error of playing next song at the same time
    indexSong = indexSong - 1; //Other formulae: index -= 1; index--
    println ("Current Song Number is: " + indexSong);
    break;
  case 'd':
  case 'D':
    println("Choosing next song");
    song[indexSong].stop(); //Must stop the current song or error of playing next song at the same time
    indexSong = indexSong + 1; //Other formulae: index += 1; index++
    println ("Current Song Number is: " + indexSong);
    break;
  default:
    println("\nPress the \'a\', \'s\', \'d\', or \'x\' keys for control.\n\n");
  }
}