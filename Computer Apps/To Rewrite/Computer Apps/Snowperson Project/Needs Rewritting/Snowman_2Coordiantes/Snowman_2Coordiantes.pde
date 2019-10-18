/*  Author: Mark Mercer
    Date: Halloween
    Purpose: Learning Coordinate plane and variables, then formulae
    Remember to use: noStroke, Stroke, Fill, Colour, & 
      Colour Selector
    Remember to use Debugging lines and difference between int & float
    Note: Processing does not handle fractions since it 
      operates on variables or numbers only, not fractions as numbers
*/
// Global Variable
int width1=0;    // Screen width, with formulae needs to be float
int height1=0;    // Screen height, with formulae needs to be float
int test=0;        // will need to change this to float

size (800, 800);    // Width and Height Numbers
width1 = width;
height1 = height;

// println (width1, height1);    // A debugging line to investigate why the big ellipse is height=0

//These formulae work, mathematically
// Why is the botton circle at the top?
ellipse (width1/2, ((1/2)*height1/2)-((1/2)*(1/2)*(1/2)*height1/2), (1/2)*(1/2)*height1/2, (1/2)*(1/2)*height1/2);  // Small circle, r=37.5
ellipse (width1/2, (height1/2)-((1/2)*(1/2)*height1/2), (1/2)*height1/2, (1/2)*height1/2);        // Medium Circle, r=75
ellipse (width1/2, (3/4)*height1, height1/2, height1/2);  // Big Circle, r=150

// test = (3/4)*height1;    // A debugging line to evaluate why the hieght coordinate is zero
// println (test);

// Debugging Print Lines

// Eye#1
// ellipse ();

// Eye #2
// Mouth Line

// Decoration Symbol: Green Lantern
// Rectangle Decoration
// Square Decoration
// Rectangle Decoration

// Left Arm
// Line 1
// Line 2
// Left Palm
// Thumb line
// Finger 1 line
// Finger 2 line
// Finger 3 line
// Finger 4 line

// Right Arm
// Line 1
// Line 2
// Right Palm
// Thumb line
// Finger 1 line
// Finger 2 line
// Finger 3 line
// Finger 4 line




