/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth; //Best Practice with Key Variables
int appHeight = displayHeight;
//
//Ruler action of number, verify by changing ratio numbers from GUI ps
float divX = appWidth * 8.2/16;
float divY = appHeight * 10.6/12;
float divWidth = appWidth * 1.3/16;
float divHeight = appHeight * 1.3/12;
//Paperfolding action of ratios, never changes
//Order of Operations: ruler + paperfolding = correct location
float stopX = divX + divWidth * 8.2/16;
float stopY = divY + divHeight * 10.6/12;
float stopWidth = divWidth * 1.3/16;
float stopHeight = divHeight * 1.3/12;


float mute1X1 = stopX;
float mute1Y1 = stopY;
float mute2X2 = stopX;
float mute2Y2 = stopY; 
float mute3X1 = ;
float mute3Y1 = ; 
float mute4X2 = ;
float mute4Y2 = ;


float playX1 = divX + divWidth * 1/4;
float playY1 = divY + divHeight * 1/4;
float playX2 = divX + divWidth * 3/4;
float playY2 = divY + divHeight * 1/2;
float playX3 = divX + divWidth * 1/4;
float playY3 = divY + divHeight * 3/4;
//
//DIVs: for human confirmation of formulaic and variable accuracy
rect(divX, divY, divWidth, divHeight);
//
//Library of Symbols, requires DIVs
rect(stopX, stopY, stopWidth, stopHeight);
//triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
line(mute1X1, mute1Y1, mute2X2, mute2Y2);
line(mute3X1, mute3Y1, mute4X2, mute4Y2);
