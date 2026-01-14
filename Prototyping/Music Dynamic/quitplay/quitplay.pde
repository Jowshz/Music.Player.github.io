/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - MouseX & Y keyVariables
 
 - What to copy and paste
 - Quit & Play DIV
 
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float play1X, play2Y, play1Width, play2Height;
float home1X, home1Y, home1Width, home1Height;
float playX1, playY1, playX2, playY2, playX3, playY3;
//
Boolean playButton=false;
//
color resetBackround, resetInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
void setup() {
  //Display
  size(500, 400);
  //fullScreen(); //displayWidth //displayHeight
  appWidth = width; //Best Practice with Key Variables
  appHeight = height; //width height displayWith displayHeight
  //
  //Population
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
  //DIVs
  rect(play1X, play2Y, play1Width, play2Height);
  rect(home1X, home1Y, home1Width, home1Height);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
  //
  //Colour Population
  color black = 0; //Grey Scale, much smaller color, 256 bits
  color white = 0; //Grey Scale
  //CANVAS: default backround and ink
  resetBackround = white;
  resetInk = black;
  //Button Colours
  color red = #A20D10;
  color blue = #3277D6;
  color gray = #555555;
  color darkgray = #000000;
  color darkblue = #225396;
  playColourBackground = blue;
  playColourSymbol = gray;
  playColourBackgroundActivated = darkblue;
  playColourSymbolActivated = darkgray;
  quitBackground = white; 
  quitBackgroundActivated = red;

    //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  if ( mouseX>play1X && mouseX<play1X+play1Width && mouseY>play2Y && mouseY<play2Y+play2Height ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
    fill(playColourBackgroundActivated);
    rect(play1X, play2Y, play1Width, play2Height);
    fill(playColourSymbolActivated);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackround);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(play1X, play2Y, play1Width, play2Height);
    fill(playColourSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackround);
  }//End Play Button Hover Over
  if ( mouseX>home1X && mouseX<home1X+home1Width && mouseY>home1Y &&mouseY<home1Y+home1Height ) {
    fill(quitBackgroundActivated);
    rect(home1X, home1Y, home1Width, home1Height);
    fill(quitBackground);
  } else {
    fill(quitBackground); 
    rect(home1X, home1Y, home1Width, home1Height);
    fill(resetBackround); 
  } //End Quit Button Hover Over
  //
} //End draw
void mousePressed() {
  if ( playButton == true ) {
    println("Play My Song");
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
