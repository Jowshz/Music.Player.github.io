/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
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
// End Button Subprogram
