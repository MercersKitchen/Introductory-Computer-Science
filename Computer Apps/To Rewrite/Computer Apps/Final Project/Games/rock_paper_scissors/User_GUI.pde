PImage rock;
PImage paper;
PImage scissors;

void UserGUISetup () {
  //--------------------------------rock--------------------------------
  rock= loadImage("rock.png");
  rect(width*2.5/16, height*12/16, width*2.5/16, width*1.5/16); 
  image(rock, width*2.5/16, height*12/16, width*2.5/16, width*1.5/16);
  //-------------------------------paper---------------------------------
  paper= loadImage("27958899-stock-vector-vector-toilet-paper.jpg");
  rect(width*7/16, height*12/16, width*2.5/16, width*1.5/16); //paper
  image(paper, width*7/16, height*12/16, width*2.5/16, width*1.5/16);
  //-----------------------------scissors---------------------------------
  scissors= loadImage("download.png");
  rect(width*11.5/16, height*12/16, width*2.5/16, width*1.5/16); //scissors
  image(scissors, width*11.5/16, height*12/16, width*2.5/16, width*1.5/16);
  
}
