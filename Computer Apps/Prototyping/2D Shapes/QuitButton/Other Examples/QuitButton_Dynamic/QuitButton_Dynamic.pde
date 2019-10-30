// Quit Button with hover features
// Review how to make a button, where to put ideas
// Finally reveiw how to make tabs and create a procidural type program
// Note: exit() will run one cycle of draw() or finish setup(), then close the canvas or program

// int purple = #D003FF; // Uses too many place values, 32 x 10, COLOR Variable is better
color purple = #D003FF, yellow = #FAFF03; // Combining similar definitions and assignments with a comma
// this tracking of variables does not match the description of the image

color boarder = purple, inside = yellow; // Matches descritption of image

void setup () {
  size (600, 600); //Matches CS20 Projects Cue Cards and 20-Images
} // End of setup()

void draw () {
  
  //noLoop(); //Debugging purpose
  
  fill(boarder);
  rect(500, 550, 100, 50);
  fill(inside);
  rect(500+10, 550+10, 100-10-10, 50-10-10);

  // Hovering Effect
  if (mouseX > 500 && mouseX < 600 && mouseY > 550 && mouseY < 600) {
    boarder = yellow;
    inside = purple;
  } else {
    boarder = purple;
    inside = yellow;
  } // End of IF for Hovering Effect
  
  //On double screen, able to see mouseX & mouseY and the hover-over effect at the same time
  println ("Mouse X Variaable is " + mouseX);
  println ("Mouse X Variaable is " + mouseY);
} // End draw ()

void mousePressed () {
  if (mouseX>=500 && mouseX <=600 && mouseY>=550 && mouseY<=600) {
    exit ();
  } //End of Exit() QuitButton
}