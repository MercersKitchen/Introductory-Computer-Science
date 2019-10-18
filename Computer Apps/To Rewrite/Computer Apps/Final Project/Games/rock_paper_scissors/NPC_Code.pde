Boolean Playerpicked = false;
Boolean NPCpicked = false;
Boolean Endgame = false;
int NPC = int(random(3));
//int NPC = 2; //Test
int a = 0;
int b = 1;
int c = 2;

void NPCsoundeffect() {
  int NPCsoundeffect = int(random(3));
  if (scissor == true) 
    if ( NPCsoundeffect == a) {
      NPCwinSoundEffect1.play();
      NPCwinSoundEffect1.rewind();
    }
  if (NPCsoundeffect == b) {
    NPCwinSoundEffect2.play();
    NPCwinSoundEffect2.rewind();
  }
  if ( NPCsoundeffect == c) {
    NPCwinSoundEffect3.play();
    NPCwinSoundEffect3.rewind();
  }
}

void NPCCodeSetup () {
  rect(width*7/16, height*4.2/16, width*2.5/16, width*1.5/16);
}

void reset () {
  int NPCreset = int(random(3));
  //println(NPCreset);
  println("User have won " + Userwon + " time");
  println("NPC have won " + NPCwon + " time");
  rect(width*7/16, height*4.2/16, width*2.5/16, width*1.5/16);
  if (NPCreset == a) {
    NPC = (0);
    println("a"+NPC);  //For testing
  }
  if (NPCreset == b) {
    NPC = (1);
    println("b"+NPC);  //For testing
  }
  if (NPCreset == c) {
    NPC = (2);
    println("c"+NPC);  //For testing
  }
}


void NPCCodeDraw () {
  if (Playerpicked == true)    
    if ( NPC <= a ) {
      println("NPC played rock");
      image(rock, width*7/16, height*4.2/16, width*2.5/16, width*1.5/16);
      Playerpicked = false;
      NPCpicked = true;
      Endgame = true;
    } else {
      //println("skip");
    }


  if (Playerpicked == true)    
    if ( NPC <= b) {
      println("NPC played paper");
      image(paper, width*7/16, height*4.2/16, width*2.5/16, width*1.5/16);
      Playerpicked = false;
      NPCpicked = true;
      Endgame = true;
    } else { 
      //println("skip");
    } 


  if (Playerpicked == true)    
    if ( NPC >= c ) {
      println("NPC played scissors");
      image(scissors, width*7/16, height*4.2/16, width*2.5/16, width*1.5/16);
      Playerpicked = false;
      NPCpicked = true;
      Endgame = true;
    }
}
