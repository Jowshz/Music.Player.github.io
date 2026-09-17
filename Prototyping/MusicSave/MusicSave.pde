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
// Global System Variables
Minim minim;
AudioPlayer[] playList = new AudioPlayer[3];
AudioMetaData[] playListMetaData = new AudioMetaData[3];
AudioPlayer[] soundEffects = new AudioPlayer[1];

int numberOfSongs = 3;
int currentSong = 0;
Boolean playButton = false;
Boolean nightMode = false;

// Display & Layout Variables
float appWidth, appHeight;
float play1X, play2Y, play1Width, play2Height;
float stopX, stopY, stopWidth, stopHeight;
float backX, backY, backWidth, backHeight;
float forX, forY, forWidth, forHeight;
float lyrX, lyrY, lyrWidth, lyrHeight;
float soundX, soundY, soundWidth, soundHeight;
float queueX, queueY, queueWidth, queueHeight;
float titleX, titleY, titleWidth, titleHeight;
float nameX, nameY, nameWidth, nameHeight;
float numb2X, numb2Y, numb2Width, numb2Height;
float pfpX, pfpY, pfpWidth, pfpHeight;
float numb1X, numb1Y, numb1Width, numb1Height;
float textX, textY, textWidth, textHeight;
float imageX, imageY, imageWidth, imageHeight;
float exit1X, exit1Y, exit1Width, exit1Height;
float home2X, home2Y, home2Width, home2Height;
float magX, magY, magWidth, magHeight;
float searchX, searchY, searchWidth, searchHeight;

// Lines and Complex Shapes
float music1X1, music1Y1, music2X2, music2Y2;
float menu1X1, menu1Y1, menu2X2, menu2Y2;
float bar1X1, bar1Y1, bar2X2, bar2Y2;
float soundbarX, soundbarY, soundbarWidth, soundbarHeight;
float forRectX, forRectY, forRectWidth, forRectHeight;
float backRectX, backRectY, backRectWidth, backRectHeight;
float pause1X, pause1Y, pause1Width, pause1Height;
float pause2X, pause2Y, pause2Width, pause2Height;
float musicbox1X, musicbox1Y, musicbox1Width, musicbox1Height;
float musicbox2X, musicbox2Y, musicbox2Width, musicbox2Height;
float musicbox3X, musicbox3Y, musicbox3Width, musicbox3Height;
float musicsongtext1X, musicsongtext1Y, musicsongtext1Width, musicsongtext1Height;
float StringDivX, StringDivY, StringDivWidth, StringDivHeight;

// Sub-Shape Variables
float mute1X1, mute1Y1, mute2X2, mute2Y2, mute3X1, mute3Y1, mute4X2, mute4Y2;
float playX1, playY1, playX2, playY2, playX3, playY3;
float forTriX1, forTriY1, forTriX2, forTriY2, forTriX3, forTriY3;
float backTriX1, backTriY1, backTriX2, backTriY2, backTriX3, backTriY3;
float dotX, dotY, dotD, dot2X, dot2Y, dot2D, dot3X, dot3Y, dot3D;
float quelineX1, quelineY1, quelineX2, quelineY2;
float queline2X1, queline2Y1, queline2X2, queline2Y2;
float queline3X1, queline3Y1, queline3X2, queline3Y2;
float lyrectX, lyrectY, lyrectWidth, lyrectHeight;
float lyrline1X1, lyrline1Y1, lyrline1X2, lyrline1Y2;
float lyrline2X1, lyrline2Y1, lyrline2X2, lyrline2Y2;
float lyrline3X1, lyrline3Y1, lyrline3X2, lyrline3Y2;
float soundbutX, soundbutY, soundbut2X, soundbut2Y, soundbut3X, soundbut3Y, soundbut4X, soundbut4Y, soundbut5X, soundbut5Y;
float soundln1X1, soundln1Y1, soundln1X2, soundln1Y2;
float soundln2X1, soundln2Y1, soundln2X2, soundln2Y2;
float soundln3X1, soundln3Y1, soundln3X2, soundln3Y2;
float soundln4X1, soundln4Y1, soundln4X2, soundln4Y2;

// Text & Color Variables
PFont titleFont;
float fontSize;
String songTitle = "";
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated, quitButtonInk, titleInk;

// Image Variables
PImage image1, errorImage;
float EvilSkullX, EvilSkullY, EvilSkullWidth, EvilSkullHeight;
float EvilSkullWidthAdjusted1, EvilSkullHeightAdjusted1;
float offsetX, offsetY;
//End Global Variables

void setup() {
  //Display CANVAS
  //size(); //width//height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth; //Best Practice with Key Variables
  appHeight = displayHeight;
  //
  nightMode = false;
  divPopulation();
  colourPopulation();
  displayPopulation(); // Populates EvilSkull variables
  musicSetup();
  textSetup();
  imageSetup();        // Loads and scales your image
  //textMetaData(); //Note; println only
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //println("Wahoo! I'm playing you");
  background(resetBackground);
  DIVs();
  musicButtonShapes();
  hoverOver_draw();
  drawText();
  
  if (image1 != null) {
    image(image1, imageX, imageY, imageWidth, imageHeight);
  }
} //End draw
//
void mousePressed() {
  if (soundEffects != null && soundEffects[0] != null) {
    soundEffects[0].rewind(); // Resets sound effect to start
    soundEffects[0].play();   // Plays Roblox sound effect
  }
  if ( mouseX>exit1X && mouseX<exit1X+exit1Width && mouseY>exit1Y && mouseY<exit1Y+exit1Height ) {
    delay(1000); // Optional: brief pause so the quit sound plays before closing
    quitButton();
  }
} //End Mouse Pressed
//
/* if ( playButton == true ) {
 println("Play My Song");
 playButton=false;
 } else {
 println(" ");
 }
 } //End Mouse Pressed
 */
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowercase]'
  //
  if (key=='Q' || key=='q') { 
    quitButton();
  } 
  if (key=='D' || key=='d') {
    nightMode = !nightMode; // Flips true to false, or false to true
    colourPopulation();
  } //Night Mode
  //
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) {
    if (playList != null && playList[currentSong] != null) playList[currentSong].loop(0);
  } //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    if (playList != null && playList[currentSong] != null) {
      if (playList[currentSong].isPlaying()) playList[currentSong].pause();
      else playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' || key=='s' ) {
    if (playList != null && playList[currentSong] != null) {
      if (playList[currentSong].isPlaying()) playList[currentSong].pause();
      else playList[currentSong].rewind();
    }
  }
  //
  if ( key=='L' || key=='l' )  { // Loop ONCE: Plays, then plays again, then stops & rewinds
    if (playList != null && playList[currentSong] != null) playList[currentSong].loop(1);
  }
  if ( key=='K' || key=='k' )  { // Loop Infinitely //Parameter: BLANK or -1
    if (playList != null && playList[currentSong] != null) playList[currentSong].loop();
  }
  if ( key=='F' || key=='f' )  { // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
    if (playList != null && playList[currentSong] != null) playList[currentSong].skip( 10000 );
  }
  if ( key=='R' || key=='r' )  { // Fast Reverse & Play //Parameter: negative numbers
    if (playList != null && playList[currentSong] != null) playList[currentSong].skip( -10000 );
  }
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if (playList != null && playList[currentSong] != null) {
      if (playList[currentSong].isMuted()) playList[currentSong].unmute();      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      else playList[currentSong].mute();
      //Possible ERROR: Might rewind the song
    }
  }
  if ( key == ESC ) {
    key = 0;
    quitButton();
  } // QUIT //UP
  //if ( key=='Q' || key=='q' ) exit(); //Depreciated, already coded, See Buttons // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if (playList != null && playList[currentSong] != null) {
      if ( playList[currentSong].isPlaying() ) {
        playList[currentSong].pause();
        playList[currentSong].rewind();
        if ( currentSong==numberOfSongs-1 ) {
          currentSong = 0;
        } else {
          currentSong++;
        }
        playList[currentSong].play();
      } else {
        playList[currentSong].rewind();    
        if ( currentSong==numberOfSongs-1 ) {
          currentSong = 0;
        } else {
          currentSong++;
        } // NEXT will not automatically play the song
      } //song[currentSong].play();
    }
  }
  if ( key=='B' || key=='b' ) { // Previous, Back //Students to finish
    if (playList != null && playList[currentSong] != null) {
      if ( playList[currentSong].isPlaying() ) {
        playList[currentSong].pause();
        playList[currentSong].rewind();
        if ( currentSong == 0 ) {
          currentSong = numberOfSongs - 1;
        } else {
          currentSong--;
        }
        playList[currentSong].play();
      } else {
        playList[currentSong].rewind();
        if ( currentSong == 0 ) {
          currentSong = numberOfSongs - 1;
        } else {
          currentSong--;     
        }
      }
    }
  }
  //
  if ( key=='Y' || key=='y' ) {
    if (playList != null && playList[currentSong] != null) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      currentSong = int(random(numberOfSongs));
      playList[currentSong].play(); 
    }
  } //random(0, numberOfSongs)
} //End Key Pressed
//
//if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
//Note: will randomize the currentSong number
//Caution: random() is used very often
//Question: how does truncating decimals affect returning random() floats
/*
if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
 - need to have basic GUI complete first
 */
//
//End MAIN Program
