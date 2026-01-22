/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
 - Hoverover for buttons, draw()
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
} //End Quit Button
//
void DIVs() {
  quitDIV();
  playDIV();
  titleDIV();
} //End DIVs
//
void quitDIV() {
  rect(home1X, home1Y, home1Width, home1Height);
} // End Quit Button DIV
//
void playDIV() {
  rect(play1X, play2Y, play1Width, play2Height);
} // End Play Button DIV
void titleDIV() {
  rect( StringDivX, StringDivY, StringDivWidth, StringDivHeight );
} //End Title DIV
//
void playButtonSymbol() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
}; //End Play Button Symbol
//
void musicButtonShapes() {
  playButtonSymbol();
} //End Music Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  //easyTextQuitButton();
  fill(resetInk);
} //
//
void quitButtonRegular() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  //easyTextQuitButton();
  fill(resetInk);
} //
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  playDIV();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} //
//
void playButtonReady() {
  fill(playColourBackground);
  playDIV();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  if ( mouseX>home1X && mouseX<home1X+home1Width && mouseY>home1Y &&mouseY<home1Y+home1Height ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Play Button Hover Over
  if ( mouseX>play1X && mouseX<play1X+play1Width && mouseY>play2Y && mouseY<play2Y+play2Height ) {
    if ( playButton == false ) playButtonActive();
  } else {
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  } //End Quit Button Hover Over
  //
}
//
// End Button Subprogram
