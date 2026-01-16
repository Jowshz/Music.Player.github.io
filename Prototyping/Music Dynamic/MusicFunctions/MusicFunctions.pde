/* Creating Buttons - HoverOver in draw()
 - Add Minim from Sketch / Import Library / Minim
 -DIVs and Global Variables, includes DIV Populaton
 */
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
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
  //Display CANVAS
  //size(); //width//height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth; //Best Practice with Key Variables
  appHeight = displayHeight;
  //
  //DIV Population
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
  //DIVs: human verification of variables
  rect(play1X, play2Y, play1Width, play2Height);
  rect(home1X, home1Y, home1Width, home1Height);
  triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
  //
  //DIVs
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
