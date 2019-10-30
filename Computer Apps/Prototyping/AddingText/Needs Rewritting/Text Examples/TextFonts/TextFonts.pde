// Example illustrates how to bring in specific fonts
// Also illustrates one of the size varaibles to make the 
// screen proportionate to the text
// Will be useful in future projects (Birthday Card)

size(400,600);
background(241,250,116); //tan

PFont f1;
f1 = createFont("Magneto", 24, true);  //(font, default size, true)
PFont f2;
f2 = createFont("Snap ITC", 20, true);

textAlign(CENTER);
textFont(f1, 24);  //font, size
fill(116,48,206);  //purple
text("Checking out Magneto Font", width/2, 140);


textFont(f2, 20);
text("Checking out Snap ITC", width/2, 180);
