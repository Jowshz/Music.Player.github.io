/* Creating Buttons - HoverOver in draw()
 - draw() updates mouseX&Y 60x per second
 - CANVAS will repeat all code
 - effect is rect() are layered like a flip book 60x per second
 - creates change
 
 - Code explored: If-Else
 
 - Next
 - Play Button Function including println()
 - Quit Button Function including noLoop() & exit()
 
 - Next Program to Update: Music Dynamic v2
 
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
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
//
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
  //
  //DIVs
  rect(play1X, play2Y, play1Width, play2Height);
  rect(home1X, home1Y, home1Width, home1Height);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
  //
  //Colour Population
  nightMode=false;
  color black = 0; //Grey Scale, much smaller color, 256 bits
  color white = 255; //Grey Scale
  color grayscale = 256/2;
  color gray = #B9B9B9;
  //CANVAS: default Background and ink
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
    fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackground);
    rect(play1X, play2Y, play1Width, play2Height);
    fill(playColourSymbol);
    triangle(playX1, playY1, playX2, playY2, playX3, playY3);
    fill(resetBackground);
  }//End Play Button Hover Over
  if ( mouseX>home1X && mouseX<home1X+home1Width && mouseY>home1Y &&mouseY<home1Y+home1Height ) {
    fill(quitBackgroundActivated);
    rect(home1X, home1Y, home1Width, home1Height);
    fill(resetBackground);
    fill(quitButtonInk);
    //text("X", home1X+home1Width*1/2, home1Y+home1Height*3/5);
    fill(resetInk);
  } else {
    fill(quitBackground);
    rect(home1X, home1Y, home1Width, home1Height);
    fill(resetBackground);
    //text("X", home1X+home1Width*1/2, home1Y+home1Height*3/5);
    fill(resetInk);
  } //End Quit Button Hover Over
  //
} //End draw
void mousePressed() {
  if ( mouseX>home1X && mouseX<home1X+home1Width && mouseY>home1Y &&mouseY<home1Y+home1Height ) {
    quitButton();
  }
  //
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false;
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
  if (key=='Q' || key=='q') {
    quitButton();
  } //End Key Pressed
}
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
} //End Quit Button
//
void nightModeButton() {
} //End Night Mode Button
//
//End MAIN Program
