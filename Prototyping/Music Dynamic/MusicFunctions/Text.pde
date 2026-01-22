/*
- East Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
//
/*void easyTextQuitButton() { //End Easy Text
 text("X", home1X+home1Width*1/2, home1Y+home1Height*3/5);
 }
 */
//
void textSetup() {
  String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
  text[0] = "Hello this is the best music player EVER!!";
  text[1] = "Search";
  text[2] = "Home";
  text[3] = "title";
  /*Fonts from OS
   println("Start of Console"); //ERROR
   String[] fontList = PFont.list(); //List all fonts available
   printArray(fontList); //List all fonts to choose
   */
  float fontSize = appHeight; //Entrie Program
  PFont titleFont; //Font var name
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, fontSize);
  float fontSizeGeorgia = 64.0;
  float divHeightGeorgia = lineDivHeight[0];
  float GeorgiaAspectRatio = fontSizeGeorgia / divHeightGeorgia;
  fontSize = lineDivHeight[0]*GeorgiaAspectRatio;
  //
  color blueInk = #3277D6; //Hexidecimal
  color whiteInk = #FFFFFF; //Grey Scale is 255
  color resetInk = whiteInk;
  fill(blueInk); //Ink below rect Grey scale 0-255
  //Grey Scale 0-255
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
  float padding = 10; //space for search between line n text

  for ( int i=0; i<3; i++) {
    if (i == 1) {
      textAlign (LEFT, CENTER); //Align X&Y, see Processing.org / reference
      text(text[i], lineDivX[i] + padding, lineDivY[i], lineDivWidth[i], lineDivHeight[i]); //+pad for x to create space
    } else {
      //all other texts
      textAlign(CENTER, CENTER);
      text(text[i], lineDivX[i], lineDivY[i], lineDivWidth[i], lineDivHeight[i]);
    }
    //Values for text: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  }
  fill(resetInk);
} //End Text Setup
//End Program Text
