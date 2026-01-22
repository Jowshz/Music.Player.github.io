/* Text
 - Easy Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
float fontSize;
PFont titleFont;
//
void easyTextQuitButton() {
  text("X", home1X+home1Width*1/2, home1Y+home1Height*3/5);
} //End Easy Text
//
void textSetup() {
  fontSize = appHeight; //Entrie Program
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, fontSize);
  //
  float fontSizeGeorgia = 64.0;
  float GeorgiaAspectRatio = fontSizeGeorgia / StringDivHeight;
  fontSize = StringDivHeight*GeorgiaAspectRatio;
} //End Text Setup
//
void textdraw() {
  fill(purpleInk);
  textAlign (CENTER, CENTER);
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELIQNE]
  textFont(titleFont, fontSize);


  //Errors



  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > StringDivWidth ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  } //End WHILE Error Check Text-wrap
  println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", StringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
  text( playListMetaData[currentSong].title(), StringDivX, StringDivY, StringDivWidth, StringDivHeight );
  fill(resetInk);
}//End Text Draw
//
//
