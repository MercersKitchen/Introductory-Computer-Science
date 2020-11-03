size(300, 300); //Geometry: width & height OR fullScreen(), displayWidth, displayHeight
int thin = width*1/20;
int thick = 2*thin; //change direct #'s in only one place
int x=width*1/4, y=height*1/4, rectWidth=width*1/2, rectHeight=height*1/2;
stroke(#FEFF00); //Yellow
strokeWeight(thin); //Copy and Paste thin and thick
fill(255, 50, 230);
rect(x, y, rectWidth, rectHeight);
strokeWeight(1); //reset to default
stroke(1); //default
fill(255); //default
