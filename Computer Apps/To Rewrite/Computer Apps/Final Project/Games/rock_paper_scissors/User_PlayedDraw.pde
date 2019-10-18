int playedrock = 0;
int playedpaper = 1;
int playedscissor = 2;
int playerplayed = 0;


void userPlayedMouseClicked () {
  if (mouseX>width*2.3/15 && mouseX<width*4.7/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    println("User played rock");
    playerplayed = (0);
  }
  if (mouseX>width*6.5/15 && mouseX<width*8.9/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    println("User played paper");
    playerplayed = (1);
  }
  if (mouseX>width*10.7/15 && mouseX<width*13.1/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21) {
    println("User played scissors");
    playerplayed = (2);
  }
//                                                 rock                                                                                            paper                                                                                                 scissors          
  if (mouseX>width*2.3/15 && mouseX<width*4.7/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21 || mouseX>width*6.5/15 && mouseX<width*8.9/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21 || mouseX>width*10.7/15 && mouseX<width*13.1/15 && mouseY>height*18.7/25 && mouseY<height*18.2/21)
    if (Playerpicked == true) {
      //println("false");
      //Playerpicked = false;
    } else {
      //println("true");
      Playerpicked = true;
    }
}
