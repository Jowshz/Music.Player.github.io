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
String title = "Hi!";
/* Full String longer than Rectanlge, "Hi! I changed 2D Size."
  - When a String just fits the height aspect ratio is the largest, sometimes >1
  - Fonts differs in WHITE SPACE around the foreground "coloured ink"
*/
// Students enter all text from Case Study
//
//Note: Div to "see" vaiables
rect ( lineDivX, lineDivY, lineDivWidth, lineDivHeight );
//
text( title, lineDivX, lineDivY, lineDivWidth, lineDivHeight );
