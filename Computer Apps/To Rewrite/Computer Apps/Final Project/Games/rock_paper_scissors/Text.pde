PFont titleFont;
color purple = #FA00F5;

void text() {
  textAlign(CENTER);//Align X&X, see Processomg.org/ Reference
  //Values: LEFT| CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE 
  textFont(titleFont, 25);//Change the nubmer intil it fits
  fill(255); //reset inl back to white, default value
}

void Tiesoundeffect() {
  int Tiesoundeffect = int(random(2));
  if (scissor == true)
    if (Tiesoundeffect == a) {
      UserwinSoundEffect1.play();
      UserwinSoundEffect1.rewind();
    }
  if (Tiesoundeffect == b) {
    UserwinSoundEffect2.play();
    UserwinSoundEffect2.rewind();
  }
}
