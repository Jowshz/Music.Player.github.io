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
float lineDivX =  appWidth * 11.4/16;
float lineDivY = appHeight * 7.3/12;
float lineDivWidth = appWidth * 4/16;
float lineDivHeight = appHeight * 3.2/12;
//
//Strings, Text, caled Literal strings
String title = "Hello this is the best music player EVER!!";
/* Full String longer than Rectanlge, "Hi! I changed 2D Size."
  - When a String just fits the height aspect ratio is the largest, sometimes >1
  - Fonts differs in WHITE SPACE around the foreground "coloured ink"
*/
// Students enter all text from Case Study

/*Fonts from OS
  println("Start of Console"); //ERROR
  String[] fontList = PFont.list(); //List all fonts available
  printArray(fontList); //List all fonts to choose
*/
float fontSize = appHeight; //Entrie Program
PFont titleFont; //Font var name
String Calibri = "Calibri";
titleFont = createFont (Calibri, fontSize);
//
println(fontSize, Calibri, titleFont);
float fontSizeCalibri = 64.0;
//Hardcoded 
println("Font Size", fontSize );
/* Aspect Ratio Maipulations (changes to variables)
  - choose Aspect Ratio that must be multiplied: fontSize/titleHeight
  - Rewriting fontSize with formulas
 */
float CalibriAspectRatio = fontSizeCalibri / lineDivHeight;
fontSize = lineDivHeight*CalibriAspectRatio;
println("Calibri Aspect Ratio:", CalibriAspectRatio);
println(); //Skip a line
//
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//Note: Div to "see" vaiables
rect ( lineDivX, lineDivY, lineDivWidth, lineDivHeight );
//
color blueInk = #3277D6; //Hexidecimal
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(blueInk); //Ink below rect Grey scale 0-255
//
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
//Drawing Text
//ERROR Check fontSize, deceasing the text when wrapped or not shown
textFont(titleFont, fontSize);
/*float constantDecrease = 0.99;
while ( textWidth( title ) > lineDivWidth ) {
  //ERROR: infinite loop, requires exit() and print()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
}*/
//WHILE Error Check
//textFont() has option to combine font declaration with textSize()
//textFont()( is better for more than one PFont Variable
text( title, lineDivX, lineDivY, lineDivWidth, lineDivHeight );
fill(resetInk);
//
//END program
