/* Population
 - divPopulation
 - colourPopulation(), Colour Population
 - TBA
 */
//Global Variables
float[] lineDivX, lineDivY, lineDivWidth, lineDivHeight;
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
  //
int numberOfDIVs = 4;
lineDivX = new float[numberOfDIVs];
lineDivY = new float[numberOfDIVs];
lineDivWidth = new float[numberOfDIVs];
lineDivHeight = new float[numberOfDIVs];

lineDivX[0] =  appWidth * 11.4/16;
lineDivY[0] = appHeight * 7.3/12;
lineDivWidth[0] = appWidth * 4/16;
lineDivHeight[0] = appHeight * 3.2/12;

lineDivX[1] = appWidth * 6.1/16;
lineDivY[1] = appHeight * 0.3/12;
lineDivWidth[1] = appWidth * 6/16;
lineDivHeight[1] = appWidth * 0.9/12;

lineDivX[2] = appWidth * 0.8/16;
lineDivY[2] = appHeight * 1.8/12;
lineDivWidth[2] = appWidth * 1.1/16;
lineDivHeight[2] = appHeight * 0.6/12;

lineDivX[3] = appWidth * 2.9/16;
lineDivY[3] = appHeight * 10.6/12;
lineDivWidth[3] = appWidth * 2/16;
lineDivHeight[3] = appHeight * 0.3/12;

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
  //Ink
  resetBlackInk = black;
  
} //End colour population
// End Subprogram Populaton
