/* Text
 - Easy Text, default font, size
 - TBA
 */
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
void easyTextQuitButton() {
  text("X", home1X+home1Width*1/2, home1Y+home1Height*1/2); //adjust ratios or decimals until working
} //End Easy Text
//
void textSetup() {
  fontSize = appHeight; //Entrie Program
  fontSize = StringDivHeight;
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, fontSize);
  //
  float fontSizeGeorgia = 64.0;
  float GeorgiaAspectRatio = fontSizeGeorgia / StringDivHeight;
  fontSize = StringDivHeight*GeorgiaAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  //Only one font
  textFont(titleFont, fontSize);
  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > StringDivWidth ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  }
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", StringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
}
void songTitle() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, StringDivX, StringDivY, StringDivWidth, StringDivHeight );
  fill(resetInk);
}//End Text Draw
//
//End Subprogra Text
