void measlesArithmeticDraw() {

  //measlesX = random(width);
  //measlesY = random(height);
  
  //Draw measles to the lower part of the face

  measlesX = random(width*1/40, width*39/40);
  measlesY = random(height*1/2, height*1/2 + height*1/8);
  drawMeasles();

  measlesX = random(width*4/40, width*36/40);
  measlesY = random(height*1/2, height*1/2 + (2*(height*1/8)) );
  drawMeasles();

  measlesX = random(width*11/40, width*29/40);
  measlesY = random(height*1/2, height*1/2 + (3*(height*1/8)) );
  drawMeasles();
  
  //Draw measles to the upper part of the face
  //Remember to switch the smaller values in the "rectangle" so random works

  measlesX = random(width*1/40, width*39/40);
  measlesY = random((height*1/2) - (height*1/8), height*1/2);
  drawMeasles();

  measlesX = random(width*4/40, width*36/40);
  measlesY = random((height*1/2) - (2*(height*1/8)), height*1/2);
  drawMeasles();

  measlesX = random(width*11/40, width*29/40);
  measlesY = random((height*1/2) - (3*(height*1/8)), height*1/2);
  drawMeasles();

}
