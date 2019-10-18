color red2 = #FF0000;
color green = #0AFF32;
color regularButton2 = red2;
color hoverOverButton2 = green;

void UserDraw () {
  //---------------------------------rock-------------------------------------
  if (mouseX>width*2.3/15 && mouseX<width*4.7/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    fill(hoverOverButton2);
    rect(width*2.5/16, height*12/16, width*2.5/16, width*1.5/16);
    image(rock, width*2.5/16, height*12/16, width*2.5/16, width*1.5/16);
  } else {
    fill(regularButton2);
    rect(width*2.5/16, height*12/16, width*2.5/16, width*1.5/16);
    image(rock, width*2.5/16, height*12/16, width*2.5/16, width*1.5/16);
  }

  //---------------------------------paper-------------------------------------
  if (mouseX>width*6.5/15 && mouseX<width*8.9/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    fill(hoverOverButton2);
    rect(width*7/16, height*12/16, width*2.5/16, width*1.5/16); 
    //image(paper, width*7/16, height*12/16, width*2.5/16, width*1.5/16);   //Find a better toilet paper
  } else {
    fill(regularButton2);
    rect(width*7/16, height*12/16, width*2.5/16, width*1.5/16); 
    image(paper, width*7/16, height*12/16, width*2.5/16, width*1.5/16);
  }

  //---------------------------------scissors-------------------------------------
  if (mouseX>width*10.7/15 && mouseX<width*13.1/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    fill(hoverOverButton2);
    rect(width*11.5/16, height*12/16, width*2.5/16, width*1.5/16); 
    //image(scissors, width*11.5/16, height*12/16, width*2.5/16, width*1.5/16);
  } else {
    fill(regularButton2);
    rect(width*11.5/16, height*12/16, width*2.5/16, width*1.5/16); 
    image(scissors, width*11.5/16, height*12/16, width*2.5/16, width*1.5/16);
  }

  //--------------------------------------reset---------------------------------
  if (mouseX>width*1.8/15 && mouseX<width*3.3/15 && mouseY>height*9.1/25 && mouseY<height*10.4/21) {
    fill(hoverOverButton2);
    rect(width*2/16, height*6/16, width*1.5/16, width*1.5/16);
  } else {
    fill(regularButton2);
    rect(width*2/16, height*6/16, width*1.5/16, width*1.5/16);
    fill(0);
    text("Click this button", width*2/16, height*7/16);
    text("play again", width*2.3/16, height*7.3/16);
    fill(255);
  }
}


void Usersoundeffect() {
  int Usersoundeffect = int(random(2));
  println(Usersoundeffect);
  if (scissor == true)
    if (Usersoundeffect == a) {
      TieSoundEffect1.play();
      TieSoundEffect1.rewind();
    }
  if (Usersoundeffect == b) {
    TieSoundEffect2.play();
    TieSoundEffect2.rewind();
  }
}
