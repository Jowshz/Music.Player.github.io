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
