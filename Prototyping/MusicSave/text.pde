/* Text
 - Easy Text, default font, size
 - TBA
 */
void drawText() {
  saveSongTitle(); // Keeps the song title variable updated
  textdraw();
  songTitle();
  //
} // End Draw Text
//
void easyTextQuitButton() {
  textAlign(CENTER, CENTER);
  textFont(titleFont, fontSize);
  fill(resetInk);
  text("X", exit1X+exit1Width*1/2, exit1Y+exit1Height*1/2); //adjust ratios or decimals until working
} //End Easy Text
//
void textSetup() {
  String Georgia = "Georgia";
  fontSize = StringDivHeight * 0.7;
  titleFont = createFont (Georgia, fontSize);
  //
} //End Text Setup
//
void textdraw() {
  fontSize = StringDivHeight * 0.7; // Reset to default size before shrinking
  textFont(titleFont);
  textSize(fontSize);
  //Only one font
  float constantDecrease = 0.95;
  int safetyCounter = 0;
  if (songTitle != null && songTitle.length() > 0) {
    while (textWidth(songTitle) > StringDivWidth && safetyCounter < 100) {
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
    safetyCounter++;
     //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", StringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
  }
 }
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
