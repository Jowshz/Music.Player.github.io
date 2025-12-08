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
float fontSize = 50.0; //Entrie Program
PFont titleFont; //Font var name
String Calibri = "Calibri";
titleFont = createFont (Calibri, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//Note: Div to "see" vaiables
rect ( lineDivX, lineDivY, lineDivWidth, lineDivHeight );
//
color blueInk = #3277D6; //Hexidecimal
fill(blueInk); //Ink below rect Grey scale 0-255
textFont(titleFont, fontSize);
text( title, lineDivX, lineDivY, lineDivWidth, lineDivHeight );
