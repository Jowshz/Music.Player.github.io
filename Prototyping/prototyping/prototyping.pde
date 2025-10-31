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

//
//DIVs: for human confirmation of formulaic and variable accuracy
rect(play1X, play2Y, play1Width, play2Height);
rect(backX, backY, backWidth, backHeight);
//
//Library of Symbols, requires DIVs
//rect(stopX, stopY, stopWidth, stopHeight);
triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
line(mute1X1, mute1Y1, mute2X2, mute2Y2);
line(mute3X1, mute3Y1, mute4X2, mute4Y2);
