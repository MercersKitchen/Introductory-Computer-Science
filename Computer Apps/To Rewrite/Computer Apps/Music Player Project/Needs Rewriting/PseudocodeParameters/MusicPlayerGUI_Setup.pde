void musicPlayerGUI_Setup() {
  rect( width*1/6, height*1/8, width*4/6, height*6/8, 60); // Device Rectangle with rounded courners, need extra 10 pixels
  // Option to put gradient

  //Main Button Area, Concentric Rings
  fill(random(255), random(255), random(255));
  ellipse(width*1/2, height*1/2, width*1/2, width*1/2); //Outer
  strokeWeight(10); //changes the thickness of the line
  fill(random(255), random(255), random(255));
  ellipse(width*1/2, height*1/2, width*1/2-width*1/20, width*1/2-width*1/20); // Middle
  strokeWeight(1); //resets default
  fill(255);
  ellipse(width*1/2, height*1/2, width*1/2-width*1/10, width*1/2-width*1/10); //Inside
  //Option to fill with different colours
  //fill(); //reminder: reset to defaults each time


  //Play-Stop Button
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
    fill(hoverOverButton);
    rect(width*1/2-width*1/16, height*1/2-height*1/16, width*2/16, height*2/16, 15); //Courners Rounded more than Outer Rectangle, change?
  } else {
    fill(regularButton);
    rect(width*1/2-width*1/16, height*1/2-height*1/16, width*2/16, height*2/16, 15); //Courners Rounded more than Outer Rectangle, change?
  }

  fill(0);
  triangle(width*1/2-width*1.5/40, height*1/2-height*1/40, width*1/2, height*1/2, width*1/2-width*1.5/40, height*1/2+height*1/40); //Notice X&Y Coordinates
  rect(width*1/2+width*1/50, height*1/2-height*1/40, width*1/40, height*2/40); //Square for Stop
  fill(255);

  //Next and Previous Buttons
  /*
  triangle(); //Next Button
   triangle(); 
   line();
   triangle(); //Previous Button
   triangle(); 
   line();
   */

  //Volume Buttons
  //line(); //Volume Up
  //line();
  //line(); //Volume Down

  //Colour Fill Power Button
  //fill(); //Green for Play, Red for not-play, press for end()
  //ellipse(); 

  //Menu Button
  //ellipse(); //Concentric Rings
  //ellipse(); 
  //ellipse(); 
  //ellipse(); //3-dots
  //ellipse(); 
  //ellipse();
}
