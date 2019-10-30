# Adding Text
Flat, Dynamic, and Procedural

**UNDER CONSTRUCTION**

Table of Contents
- General Explanations, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#general-explanations">Click Here</a>
- Function Choices, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#function-choices">Click Here</a>

Different Program Types
1. Basic code for text on screen, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#basic-code-for-text-on-screen">Click Here</a>
2. Flat Program, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText/Text_Flat">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#adding-text-flat-program">Click Here</a>
3. Autosizing In Algorithm, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-flat">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-flat">Click Here</a>
4. Procedural Program, Font Size Calculator, <a href="https://github.com/MercersKitchen/CS20/tree/master/Computer%20Apps/Processing-Java%20Prototyping/Text/Text_Function">Click Here</a>
   - Explanations Below, <a href="https://github.com/MercersKitchen/CS10/tree/master/Computer%20Apps/Prototyping%20Skills/AddingText#auto-sizing-algorithm-dynamic-see-actual-program-for-procedural">Click Here</a>

**CAUTION**
- If text is too small or too big, it will not print
- This is fixed in Typing Examples from SP2

## General Explanations

Specific Group of Functions: Printing Text to the Screen – Typography (Search Term)
- Note: the processing website has excellent progression of explanations with these
- Getting the typography ready: Menu/Tools/CreatFont
- Creating the variable & declaring it: PFont() & createFont():
- createFont() is better than loadFont() which can only be used in setup
- Setting up Typography: textAlign()
- Setting up fullScreen calculations and verifying the fit or use of scalar: textWidth()
- Printing typography: textFont(), text()
  Note: textFont() includes textSize()
- More advanced features for typography exist

### Function Choices

```java
PFont [varaibleName]
createFont( "name", size) //See Processing.org/reference for other parameters
  //Must be in void setup(){}
fill( ) //
textAlign(CENTER, CENTER)
textFont( variableName, size)
text( stringVariableName | intVaraible | floatVaraible, x-coord, y-coord, textBoxWidth, textBoxHeight)
fill() //return fill to previous setting or default setting
```

## Basic code for text on screen

```java
fullScreen();
String title = "Wahoo!";
PFont titleFont;
titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont
rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); //Title Rectangle
fill (0); //Black Ink
textAlign (CENTER); //Centered in Rectangle
textFont(titleFont, 60); // Change the Size number
text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); // Title "Cue Cards"
fill(255); //Reset to white for rest of program
```

## Adding Text: Flat Program

```java
//fullScreen();
size(500, 600);
String title= "Wahoo!";
PFont titleFont;
//String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
//printArray(fontList); //For listing all possible fonts to choose, then createFont
titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

rect(width*1/4, height*0, width*1/2, height*1/10);
fill(#2C08FF); //Purple Ink, copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
textFont(titleFont, 50); //Change the number until it fits, largest font size
text(title, width*1/4, height*0, width*1/2, height*1/10);
fill(255); //Reset to white for rest of the program
```

## Auto Sizing Algorithm: Flat

Ensure this matches the actual program

```java
fullScreen();
String title = "Wahoo!";
PFont titleFont;
titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont
//Verify Font Exists on the System
String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
printArray(fontList); //For listing all possible fonts to choose, then createFont
rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10); //Title Rectangle
textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
textAlign (CENTER);
textSize (displayHeight*1/10); //Needed for textWidth Calculation
float textLength = displayWidth*1/2; // Needed for Variable inside FOR Loop
for (float i=1; textWidth(title) > displayWidth*1/2; i = i - 0.01) {
  textLength = textLength*i;
  textSize (textLength);
  println("For" + textLength);
} //Resizing Algorithm for Title Bar
textSize (textLength);
fill (0); //Black Ink
text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10);
fill (255);
```

## Auto Sizing Algorithm: Dynamic (see actual program for Procedural)

Ensure this matches the actual program

Main Program

```java
String title = "Cue Cards Study Tool"; //  String must be "long enough"
String endCopy = "Bottom of the Page"; //  For second example, String must be "long enough"
PFont titleFont;
float textLength = displayWidth+1; //Needs a value bigger than any rectangle
titleFont = createFont ("Arial-Black", 55); //Copy spelling from CreateFont
rect (displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10);
textFont(titleFont, 40); // Type of font needed for calculation, size needed for function
textAlign (CENTER);
// Passing needed measures to Calculator
textLength = autoSize (title, displayWidth*1/2, displayHeight*1/10);
println(textLength);
textSize (textLength);
fill (0); //Black Ink
text(title, displayWidth*1/4, 0, displayWidth*1/2, displayHeight*1/10);
fill (255);
```

Function: returns Font Size
```java
float autoSize (String a, int b, int c) {
  textSize (c); // for textWidth() calc
  float textLength_local = b;
    for (float i=1; textWidth(a) > b; i = i - 0.01) {
    textLength_local = textLength_local*i;
    textSize (textLength_local);
  }
  return textLength_local;
}
```

---

# Ideas to Include


---
