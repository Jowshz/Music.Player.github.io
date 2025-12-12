/* String
*/
//
//Display
fullScreen(); //Landscape
//size(500, 250); //Portrait 750
int appWidth = displayWidth; //displayWidth width
int appHeight = displayHeight; //displayHeight height
//println("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDisplay VARS", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "Height:"+height);
//
//Population
int numberOfDIVs = 3;
float[] lineDivX = new float[numberOfDIVs];
float[] lineDivY = new float[numberOfDIVs];
float[] lineDivWidth = new float[numberOfDIVs];
float[] lineDivHeight = new float[numberOfDIVs];

lineDivX[0] =  appWidth * 11.4/16;
lineDivY[0] = appHeight * 7.3/12;
lineDivWidth[0] = appWidth * 4/16;
lineDivHeight[0] = appHeight * 3.2/12;

lineDivX[1] = appWidth * 6.1/16;
lineDivY[1] = appHeight * 0.3/12;
lineDivWidth[1] = appWidth * 6/16;
lineDivHeight[1] = appWidth * 0.9/12;

lineDivX[2] = lineDivX[0];
lineDivY[2] = appHeight * 11.3/12;
lineDivWidth[2] = appWidth * 4/16;
lineDivHeight[2] = lineDivHeight[0];
//
//Strings, Text, caled Literal strings
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "Hello this is the best music player EVER!!";
text[1] = "Search";


/*Fonts from OS
  println("Start of Console"); //ERROR
  String[] fontList = PFont.list(); //List all fonts available
  printArray(fontList); //List all fonts to choose
*/
float fontSize = appHeight; //Entrie Program
PFont titleFont; //Font var name
String Calibri = "Calibri";
titleFont = createFont (Calibri, fontSize);
float fontSizeCalibri = 64.0;
float divHeightCalibi = lineDivHeight[0];
float CalibriAspectRatio = fontSizeCalibri / divHeightCalibi;
fontSize = lineDivHeight[0]*CalibriAspectRatio;
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( lineDivX[i], lineDivY[i], lineDivWidth[i], lineDivHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color blueInk = #3277D6; //Hexidecimal
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(blueInk); //Ink below rect Grey scale 0-255
//Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
//Drawing Text
//ERROR Check fontSize, deceasing the text when wrapped or not shown
textFont(titleFont, fontSize); 
float constantDecrease = 0.99;  
int iWhile=0; 
for ( int i=0; i<3; i++ ) {
  while ( textWidth( text[i] ) > lineDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; 
    textFont(titleFont, fontSize); 
  } //End WHILE Error Check Text-wrap
   println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", lineDivWidth[i]-textWidth( text[i] ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
} //End FOR Loop, Font Size Check in DIVs
//

//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont()( is better for more than one PFont Variable
for ( int i=0; i<3; i++) {
  text( text[i], lineDivX[i], lineDivY[i], lineDivWidth[i], lineDivHeight[i] );
}
fill(resetInk);
//
//END program
