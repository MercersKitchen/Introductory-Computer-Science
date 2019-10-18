# Using Minim
A Summary of functions and snippets to introduce Music Players

**UNDER CONSTRUCTION**

**NOTE**: Processing's Sound Library is in beta to service an "array out of bounds" in WINDOWS 10 (20180901)
- Blogs mentioned to use Minim
- All Minim Selected Examples are compiling well

Web Presence: http://code.compartmental.net/minim/
- http://code.compartmental.net/minim/audioplayer_class_audioplayer.html

Sections
- Summary of functions, in a general learning order, <a href="">Click Here</a>
- Summary of functions, in a general learning order, <a href="">Click Here</a>
- Getting the Minim Library, installation and selected examples <a href="">Click Here</a>
- Playing a Single Song, control in console
  - Note: Console Output introduces Boolean influence of draw() and visual data or GUI
  - Also adds debugging ability
  - <a href="">Click Here for Explanation of the IF Code Snippet</a>
  - <a href="">Click Here for an example Program</a>
- <a href=""></a>

Prototype how to use Minim
- Loading songs and for a single song, play, pause, and rewind to play again, like a loop; <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Music%20Player%20Project/Prototyping/SingleSong">Click Here to see code</a>
  - Example algorithm
  - Ask a question: is the song playing
  - IF Statements will recognize answers of TRUE and FALSE (Yes or No)
  - TRUE: pause the song in the place is was playing
  - FALSE:
    - Play the song
    - Is the song at the end? Then rewind and play the song again
- Stopping a song so the song can be played from the beginning
  - Example algorithm
    - Ask a question: is the song playing
    - TRUE: pause the song, rewind the song
    - FALSE: rewind the song
- Option: previous song and next song (Introduction to Arrays in CS20)
  - Load Multiple Songs to an Array
  - Use Index with Catch for Array Index out of Bounds

Learning to integrate the GUI with Prototyped Programs for Minim

Choosing Music (Minimum 3 songs and 1 sound effect)
- What is the emotion you want to create or influence in others? (Notice their response is very different than influence or choice)
- Must use content you own, should be in .mp3 format
- Available formats: WAV, AIFF, AU, SND, and MP3
- Possible Site: <a href="https://www.youtube.com/audiolibrary/music">YouTube's Audio Library</a>

## Summary of Minim Functions

### Example Variable Types
- ```Minim minim;```
- ```AudioPlayer player;```
  - Can be single file or array to hold more than one song or sound effect
-

### Single Functions
1. ```import ddf.minim.*;``` Connects Program to Processing IDE (must add Minim Library)
. ```minim = new Minim(this);``` Allows Minim to load data from data directory (pathway or folder in project folder), loadFile should also load from project folder
. ```player = minim.loadFile("groove.mp3");```
   - Loading a single file to this AudioPlayer
   - see http://code.compartmental.net/minim/minim_method_loadfile.html
   - Examples
     - AudioPlayer loadFile(String filename)
     - AudioPlayer loadFile(String filename, int bufferSize)
. ```player.isPlaying()``` Boolean returns true, used in Play-Pause Snippet, and other places, See http://code.compartmental.net/minim/audioplayer_method_isplaying.html
. ```player.play();``` Starts playback from current position, see http://code.compartmental.net/minim/audioplayer_method_play.html
   - Examples
     - void play()
     - void play(int millis) // Number of milliseconds from the beginning of the song
. ```player.pause();``` See http://code.compartmental.net/minim/audioplayer_method_pause.html
. ```player.rewind();``` Does not stop playback, see http://code.compartmental.net/minim/audioplayer_method_rewind.html
. ```player.position()```
   - Current time position of file in milli seconds (i.e. how much of the sound has already been played)
   - able to be a variable ```int position```
   - See http://code.compartmental.net/minim/audioplayer_method_position.html
. ```player.length()``` Full length of file, see http://code.compartmental.net/minim/audiometadata_method_length.html

### Code Snippets

Review void keyPressed
```java
void keyPressed() {
  //void keyPressed() contains Boolean keyPressed so no check whether a key is recently pressed, filling key, is necessary with a listener
  if (key == 'p' || key == 'P') {} //Empty IF, see program examples for more details
}
```

Play-Pause, IF Statement
```java
if ( player.isPlaying() ) { //Either true of false, player class from global variables
      player.pause();
    } else if ( player.position() == player.length() ) { //Example of loop when player is at end of file, rewind and continue playing
      player.rewind();
      player.play();
    } else {
      player.play();
    }
```
## Getting the Minim Library

### Installing the Library
Buttons: Sketch / Import Library / Add Library
- See Image (not complete yet)
- See PDF (not complete yet)

Using Contributed Library Import Function
- See Image (not complete yet)
- See PDF (not complete yet)

### Getting Appropriate Examples
General References
- See <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Music%20Player%20Project/Using%20Minim/Selected%20Examples">Selected Examples</a> for an Introduction to reference programs used in Mercer's Kitchen Lessons
- See File / Examples / Contributed Libraries / Minim
- Also see .jpg or .pdf (not complete yet)

List of Programs and Order to Reference
- PlayAFile, <a href="">Click Here</a>
- <a href="">Click Here</a>
- **In Progress**
- <a href=""></a>

Note about programs: all contain a 2D graph, similar to a synthesizer
- Interesting addition some students want to code (illustrated in case studies)

## Playing a Single Song, control in console



---

# Include This

## Questions to answer from code
- AudioPlayer creates classes, do classes need to be loaded to an arrayList or an array


Lines of Code from PlayAFile
```java
import ddf.minim.*;

Minim minim;
AudioPlayer player;

minim = new Minim(this); //load files from data directory
player = minim.loadFile("groove.mp3"); //loadFile looks in data and sketch folders //Able to pass absolute path or URL

void draw() {
  if ( player.isPlaying() )
  {
    text("Press any key to pause playback.", 10, 20 );
  }
  else
  {
    text("Press any key to start playback.", 10, 20 );
  }
}

void keyPressed() {
  if ( player.isPlaying() )
  {
    player.pause();
  }
  // if the player is at the end of the file,
  // we have to rewind it before telling it to play again
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}
```

Lines of Code from pause
```java
import ddf.minim.*;

Minim minim;
AudioPlayer groove;

minim = new Minim(this);
groove = minim.loadFile("groove.mp3", 2048);
groove.loop();

void keyPressed()
{
  if ( groove.isPlaying() )
  {
    groove.pause();
  }
  else
  {
    // simply call loop again to resume playing from where it was paused
    groove.loop();
  }
}
```

---

Teacher Only File Links
-

---

Future Considerations, from past notes

To Do List
- Put in sound effects music; use "W" to switch between songs and sound effects
- Put in a loop with Math.random(), returns a float
- Use tiles to store a specific list number
  CAUTION: if lists are different, all drawing and BooleanBoxes
           must reflect this
  CAUTION: post-procedural algorithm
- Change IF-Statements to Switch-Case-Break-Default

Advanced Algorithm: play each song, one after another, without user intervention (play, next, etc.)
- Following algorithm goes in draw() since questions must be asked all the time
- Ask is the song playing ... when answer is no ... ask is it at the end of the file ...
- When the answer is yes, rewind the current song and auto play the next song 
- Possible bug: if, for whatever reason, song is fast-forwarded to the end of the file, then the next song will automatically play
- Solution: create a Boolean when a song is fast forwarded to the end of a song, it turns off the autoplay until user intervention is initiated to play the next song
- Alternate solution: ignore this bug since it's behavior is so rare
