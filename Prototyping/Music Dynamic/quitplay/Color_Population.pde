void colourPopulation() {
  nightModeVariables();
  toomuchColours();
} //End Colour Population
//
void nightModeVariables() {
  if (nightMode==false) {
    nightMode=true;
  } else {
    nightMode=false;
  }
}//End Night Mode Variables
//
void toomuchColours() {
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
  //
} //End setup
