/*
Author: Jordan Kozinko
Date: 11/24/15
Purpose: Making a Music Player
*/

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

import javax.swing.*;
JFileChooser jfc;

PImage bg;
PImage seeker;
PImage seeker2;
PImage closeButton;
PImage minimizeButton;
PImage prev;
PImage play;
PImage stop;
PImage next;
PImage openfile;
PImage shuffle;
PImage repeat;
PImage pause;
PFont font;

Minim minim;
AudioPlayer player;
FFT fft;
FFT fftLog;
double duration;
AudioMetaData meta;
boolean isPlaying;
boolean isRepeat;

void setup() {
  size (375, 120);
  
  minim = new Minim(this);
  player = minim.loadFile("dubstep.mp3");
  player.play();
  duration = player.length();
  isPlaying = true;
  isRepeat = false;

  font = (loadFont ("Ubuntu-10.vlw"));
  //textMode (SCREEN);             //Has been removed from 2.0
  
  bg = loadImage("main.png");
  seeker = loadImage ("seeker.png");
  seeker2 = loadImage ("seeker2.png");
  closeButton = loadImage ("closeButton.png");
  minimizeButton = loadImage ("minimizeButton.png");

  prev = loadImage ("prev.png");
  play = loadImage ("play.png");
  stop = loadImage ("stop.png");
  next = loadImage ("next.png");

  openfile = loadImage ("openfile.png");
  shuffle = loadImage ("shuffle.png");
  repeat = loadImage ("repeat.png");
  pause = loadImage ("pause.png");
  
  jfc = new JFileChooser();
}

void draw(){
  meta=player.getMetaData();
  image(bg, 0, 0);
  image(seeker, (int)(player.position()/duration*(bg.width-seeker.width)), 84);
  image(seeker2, 300, 105);
  
  image(closeButton, 350, 5);
  image(minimizeButton, 335, 5);
  
  image(prev, 15, 105);
  image(play, 35, 105);
  image(stop, 55, 105);
  image(next, 75, 105);
  image(openfile, 120, 105);
  image(shuffle, 160, 105);
  image(repeat, 210, 105);
  
  if(isPlaying){
    image(pause, 35, 104);
  }else{
    image(play, 35, 104);
  }
}

void mouseClicked() {
  if(mouseX > 15 && mouseX < 15+prev.width && mouseY > 104 && mouseY < 104+prev.height){
    println("tombol previous telah ditekan");
  }
  
  if(mouseX > 35 && mouseX < 35+play.width && mouseY < 104+play.height){
    if(isPlaying){
      isPlaying = false;
      player.pause();
    }else{
      isPlaying = true;
      player.play();
    }
  }
  
  if(mouseX > 55 && mouseX < 55+stop.width && mouseY < 104+height){
    if(isPlaying){
      isPlaying = false;
      player.pause();
      player.rewind();
    }
  }
  
  if(mouseX > 75 && mouseX <75+next.width && mouseY > 104+next.height){
    println("tombol next ditekan");
  }
  
  if(mouseX > 210 && mouseX < 210+repeat.width && mouseY < 104+repeat.height){
    println("tombol repeat ditekan");
    isRepeat = true;
  }
  
  if(mouseX > 120 && mouseX < 120+openfile.width && mouseY < 104+openfile.height){
    println("tombol open file telah ditekan");
    int result = jfc.showOpenDialog(this);
    if( result == jfc.APPROVE_OPTION){
      String filename = jfc.getSelectedFile().getAbsolutePath();
      println(filename);
      player.close();
      player = minim.loadFile(filename);
      player.play();
    }
  }
}
