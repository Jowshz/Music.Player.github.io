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
  rect(play1X, play2Y, play1Width, play2Height);
  rect(home1X, home1Y, home1Width, home1Height);
} //End DIVs
//
void musicButtonShapes() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
} //End Music Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  rect(home1X, home1Y, home1Width, home1Height);
  fill(resetBackground);
  fill(quitButtonInk);
  fill(resetInk);
} //
//
void quitButtonRegular() {
  fill(quitBackground);
  rect(home1X, home1Y, home1Width, home1Height);
  fill(resetBackground);
  fill(quitButtonInk);
  fill(resetInk);
} //
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  rect(play1X, play2Y, play1Width, play2Height);
  fill(playColourSymbolActivated);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
  fill(resetBackground);
} //
//
void playButtonReady() {
  fill(playColourBackground);
  rect(play1X, play2Y, play1Width, play2Height);
  fill(playColourSymbol);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
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
