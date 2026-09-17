/* Text
 - Easy Text, default font, size
 - TBA
 */
void drawText() {
  saveSongTitle(); // Keeps the song title variable updated
  textdraw();
  renderSongTitle();
  //
} // End Draw Text
//
void easyTextQuitButton() {
    if (titleFont != null) {
    textAlign(CENTER, CENTER);
    textFont(titleFont, exit1Height * 0.5); // Safely scale font to fit the quit box
    fill(quitButtonInk);
    text("X", exit1X, exit1Y, exit1Width, exit1Height);
    fill(resetInk);
  }
}//End Easy Text
//
void textSetup() {
  String Georgia = "Georgia";
  titleFont = createFont (Georgia, 48);
  //
} //End Text Setup
//
void textdraw() {
  float tempFontSize = StringDivHeight * 0.7; // Local font size calculation
  float constantDecrease = 0.95;
  int safetyCounter = 0;
  
  if (songTitle != null && songTitle.length() > 0) {
    textFont(titleFont, tempFontSize);
    
    // Dynamically scale down font size until it fits inside StringDivWidth
    while (textWidth(songTitle) > StringDivWidth && safetyCounter < 100 && tempFontSize > 1) {
      tempFontSize *= constantDecrease;
      textFont(titleFont, tempFontSize);
      safetyCounter++;
    }
  }
  
  textSize(tempFontSize); // Assign calculated size for rendering
}
void renderSongTitle() {
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk); //Ink, hexidecimal copied from Color Selector
  text( songTitle, StringDivX, StringDivY, StringDivWidth, StringDivHeight );
  fill(resetInk);
}//End Text Draw
//
//End Subprogra Text
