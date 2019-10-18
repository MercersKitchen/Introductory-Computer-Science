// Note: this program runs only in the Processing IDE, not in the browser
import processing.video.*;

Movie mov;

Movie myMovie;

void setup() {
  //size(200, 200);
  fullScreen();
  myMovie = new Movie(this, "YourVideo.mp4"); //Video File must be in "data" folder
  myMovie.loop();
  frameRate(30);
  myMovie.play();
  //myMovie.speed(5);
  //myMovie.volume(0);
}

void draw() {
  //tint(255, 20);
  //image(myMovie, mouseX, mouseY);
  image(myMovie, 0, 0, width, height);
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}

/*
void setup() {
  size(640, 360);
  
  mov = new Movie(this, PATH);
  
}
void movieEvent(Movie m) {
  m.read();
}
*/
