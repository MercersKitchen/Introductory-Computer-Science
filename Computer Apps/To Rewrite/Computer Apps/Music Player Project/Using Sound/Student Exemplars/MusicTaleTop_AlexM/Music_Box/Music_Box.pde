import processing.sound.*; 
PImage img;
PFont text;
int time , timer = 0, minutes =0;
boolean start = true;
boolean Stop1 = false;
boolean Stop2 = false;
boolean Stop3 = false;
boolean Stop4 = false;
boolean Stop5 = false;
boolean Stop6 = false;
boolean Stop7 = false;
boolean Stop8 = false;
boolean Stop9 = false;
int error = 0;
//boolean error1 = false, error2 = false, error3 = false, error4 = false, error5 = false, error6 = false, error7 = false, error8 = false, error9 = false;
int AllSongs = 10;
SoundFile[] song = new SoundFile[AllSongs];
String title = "Music";
PFont titleFont;
float textLength = displayWidth*1/2;
float x, y, rotation, X, Y ;
int music = 1;
float r  = (255), g = (255), b = (255);
int vol = 1;
boolean song1 = true, song2 = false, song3 = false, song4 = false, song5 = false, song6 = false;
boolean song7 = false, song8 = false, song9 = false, song10 = false;
void setup() {
  img = loadImage("rsz_1greenday-feat.jpg");
 
  text = createFont("Arial-Black-48", 40, true);
   song[1] = new SoundFile(this, "01 Somewhere Now.mp3");
  song[2] = new SoundFile(this, "02 Bang Bang.mp3");
  song[3] = new SoundFile(this, "03 Revolution Radio.mp3");
  song[4] = new SoundFile(this, "04 Say Goodbye.mp3");
  song[5] = new SoundFile(this, "05 Outlaws.mp3");
  song[6] = new SoundFile(this, "06 Bouncing Off the Wall.mp3");
  song[7] = new SoundFile(this, "08 Youngblood.mp3");
  song[8] = new SoundFile(this, "09 Too Dumb to Die.mp3");
  song[9] = new SoundFile(this, "10 Troubled Times.mp3");
 
  x = displayWidth*0;
  y = displayHeight*0;
  rotation = 0;
  X = displayWidth*1/2;
  Y = displayHeight*1/2;
  fullScreen();
    textAlign(CENTER);
  for (float i = 1; textWidth(title)>displayWidth*1/2; i = 1) {
    textLength = textLength*i;
      textSize(textLength);
  }
}
void draw() {
   background(#B9B4B4);
  textFont(text, 40);
  
  
   if (start == true) { // This part manages the time remaining
    if (timer != 1000000 ) {
      timer = (1000+(millis()+time))/1000;
      println(timer); 
      
    
   
     text(timer, displayWidth*5/100, displayHeight*15/100);
     
    }
  }
  
   text("How long you have been ", displayWidth*13/100, displayHeight*5/100);
   text("on (in seconds)", displayWidth*8/100, displayHeight*10/100);
   
 image(img,displayWidth*8/10, displayHeight*1/10);
  if(music == 1 && song1 == true && Stop1 == false){
    song[1].play();
    
      
  song1 = false;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
                
  }
  else{}
  if(music == 2 && song2 == true  && Stop2 == false){
    song[2].play();
      
  song1 = true;
    song2 = false;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[1].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 3 && song3 == true && Stop3 == false){
   song[3].play();
   
  song1 = true;
    song2 = true;
      song3 = false;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[1].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 4 && song4 == true && Stop4 == false){
   song[4].play();
 
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = false;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[1].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 5 && song5 == true && Stop5 == false){
   song[5].play();
  
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = false;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[1].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 6 && song6 == true && Stop6 == false){
   song[6].play();
  
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = false;
              song7 = true;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[1].stop();
            song[7].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 7 && song7 == true && Stop7 == false ){
   song[7].play(); 
   
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = false;
                song8 = true;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[1].stop();
              song[8].stop();
                song[9].stop();
  }
   else{}
  if(music == 8 && song8 == true && Stop8 == false){
   song[8].play();
   
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = false;
                  song9 = true;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[1].stop();
                song[9].stop();
             
  }
   else{}
  if(music == 9 && song9 == true && Stop9 == false){
    song[9].play();
 
  song1 = true;
    song2 = true;
      song3 = true;
        song4 = true;
          song5 = true;
            song6 = true;
              song7 = true;
                song8 = true;
                  song9 = false;
                    song10 = true;
  song[2].stop();
    song[3].stop();
      song[4].stop();
        song[5].stop();
          song[6].stop();
            song[7].stop();
              song[8].stop();
                song[1].stop();
  }
 
   else{}
  translate(x, y);
  textSize(50);
  fill(255);
  stroke(0);
 
   
  textSize(10);
  fill(#93560C);
    rect (displayWidth*12/48, displayHeight*9/48, displayWidth*4/8, displayHeight*5/8);
  fill(#B77627);
    rect (displayWidth*15/48, displayHeight*6/24, displayWidth*3/8, displayHeight*4/8);
  fill(#62410B);
    rect (displayWidth*9/24, displayHeight*27/36, displayWidth*3/33, displayHeight*1/20);
      rect (displayWidth*13/24, displayHeight*27/36, displayWidth*3/33, displayHeight*1/20);
        fill(0);
      rect(displayWidth*9/24, displayHeight*89/100, displayWidth*1/10, displayHeight*3/20);
      rect(displayWidth*13/24, displayHeight*89/100, displayWidth*1/10, displayHeight*3/20);
         fill(255);
      rect(displayWidth*77/192, displayHeight*91/100, displayWidth*5/100, displayHeight*3/40);
      
        stroke(255);
      triangle(displayWidth*240/384, displayHeight*185/192, displayWidth*220/384, displayHeight*190/192, displayWidth*220/384, displayHeight*175/192);
  stroke(0);
  fill(0);
  translate(X, Y); 
  rotate(rotation);
  
  ellipseMode(CENTER);
  fill(0);
    ellipse (displayWidth*0, displayHeight*0, displayWidth*13/64, displayHeight*3/8);
  fill(#7C4807);
    ellipse(displayWidth*0, displayHeight*0, displayWidth*9/256, displayHeight*2/32);
    
  rotation += 0.01;
  textSize (textLength);
  fill(255);   
    text(title, displayWidth*0, displayHeight*0, displayWidth*1/60, displayHeight*1/50);
  rotation += 0.01;
  rotate(-rotation);
  fill(#81807E);
    rect (displayWidth*5/100, displayHeight*0, displayWidth*1/8, displayHeight*1/32);
    fill(0);
   
    
    
  if(music > 9){
   music --; 
  }
  if(music < 1){
   music ++; 
  }
  
}
void mousePressed(){
    if(mouseX >= displayWidth*173/320 && mouseX <= displayWidth*202/320 && mouseY <= displayHeight*256/320 && mouseY >= displayHeight*240/320 ){ 
     music ++; 
     
    
    }
    if(mouseX >= displayWidth*120/320 && mouseX <= displayWidth*149/320 && mouseY <= displayHeight*256/320  && mouseY >= displayHeight*240/320){
     music --; 
  
    }
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song1 == false){
  song[1].stop();
   Stop1 = true;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song1 == true && Stop1 == true && music == 1){
  song[1].play();
   Stop1 = false;
   song1 = true;
  
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song2 == false){
  song[2].stop();
  song2 = true;
   Stop1 = false;
  Stop2 = true;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song2 == true && Stop2 == true && music == 2){
  song[2].play();
  Stop2 = false;
  song2 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song3 == false){
  song[3].stop();
  song3 = true;
  Stop1 = false;
  Stop2 = false;
  Stop3 = true;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song3 == true && Stop3 == true && music == 3){
  song[3].play();
  Stop3 = false;
  song3 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song4 == false){
  song[4].stop();
  song4 = false;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = true;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song4 == true && Stop4 == true && music == 4){
  song[4].play();
  Stop4 = false;
  song4 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song5 == false){
  song[5].stop();
  song5 = true;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = true;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song5 == true && Stop5 == true && music == 5){
  song[5].play();
  Stop5 = false;
  song5 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song6 == false){
  song[6].stop();
  song6 = true;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = true;
  Stop7 = false;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song6 == true && Stop6 == true && music == 6){
  song[6].play();
  Stop6 = false;
  song6 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song7 == false){
  song[7].stop();
  song7 = true;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = true;
  Stop8 = false;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song7 == true && Stop7 == true && music == 7){
  song[7].play();
  Stop7 = false;
  song7 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song8 == false){
  song[8].stop();
  song8 = true;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = true;
  Stop9 = false;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song8 == true && Stop8 == true && music == 8){
  song[8].play();
  Stop8 = false;
  song8 = true;
}
if(mouseX >= displayWidth*9/24 && mouseX <= displayWidth*45/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song9 == false){
  song[9].stop();
  song9 = true;
   Stop1 = false;
  Stop2 = false;
  Stop3 = false;
  Stop4 = false;
  Stop5 = false;
  Stop6 = false;
  Stop7 = false;
  Stop8 = false;
  Stop9 = true;
}
if(mouseX >= displayWidth*13/24 && mouseX <= displayWidth*61/96 && mouseY >= displayHeight*89/100 && mouseY <= displayHeight*1/1 && song9 == true && Stop9 == true && music == 9){
  song[9].play();
  Stop9 = false;
  song9 = true;
}
}

/*
      rect(displayWidth*9/24, displayHeight*89/100, displayWidth*1/10, displayHeight*3/20);
      rect(displayWidth*13/24, displayHeight*89/100, displayWidth*1/10, displayHeight*3/20);
*/