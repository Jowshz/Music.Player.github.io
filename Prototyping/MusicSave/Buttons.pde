/* Buttons
 - quitButton
 * DIVs
 - musicButtonShapes, 2-D Music Buttons
 - Hoverover for buttons, draw()
 */
//
void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  println("Final Line of mousePressed and finishes draw()");
  exit(); //With noLoop(), exit happens here
} //End Quit Button
//
void DIVs() {
  fill(resetBackground); 
  stroke(resetInk);       // Restores crisp box borders
  quitDIV();
  playDIV();
  titleDIV();
  rect(play1X, play2Y, play1Width, play2Height);
  rect(backX, backY, backWidth, backHeight);
  rect(forX, forY, forWidth, forHeight);
  rect(lyrX, lyrY, lyrWidth, lyrHeight);
  rect(soundX, soundY, soundWidth, soundHeight);
  rect(queueX, queueY, queueWidth, queueHeight);
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(nameX, nameY, nameWidth, nameHeight);
  rect(numb2X, numb2Y, numb2Width, numb2Height);
  rect(pfpX, pfpY, pfpWidth, pfpHeight);
  rect(numb1X, numb1Y, numb1Width, numb1Height);
  rect(textX, textY, textWidth, textHeight);
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(exit1X, exit1Y, exit1Width, exit1Height);
  rect(home2X, home2Y, home2Width, home2Height);
  rect(magX, magY, magWidth, magHeight);
  rect(searchX, searchY, searchWidth, searchHeight);
  line(music1X1, music1Y1, music2X2, music2Y2);
  line(menu1X1, menu1Y1, menu2X2, menu2Y2);
  line(bar1X1, bar1Y1, bar2X2, bar2Y2);
  rect(soundbarX, soundbarY, soundbarWidth, soundbarHeight);
  rect(forRectX, forRectY, forRectWidth, forRectHeight);
  rect(backRectX, backRectY, backRectWidth, backRectHeight);
  rect(pause1X, pause1Y, pause1Width, pause1Height);
  rect(pause2X, pause2Y, pause2Width, pause2Height);
  rect(musicbox1X, musicbox1Y, musicbox1Width, musicbox1Height);
  rect(musicbox2X, musicbox2Y, musicbox2Width, musicbox2Height);
  rect(musicbox3X, musicbox3Y, musicbox3Width, musicbox3Height);
  rect(musicsongtext1X, musicsongtext1Y, musicsongtext1Width, musicsongtext1Height);
} //End DIVs
//
void quitDIV() {
  rect(exit1X, exit1Y, exit1Width, exit1Height);
} // End Quit Button DIV
//
void playDIV() {
  rect(play1X, play2Y, play1Width, play2Height);
} // End Play Button DIV
void titleDIV() {
  rect( StringDivX, StringDivY, StringDivWidth, StringDivHeight );
} //End Title DIV
//
void playButtonSymbol() {
  triangle(playX1, playY1, playX2, playY2, playX3, playY3);
} //End Play Button Symbol
//
void musicButtonShapes() {
  playButtonSymbol();
  triangle(forTriX1, forTriY1, forTriX2, forTriY2, forTriX3, forTriY3);
  triangle(backTriX1, backTriY1, backTriX2, backTriY2, backTriX3, backTriY3);
  line(mute1X1, mute1Y1, mute2X2, mute2Y2);
  line(mute3X1, mute3Y1, mute4X2, mute4Y2);
  ellipse(dotX, dotY, dotD, dotD);
  ellipse(dot2X, dot2Y, dot2D, dot2D);
  ellipse(dot3X, dot3Y, dot3D, dot3D);
  line(quelineX1, quelineY1, quelineX2, quelineY2);
  line(queline2X1, queline2Y1, queline2X2, queline2Y2);
  line(queline3X1, queline3Y1, queline3X2, queline3Y2);
  rect(lyrectX, lyrectY, lyrectWidth, lyrectHeight);
  line(lyrline1X1, lyrline1Y1, lyrline1X2, lyrline1Y2);
  line(lyrline2X1, lyrline2Y1, lyrline2X2, lyrline2Y2);
  line(lyrline3X1, lyrline3Y1, lyrline3X2, lyrline3Y2);

  beginShape();
  vertex(soundbutX, soundbutY);
  vertex(soundbut2X, soundbut2Y); 
  vertex(soundbut3X, soundbut3Y); 
  vertex(soundbut4X, soundbut4Y);
  vertex(soundbut5X, soundbut5Y); 
  endShape(CLOSE);

  line(soundln1X1, soundln1Y1, soundln1X2, soundln1Y2); 
  line(soundln2X1, soundln2Y1, soundln2X2, soundln2Y2); 
  line(soundln3X1, soundln3Y1, soundln3X2, soundln3Y2);
  line(soundln4X1, soundln4Y1, soundln4X2, soundln4Y2);
} //End Music Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //
//
void quitButtonRegular() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  playDIV();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} //
//
void playButtonReady() {
  fill(playColourBackground);
  playDIV();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  if ( mouseX>exit1X && mouseX<exit1X+exit1Width && mouseY>exit1Y &&mouseY<exit1Y+exit1Height ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>play1X && mouseX<play1X+play1Width && mouseY>play2Y && mouseY<play2Y+play2Height ) {
    if ( playButton == false ) playButtonActive();
  } else {
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  } //End Play Button Hover Over
  //
}
//
// End Button Subprogram
