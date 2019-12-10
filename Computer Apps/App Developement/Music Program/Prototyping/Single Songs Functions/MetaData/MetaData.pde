//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1; //"Song One"
AudioMetaData songMeta1; //"Song Meta One"

void setup() {
  size(512, 256, P2D);

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");
  songMeta1 = song1.getMetaData(); //reads song meta 1, like song 1, mimicing array notation

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");

  textFont(createFont("Serif", 12)); //simple text starting code, refer to how text is usually started, uses default font already installed
}

void draw() {
  background(0);
  int yi = 15;
  int ys = 25, y = ys; //Two Variables
  text("File Name: " + songMeta1.fileName(), 5, y);
  text("Length (in milliseconds): " + songMeta1.length(), 5, y+=yi);
  text("Title: " + songMeta1.title(), 5, y+=yi);
  text("Author: " + songMeta1.author(), 5, y+=yi); 
  text("Album: " + songMeta1.album(), 5, y+=yi);
  text("Date: " + songMeta1.date(), 5, y+=yi);
  text("Comment: " + songMeta1.comment(), 5, y+=yi);
  text("Lyrics: " + songMeta1.lyrics(), 5, y+=yi ); 
  text("Track: " + songMeta1.track(), 5, y+=yi);
  text("Genre: " + songMeta1.genre(), 5, y+=yi);
  text("Copyright: " + songMeta1.copyright(), 5, y+=yi);
  text("Disc: " + songMeta1.disc(), 5, y+=yi);
  text("Composer: " + songMeta1.composer(), 5, y+=yi);
  text("Orchestra: " + songMeta1.orchestra(), 5, y+=yi);
  text("Publisher: " + songMeta1.publisher(), 5, y+=yi);
  text("Encoded: " + songMeta1.encoded(), 5, y+=yi);
}

void mousePressed() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}
