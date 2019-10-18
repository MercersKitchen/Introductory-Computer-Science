// Uses rect() & fill(), both value and default
// TAB used to copy and paste basic code to where text needed

//Reminders
//String
//PFont
//titleFont = createFont ("Harrington", 55);

void text() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 50); //Change the number until it fits, largest font size
  text(title, width*1/4, height*0, width*1/2, height*1/10);
}
