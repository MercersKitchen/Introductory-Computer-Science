Boolean scissor = false;
Boolean NPCscissor = false;
Boolean reset = false;
int Userwon = 0;
int NPCwon = 0;
int ties = 0;

void WinorLose () {
  if (NPC == c || playerplayed == c) {
    if (playerplayed >= c ) {
      playerplayed = (-1);
      scissor = true;
    } 
    if (playerplayed == b ) {
      playerplayed = (-2);
      scissor = true;
    } 
    if (NPC == b) {
      NPC = (-2);
      scissor = true;
    } 
    if (NPC == playerplayed) {
      scissor = true;
    }
    if (Endgame == true) {
      if (NPC >= c )
        NPC = (-1);
      NPCscissor = true;
    } else if (NPC <= a) {
    }
  }

  if (scissor == true || Endgame == true) {
    println (playerplayed);
    println(NPC);
    if ( NPC > playerplayed) {
      println("NPC win ");
      NPCsoundeffect();
      NPCwon++;
      scissor = false;
      NPCscissor = false;
      NPC = (0);
      playerplayed = (0);
      Endgame = false;
    } else if ( NPC == playerplayed) {
      Usersoundeffect();
      print("tie ");
      ties++;
      scissor = false;
      NPCscissor = false;
      NPC = (0);
      playerplayed = (0);
      Endgame = false;
    } else {
      Usersoundeffect();
      print("You win ");
      Userwon++;
      scissor = false;
      NPCscissor = false;
      NPC = (0);
      playerplayed = (0);
      Endgame = false;
    }
  }
}

void resetGUI() {
  rect(width*2/16, height*6/16, width*1.5/16, width*1.5/16);
}

void resetmouseClicked() {
  if (mouseX>width*1.8/15 && mouseX<width*3.3/15 && mouseY>height*9.1/25 && mouseY<height*10.4/21) {
    reset(); 
    scoreboard();
    reset = true;
  }
}


void scoreboard() {
  fill(255);
  rect(width*13.5/16, height*6/16, width*2/16, width*1.5/16);
  rect(width*13.8/16 - width*0.11/36, height*7.9/16, width*1.5/16, width*0.6/16);
  fill(0);
  text("You", width*14.8/16, height*6.8/16);
  text(Userwon, width*15/16, height*7.4/16);
  text("Computer", width*13.6/16, height*6.6/16);
  text("player", width*13.7/16, height*6.9/16);
  text(NPCwon, width*14/16, height*7.4/16);
  text("Ties", width*14.3/16, height*8.2/16);
  text(ties, width*14.4/16, height*8.5/16);
}
