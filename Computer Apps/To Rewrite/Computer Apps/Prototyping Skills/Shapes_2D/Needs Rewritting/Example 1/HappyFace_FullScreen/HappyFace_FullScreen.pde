//Notice the overlap of lines, separated by 1 pixel
//size (501, 501);
fullScreen();
print("Screen Dimension" + "\n  My display width is " + displayWidth + "\n  My dispaly hieght is " + displayHeight);

ellipse (displayWidth/2, displayHeight/2, displayHeight, displayHeight); // Face Shape
ellipse (displayWidth*3/8, displayHeight/4, displayWidth/10, displayWidth/10); // Eye,Left
ellipse (displayWidth*5/8, displayHeight/4, displayWidth/10, displayWidth/10); // Eye, Right
rectMode (CENTER); // Change the Default from CORNER
rect (displayWidth/2, displayHeight/2, displayHeight/11, displayHeight/11); // Nose
rect (displayWidth/2, displayHeight/2+displayHeight/6, displayHeight/2, displayHeight/20); //Mouth
rectMode (CORNER); // Change back to the Default