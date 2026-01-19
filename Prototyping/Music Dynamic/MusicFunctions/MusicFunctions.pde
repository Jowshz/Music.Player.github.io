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
  divPopulation();
  DIVs(); //See Buttons
  musicButtonShapes();
  nightMode=false;
  colourPopulation();
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //println("Wahoo! I'm playing you");
  hoverOver_draw();
} //End draw
//
void mousePressed() {
  if ( mouseX>home1X && mouseX<home1X+home1Width && mouseY>home1Y &&mouseY<home1Y+home1Height ) {
    quitButton();
  }
  //
  /* if ( playButton == true ) {
   println("Play My Song");
   playButton=false;
   } else {
   println(" ");
   }
   } //End Mouse Pressed
   */
  if ( mouseX>play1X && mouseX<play1X+play1Width && mouseY>play2Y && mouseY<play2Y+play2Height ) {
    //Note, change to "Is the Song Playing Boolean"
    if ( playButton == false ) {
      playButton = true;
      println("Wahoo! I'm playing you");
    } else {
      playButton = false;
      println(" ");
    }
  }
} //End Mouse Pressed
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowercase]'
  if (key=='Q' || key=='q') {
    quitButton();
  } //Quit Button
  if (key=='D' || key=='d') {
    colourPopulation();
  } //Night Mode
} //End Key Pressed
//
//End MAIN Program
