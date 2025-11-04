/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; //Best Practice with Key Variables
int appHeight = displayHeight;
//
//Ruler action of number, verify by changing ratio numbers from GUI ps
float play1X = appWidth * 8.2/16;
float play2Y = appHeight * 10.6/12;
float play1Width = appWidth * 1.3/16;
float play2Height = appHeight * 1.3/12;
//Paperfolding action of ratios, never changes
//Order of Operations: ruler + paperfolding = correct location
float stopX = play1X + play1Width * 8.2/16;
float stopY = play2Y + play2Height * 10.6/12;
float stopWidth = play1Width * 1.3/16;
float stopHeight = play2Height * 1.3/12;


float mute1X1 = stopX;
float mute1Y1 = stopY;
float mute2X2 = stopX;
float mute2Y2 = stopY; 

float mute3X1 = stopWidth;
float mute3Y1 = stopHeight; 
float mute4X2 = stopWidth;
float mute4Y2 = stopHeight;


float playX1 = play1X + play1Width * 1/4;
float playY1 = play2Y + play2Height * 1/4;
float playX2 = play1X + play1Width * 3/4;
float playY2 = play2Y + play2Height * 1/2;
float playX3 = play1X + play1Width * 1/4;
float playY3 = play2Y + play2Height * 3/4;

float backX = appWidth * 6.8/16;
float backY = appHeight * 10.6/12;
float backWidth = appWidth * 1.3/16;
float backHeight = appHeight * 1.3/12;

float forX = appWidth * 9.6/16;
float forY = appHeight * 10.6/12;
float forWidth = appWidth * 1.3/16;
float forHeight = appHeight * 1.3/12;

float lyrX = appWidth * 11.4/16;
float lyrY = appHeight * 10.6/12;
float lyrWidth = appWidth * 1.3/16;
float lyrHeight = appHeight * 1.3/12;

float soundX = appWidth * 12.8/16;
float soundY = appHeight * 10.6/12;
float soundWidth = appWidth * 1.3/16;
float soundHeight = appHeight * 1.3/12;

float queueX = appWidth * 5/16;
float queueY = appHeight * 10.6/12;
float queueWidth = appWidth * 1.3/16;
float queueHeight = appHeight * 1.3/12;

float titleX = appWidth * 2.9/16;
float titleY = appHeight * 10.6/12;
float titleWidth = appWidth * 2/16;
float titleHeight = appHeight * 0.3/12;

float nameX = appWidth * 2.9/16;
float nameY = appHeight * 11/12;
float nameWidth = appWidth * 2/16;
float nameHeight = appHeight * 0.3/12;

float numb2X = appWidth * 2.9/16;
float numb2Y = appHeight * 11.4/12;
float numb2Width = appWidth * 2/16;
float numb2Height = appHeight * 0.5/12;

float pfpX = appWidth * 2.1/16;
float pfpY = appHeight * 10.6/12;
float pfpWidth = appWidth * 0.7/16;
float pfpHeight = appHeight * 0.7/12;

float numb1X = appWidth * 2.1/16;
float numb1Y = appHeight * 11.4/12;
float numb1Width = appWidth * 0.7/16;
float numb1Height = appHeight * 0.5/12;

float textX = appWidth * 11.4/16;
float textY = appHeight * 7.3/12;
float textWidth = appWidth * 4/16;
float textHeight = appHeight * 3.2/12;

float imageX = appWidth * 2.4/16;
float imageY = appHeight * 2/12;
float imageWidth = appWidth * 13/16;
float imageHeight = appHeight * 5/12;

float home1X = appWidth * 0.1/16;
float home1Y = appHeight * 1.8/12;
float home1Width = appWidth * 0.6/16;
float home1Height = appHeight * 0.6/12;

float home2X = appWidth * 0.8/16;
float home2Y = appHeight * 1.8/12;
float home2Width = appWidth * 1.1/16;
float home2Height = appHeight * 0.6/12;

float magX = appWidth * 5/16;
float magY = appHeight * 0.3/12;
float magWidth = appWidth * 0.9/16;
float magHeight = appHeight * 0.9/12;

float searchX = appWidth * 6.1/16;
float searchY = appHeight * 0.3/12;
float searchWidth = appWidth * 4/16;
float searchHeight = appHeight * 0.9/12;

float music1X1 = appWidth * 2/16;
float music1Y1 = appHeight * 10.5/12;
float music2X2 = appWidth * 16/16;
float music2Y2 = appHeight * 10.5/12;

float menu1X1 = appWidth * 2/16;
float menu1Y1 = appHeight * 1.5/12;
float menu2X2 = appWidth * 2/16;
float menu2Y2 = appHeight * 12/12;

float bar1X1 = appWidth * 0/16;
float bar1Y1 = appHeight * 1.5/12;
float bar2X2 = appWidth * 16/16;
float bar2Y2 = appHeight * 1.5/12;

//
//DIVs: for human confirmation of formulaic and variable accuracy
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
rect(home1X, home1Y, home1Width, home1Height);
rect(home2X, home2Y, home2Width, home2Height);
rect(magX, magY, magWidth, magHeight);
rect(searchX, searchY, searchWidth, searchHeight);
line(music1X1, music1Y1, music2X2, music2Y2);
line(menu1X1, menu1Y1, menu2X2, menu2Y2);
line(bar1X1, bar1Y1, bar2X2, bar2Y2);
//
//Library of Symbols, requires DIVs
//rect(stopX, stopY, stopWidth, stopHeight);
triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
line(mute1X1, mute1Y1, mute2X2, mute2Y2);
line(mute3X1, mute3Y1, mute4X2, mute4Y2);
