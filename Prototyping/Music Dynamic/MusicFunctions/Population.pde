/* Population
 - divPopulation
 - colourPopulation(), Colour Population
 - TBA
 */
//
void divPopulation() {
  play1X = appWidth * 8.2/16;
  play2Y = appHeight * 10.6/12;
  play1Width = appWidth * 1.3/16;
  play2Height = appHeight * 1.3/12;
  home1X = appWidth * 0.1/16;
  home1Y = appHeight * 1.8/12;
  home1Width = appWidth * 0.6/16;
  home1Height = appHeight * 0.6/12;
  playX1 = play1X + play1Width * 1/4;
  playY1 = play2Y + play2Height * 1/4;
  playX2 = play1X + play1Width * 3/4;
  playY2 = play2Y + play2Height * 1/2;
  playX3 = play1X + play1Width * 1/4;
  playY3 = play2Y + play2Height * 3/4;
} //End DIV Population
//
void colourPopulation() {
  color black = 0;
  color white = 255;
  //color grayScale = 256/2;
  //color gray = #B9B9B9;
  //
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75);
  //
  //Button Colours
  color red = #A20D10;
  color blue = #3277D6;
  color lildarkgray = #555555;
  color darkgray = #000000;
  color darkblue = #225396;
  //
  if ( nightMode == true) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkgray;
    playColourSymbol = darkblue;
    playColourBackgroundActivated = darkblue;
    playColourSymbolActivated = darkgray;
    quitBackground = darkblue;
    quitBackgroundActivated = red;
    quitButtonInk = darkgray;
  } else
  {
    //
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = blue;
    playColourSymbol = lildarkgray;
    playColourBackgroundActivated = darkblue;
    playColourSymbolActivated = darkgray;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  } //End Night Mode Colors
} //End colour population
//
// End Subprogram Populaton
