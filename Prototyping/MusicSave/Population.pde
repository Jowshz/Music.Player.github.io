/* Population
 - divPopulation
 - colourPopulation(), Colour Population
 - TBA
 */
//Global Variables
//
void divPopulation() {
  // Main Play Button DIV
  play1X = appWidth * 8.2/16;
  play2Y = appHeight * 10.6/12;
  play1Width = appWidth * 1.3/16;
  play2Height = appHeight * 1.3/12;
  
  // Stop Button DIV
  stopX = play1X + play1Width; // Places the stop button immediately adjacent to the play button
  stopY = play2Y;              // Aligns vertically with the play button
  stopWidth = play1Width;      // Matches the play button width
  stopHeight = play2Height;    // Matches the play button height
  
  // Mute Lines
  mute1X1 = soundX + soundWidth * 1/4;
  mute1Y1 = soundY + soundHeight * 1/4;
  mute2X2 = soundX + soundWidth * 3/4;
  mute2Y2 = soundY + soundHeight * 3/4; 
  mute3X1 = soundX + soundWidth * 3/4;
  mute3Y1 = soundY + soundHeight * 1/4; 
  mute4X2 = soundX + soundWidth * 1/4;
  mute4Y2 = soundY + soundHeight * 3/4;
  
  // Play Symbol Coordinates (Triangle)
  playX1 = play1X + play1Width * 1/4;
  playY1 = play2Y + play2Height * 1/4;
  playX2 = play1X + play1Width * 3/4;
  playY2 = play2Y + play2Height * 1/2;
  playX3 = play1X + play1Width * 1/4;
  playY3 = play2Y + play2Height * 3/4;
  
  // Rewind & Fast-Forward DIVs
  backX = appWidth * 6.8/16;
  backY = appHeight * 10.6/12;
  backWidth = appWidth * 1.3/16;
  backHeight = appHeight * 1.3/12;
  
  forX = appWidth * 9.6/16;
  forY = appHeight * 10.6/12;
  forWidth = appWidth * 1.3/16;
  forHeight = appHeight * 1.3/12;
  
// Lyrics & Sound Control DIVs
  lyrX = appWidth * 11.4/16;
  lyrY = appHeight * 10.6/12;
  lyrWidth = appWidth * 1.3/16;
  lyrHeight = appHeight * 1.3/12;

  soundX = appWidth * 12.8/16;
  soundY = appHeight * 10.6/12;
  soundWidth = appWidth * 1.3/16;
  soundHeight = appHeight * 1.3/12;

  queueX = appWidth * 5/16;
  queueY = appHeight * 10.6/12;
  queueWidth = appWidth * 1.3/16;
  queueHeight = appHeight * 1.3/12;
  
  // Song Information & Title DIVs
  titleX = appWidth * 2.9/16;
  titleY = appHeight * 10.6/12;
  titleWidth = appWidth * 2/16;
  titleHeight = appHeight * 0.3/12;

  nameX = appWidth * 2.9/16;
  nameY = appHeight * 11/12;
  nameWidth = appWidth * 2/16;
  nameHeight = appHeight * 0.3/12;

  numb2X = appWidth * 2.9/16;
  numb2Y = appHeight * 11.4/12;
  numb2Width = appWidth * 2/16;
  numb2Height = appHeight * 0.5/12;

  pfpX = appWidth * 2.1/16;
  pfpY = appHeight * 10.6/12;
  pfpWidth = appWidth * 0.7/16;
  pfpHeight = appHeight * 0.7/12;

  numb1X = appWidth * 2.1/16;
  numb1Y = appHeight * 11.4/12;
  numb1Width = appWidth * 0.7/16;
  numb1Height = appHeight * 0.5/12;
  
  // Text & Main Image Display DIVs
  textX = appWidth * 11.4/16;
  textY = appHeight * 7.3/12;
  textWidth = appWidth * 4/16;
  textHeight = appHeight * 3.2/12;

  imageX = appWidth * 2.4/16;
  imageY = appHeight * 2/12;
  imageWidth = appWidth * 13/16;
  imageHeight = appHeight * 5/12;
  
  // Music Box Containers
  musicbox1X = appWidth * 2.4/16;
  musicbox1Y = appHeight * 7.3/12;
  musicbox1Width = appWidth * 2.8/16;
  musicbox1Height = appHeight * 2.9/12;

  musicbox2X = appWidth * 5.3/16;
  musicbox2Y = appHeight * 7.3/12;
  musicbox2Width = musicbox1Width;
  musicbox2Height = musicbox1Height;

  musicbox3X = appWidth * 8.2/16;
  musicbox3Y = appHeight * 7.3/12;
  musicbox3Width = musicbox1Width;
  musicbox3Height = musicbox1Height;
  
  // Navigation & Search DIVs
  
  exit1X = appWidth * 0.1/16;
  exit1Y = appHeight * 1.8/12;
  exit1Width = appWidth * 0.6/16;
  exit1Height = appHeight * 0.6/12;
  
  home2X = appWidth * 0.8/16;
  home2Y = appHeight * 1.8/12;
  home2Width = appWidth * 1.1/16;
  home2Height = appHeight * 0.6/12;
  
  magX = appWidth * 5/16;
  magY = appHeight * 0.3/12;
  magWidth = appWidth * 0.9/16;
  magHeight = appHeight * 0.9/12;
  
  searchX = appWidth * 6.1/16;
  searchY = appHeight * 0.3/12;
  searchWidth = appWidth * 4/16;
  searchHeight = appHeight * 0.9/12;
  
  // UI Separator Lines
  music1X1 = appWidth * 2/16;
  music1Y1 = appHeight * 10.5/12;
  music2X2 = appWidth * 16/16;
  music2Y2 = appHeight * 10.5/12;

  menu1X1 = appWidth * 2/16;
  menu1Y1 = appHeight * 1.5/12;
  menu2X2 = appWidth * 2/16;
  menu2Y2 = appHeight * 12/12;

  bar1X1 = appWidth * 0/16;
  bar1Y1 = appHeight * 1.5/12;
  bar2X2 = appWidth * 16/16;
  bar2Y2 = appHeight * 1.5/12;

  // Fast Forward Icon (Triangle + Bar)
  forTriX1 = forX + forWidth * 1/4;
  forTriY1 = forY + forHeight * 1/4;
  forTriX2 = forX + forWidth * 1/2;
  forTriY2 = forY + forHeight * 1/2;
  forTriX3 = forX + forWidth * 1/4;
  forTriY3 = forY + forHeight * 3/4;

  forRectX = forX + forWidth * 1/2;    
  forRectY = forY + forHeight * 1/4;    
  forRectWidth = forWidth * 1/8;
  forRectHeight = forHeight * 1/2;
  
  // Rewind Icon (Triangle + Bar)
  backTriX1 = backX + backWidth * 3/4;
  backTriY1 = backY + backHeight * 1/4;
  backTriX2 = backX + backWidth * 1/2;
  backTriY2 = backY + backHeight * 1/2;
  backTriX3 = backX + backWidth * 3/4;
  backTriY3 = backY + backHeight * 3/4;

  backRectX = backX + backWidth * 3/8;
  backRectY = backY + backHeight * 1/4;
  backRectWidth = backWidth * 1/8;
  backRectHeight = backHeight * 1/2;
  
  // Queue Icon (Dots + Lines)
  float centerXFrac = 1/4f;
  float centerYFrac = 1/4f;
  float diameterFrac = 1/16f;

  dotX = queueX + queueWidth * centerXFrac;
  dotY = queueY + queueHeight * centerYFrac;
  dotD = queueWidth * diameterFrac;

  centerYFrac = 2/4f;
  dot2X = queueX + queueWidth * centerXFrac;
  dot2Y = queueY + queueHeight * centerYFrac;
  dot2D = queueWidth * diameterFrac;

  centerYFrac = 3/4f;
  dot3X = queueX + queueWidth * centerXFrac;
  dot3Y = queueY + queueHeight * centerYFrac;
  dot3D = queueWidth * diameterFrac;

  quelineX1 = queueX + queueWidth * 3/8;
  quelineY1 = queueY + queueHeight * 1/4;
  quelineX2 = queueX + queueWidth * 3/4;
  quelineY2 = queueY + queueHeight * 1/4;

  queline2X1 = queueX + queueWidth * 3/8;
  queline2Y1 = queueY + queueHeight * 2/4;
  queline2X2 = queueX + queueWidth * 3/4;
  queline2Y2 = queueY + queueHeight * 2/4;

  queline3X1 = queueX + queueWidth * 3/8;
  queline3Y1 = queueY + queueHeight * 3/4;
  queline3X2 = queueX + queueWidth * 3/4;
  queline3Y2 = queueY + queueHeight * 3/4;
  
  // Lyrics Icon Shapes
  lyrectX = lyrX + lyrWidth * 1/4;
  lyrectY = lyrY + lyrHeight * 1/8;
  lyrectWidth = lyrWidth * 1/2;    
  lyrectHeight = lyrHeight * 6/8; 

  lyrline1X1 = lyrectX + lyrectWidth * 1/4;
  lyrline1Y1 = lyrectY + lyrectHeight * 1/4;
  lyrline1X2 = lyrectX + lyrectWidth * 3/4;
  lyrline1Y2 = lyrectY + lyrectHeight * 1/4;

  lyrline2X1 = lyrectX + lyrectWidth * 1/4;
  lyrline2Y1 = lyrectY + lyrectHeight * 1/2;
  lyrline2X2 = lyrectX + lyrectWidth * 3/4;
  lyrline2Y2 = lyrectY + lyrectHeight * 1/2;

  lyrline3X1 = lyrectX + lyrectWidth * 1/4;
  lyrline3Y1 = lyrectY + lyrectHeight * 3/4;
  lyrline3X2 = lyrectX + lyrectWidth * 3/4;
  lyrline3Y2 = lyrectY + lyrectHeight * 3/4;

  // Sound Icon Speaker Shapes
  soundbutX = soundX + soundWidth * 1/4; 
  soundbutY = soundY + soundHeight * 7/16; 
  soundbut2X = soundX + soundWidth * 3/8; 
  soundbut2Y = soundY + soundHeight * 5/16; 
  soundbut3X = soundX + soundWidth * 1/2; 
  soundbut3Y = soundY + soundHeight * 1/2; 
  soundbut4X = soundX + soundWidth * 3/8; 
  soundbut4Y = soundY + soundHeight * 11/16; 
  soundbut5X = soundX + soundWidth * 1/4; 
  soundbut5Y = soundY + soundHeight * 9/16;

  soundln1X1 = soundX + soundWidth * 4/8; 
  soundln1Y1 = soundY + soundHeight * 3/8; 
  soundln1X2 = soundX + soundWidth * 9/16; 
  soundln1Y2 = soundY + soundHeight * 4/8;

  soundln2X1 = soundX + soundWidth * 9/16; 
  soundln2Y1 = soundY + soundHeight * 4/8; 
  soundln2X2 = soundX + soundWidth * 4/8; 
  soundln2Y2 = soundY + soundHeight * 5/8;

  soundln3X1 = soundX + soundWidth * 5/8; 
  soundln3Y1 = soundY + soundHeight * 3/8; 
  soundln3X2 = soundX + soundWidth * 11/16; 
  soundln3Y2 = soundY + soundHeight * 4/8;

  soundln4X1 = soundX + soundWidth * 11/16; 
  soundln4Y1 = soundY + soundHeight * 4/8; 
  soundln4X2 = soundX + soundWidth * 5/8; 
  soundln4Y2 = soundY + soundHeight * 5/8;
  
  // Volume Bar & Pause Icons
  soundbarX = appWidth * 14.2/16;
  soundbarY = appHeight * 11.15/12;
  soundbarWidth = appWidth * 1.7/16;
  soundbarHeight = appHeight * 0.2/12;

  pause1X = play1X + play1Width * 1/4;
  pause1Y = play2Y + play2Height * 1/4;
  pause1Width = backRectWidth;
  pause1Height = backRectHeight;

  pause2X = play1X + play1Width * 5/8;
  pause2Y = play2Y + play2Height * 1/4; 
  pause2Width = forRectWidth;
  pause2Height = forRectHeight;

  musicsongtext1X = appWidth * 2.5/16;
  musicsongtext1Y = appHeight * 7.4/12;
  musicsongtext1Width = appWidth * 2.6/16;
  musicsongtext1Height = appHeight * 2.7/12;
  
  StringDivX = titleX;
  StringDivY = titleY;
  StringDivWidth = titleWidth;
  StringDivHeight = titleHeight;
}

void colourPopulation() {
  color black = 0;
  color white = 255;
  //color grayScale = 256/2;
  //color gray = #B9B9B9;
  //
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = color(64);
  resetInkNight = color(192);
  //
  //Button Colours
  color red = #A20D10;
  color purple1 = #7D60F5;
  color blue = #3277D6;
  color lildarkgray = #555555;
  color darkgray = #222222;
  color darkblue = #225396;
  //
  if ( nightMode == true) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    
    playColourBackground = darkgray;
    playColourSymbol = darkblue;
    playColourBackgroundActivated = darkblue;
    playColourSymbolActivated = color(150);
    
    quitBackground = darkblue;
    quitBackgroundActivated = red;
    quitButtonInk = darkgray;
    titleInk = purple1;
  } else {
    resetBackground = resetBackgroundDay;
    resetInk = resetInkDay;
    
    playColourBackground = blue;
    playColourSymbol = lildarkgray;
    playColourBackgroundActivated = darkblue;
    playColourSymbolActivated = color(150);
    
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
    titleInk = darkblue;
  } //End Night Mode Colors
  //
} //End colour population
//
// End Subprogram Populaton
