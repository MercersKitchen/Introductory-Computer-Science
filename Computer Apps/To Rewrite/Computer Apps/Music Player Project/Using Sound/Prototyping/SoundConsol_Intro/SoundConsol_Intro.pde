import processing.sound.*; //Autotyped when using Sketch / Import Library / Sound

//Variables, no call needed for variables-only

//Creating Sound Files, similar to classes (also like Text Files or loading text)
int totalSongs = 7;
SoundFile[] song = new SoundFile[totalSongs]; //Access the song number to access anything about the song
int indexSong = 0; //When program starts, program starts at song zero

int totalEffects = 4;
SoundFile[] effect = new SoundFile[totalEffects];
int indexEffect = 0;

//Alternate method without array, control through strings, much more difficult than arithemtic
//SoundFile theSimplest = new SoundFile(this, "The_Simplest.mp3");

void setup() {
  //size (100, 100); //Is this necessary when working only in the console

  //Assigning similar to text-type variables
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
  //Idea with events control (using it with events like arithemtic
  //song[1].play();
  //effect[0].play();
}

void draw() {
} //Called an empty draw loop

void keyPressed() {
  println ("Current Key Pressed: " + key);

  //Two Examples of Keyboard Control
  //1.Using switch, case, break, & default
  switch(key) {
  case 's':
  case 'S':
    println("Playing song " + indexSong + ".");
    song[1].play();
    break;
  case 'x':
  case 'X':
    println("Stopping song " + indexSong + ".");
    song[1].stop();
    break;
  default:
    println("\nPress the \'s\' or \'x\' keys for control.\n\n");
  }

  /*
  //2. Using IF Statements
   if (key == 's' | key == 'S') {
   println("Playing song " + indexSong + ".");
   song[1].play();
   }
   
   if (key == 'x' | key == 'X') {
   println("Stopping song " + indexSong + ".");
   song[1].stop();
   }
   */
}