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

float music1X1 = appWidth * 2/16; //These are lines
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

float forTriX1 = forX + forWidth * 1/4; //X nad Y for 1 point of triangle
float forTriY1 = forY + forHeight * 1/4;
float forTriX2 = forX + forWidth * 1/2;
float forTriY2 = forY + forHeight * 1/2;
float forTriX3 = forX + forWidth * 1/4;
float forTriY3 = forY + forHeight * 3/4;

float forRectX = forX + forWidth * 1/2;   
float forRectY = forY + forHeight * 1/4;   
float forRectWidth = forWidth * 1/8;// Width = right X − left X Height = bottom Y − top Y  
float forRectHeight = forHeight * 1/2;     

float backTriX1 = backX + backWidth * 3/4;
float backTriY1 = backY + backHeight * 1/4;
float backTriX2 = backX + backWidth * 1/2;
float backTriY2 = backY + backHeight * 1/2;
float backTriX3 = backX + backWidth * 3/4;
float backTriY3 = backY + backHeight * 3/4;

float backRectX = backX + backWidth * 3/8;
float backRectY = backY + backHeight * 1/4;
float backRectWidth = backWidth * 1/8; // Width = right X − left X Height = bottom Y − top Y
float backRectHeight = backHeight * 1/2;

float centerXFrac = 1/4f; // all dots are 1/4 in the box
float centerYFrac = 1/4f; //put f to show as decimal
float diameterFrac = 1/16f; // how big the dots are

//No centerYFrac since its the original one 1/4f;
float dotX = queueX + queueWidth * centerXFrac;
float dotY = queueY + queueHeight * centerYFrac;
float dotD = queueWidth * diameterFrac;

centerYFrac = 2/4f; // this dots Y is 2/4
float dot2X = queueX + queueWidth * centerXFrac;
float dot2Y = queueY + queueHeight * centerYFrac;
float dot2D = queueWidth * diameterFrac;

centerYFrac = 3/4f;
float dot3X = queueX + queueWidth * centerXFrac;
float dot3Y = queueY + queueHeight * centerYFrac;
float dot3D = queueWidth * diameterFrac;

float quelineX1 = queueX + queueWidth * 3/8;
float quelineY1 = queueY + queueHeight * 1/4;
float quelineX2 = queueX + queueWidth * 3/4;
float quelineY2 = queueY + queueHeight * 1/4;

float queline2X1 = queueX + queueWidth * 3/8;
float queline2Y1 = queueY + queueHeight * 2/4;
float queline2X2 = queueX + queueWidth * 3/4;
float queline2Y2 = queueY + queueHeight * 2/4;

float queline3X1 = queueX + queueWidth * 3/8;
float queline3Y1 = queueY + queueHeight * 3/4;
float queline3X2 = queueX + queueWidth * 3/4;
float queline3Y2 = queueY + queueHeight * 3/4;


float lyrectX = lyrX + lyrWidth * 1/4; // square
float lyrectY = lyrY + lyrHeight * 1/8;
float lyrectWidth = lyrWidth * 1/2;   
float lyrectHeight = lyrHeight * 6/8; 

float lyrline1X1 = lyrectX + lyrectWidth * 1/4; //point 1 LINE
float lyrline1Y1 = lyrectY + lyrectHeight * 1/4; //point 1
float lyrline1X2 = lyrectX + lyrectWidth * 3/4; //point 2
float lyrline1Y2 = lyrectY + lyrectHeight * 1/4; //point 2

float lyrline2X1 = lyrectX + lyrectWidth * 1/4;
float lyrline2Y1 = lyrectY + lyrectHeight * 1/2;
float lyrline2X2 = lyrectX + lyrectWidth * 3/4;
float lyrline2Y2 = lyrectY + lyrectHeight * 1/2;


float lyrline3X1 = lyrectX + lyrectWidth * 1/4;
float lyrline3Y1 = lyrectY + lyrectHeight * 3/4;
float lyrline3X2 = lyrectX + lyrectWidth * 3/4;
float lyrline3Y2 = lyrectY + lyrectHeight * 3/4;

float soundbutX = soundX + soundWidth * 1/4; 
float soundbutY = soundY + soundHeight * 7/16; 

float soundbut2X = soundX + soundWidth * 3/8; 
float soundbut2Y = soundY + soundHeight * 5/16; 

float soundbut3X = soundX + soundWidth * 1/2; 
float soundbut3Y = soundY + soundHeight * 1/2; 

float soundbut4X = soundX + soundWidth * 3/8; 
float soundbut4Y = soundY + soundHeight * 11/16; 

float soundbut5X = soundX + soundWidth * 1/4; 
float soundbut5Y = soundY + soundHeight * 9/16;

float soundln1X1 = soundX + soundWidth * 4/8; 
float soundln1Y1 = soundY + soundHeight * 3/8; 
float soundln1X2 = soundX + soundWidth * 9/16; 
float soundln1Y2 = soundY + soundHeight * 4/8;

float soundln2X1 = soundX + soundWidth * 9/16; 
float soundln2Y1 = soundY + soundHeight * 4/8; 
float soundln2X2 = soundX + soundWidth * 4/8; 
float soundln2Y2 = soundY + soundHeight * 5/8;

float soundln3X1 = soundX + soundWidth * 5/8; 
float soundln3Y1 = soundY + soundHeight * 3/8; 
float soundln3X2 = soundX + soundWidth * 11/16; 
float soundln3Y2 = soundY + soundHeight * 4/8;

float soundln4X1 = soundX + soundWidth * 11/16; 
float soundln4Y1 = soundY + soundHeight * 4/8; 
float soundln4X2 = soundX + soundWidth * 5/8; 
float soundln4Y2 = soundY + soundHeight * 5/8;

float soundbarX = appWidth * 14.2/16;
float soundbarY =  appHeight * 11.15/12; /*
1.3/2 = 0.65, 0.65 + 10.6 (to make it middle) + 0.1 (add 0.1 since height is 0.2) */
float soundbarWidth = appWidth * 1.7/16;
float soundbarHeight = appHeight * 0.2/12;

float pause1X = play1X + play1Width * 1/4;
float pause1Y =  play2Y + play2Height * 1/4;
float pause1Width = backRectWidth; //less work for me :P
float pause1Height = backRectHeight;

float pause2X = play1X + play1Width * 5/8;
float pause2Y = play2Y + play2Height * 1/4; 
float pause2Width = forRectWidth;
float pause2Height = forRectHeight;


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
rect(soundbarX, soundbarY, soundbarWidth, soundbarHeight);
rect(forRectX, forRectY, forRectWidth, forRectHeight);
rect(backRectX, backRectY, backRectWidth, backRectHeight);
rect(pause1X, pause1Y, pause1Width, pause1Height);
rect(pause2X, pause2Y, pause2Width, pause2Height);
//
//Library of Symbols, requires DIVs
//rect(stopX, stopY, stopWidth, stopHeight);
triangle(playX1, playY1, playX2, playY2, playX3, playY3); //Group of Variables
triangle(forTriX1, forTriY1, forTriX2, forTriY2, forTriX3, forTriY3);
triangle(backTriX1, backTriY1, backTriX2, backTriY2, backTriX3, backTriY3);
line(mute1X1, mute1Y1, mute2X2, mute2Y2);
line(mute3X1, mute3Y1, mute4X2, mute4Y2);
ellipse(dotX, dotY, dotD, dotD); //Eclipse is dot and dotD is diamater of the dot
ellipse(dot2X, dot2Y, dot2D, dot2D);
ellipse(dot3X, dot3Y, dot3D, dot3D);
line(quelineX1, quelineY1, quelineX2, quelineY2);
line(queline2X1, queline2Y1, queline2X2, queline2Y2);
line(queline3X1, queline3Y1, queline3X2, queline3Y2);
rect(lyrectX, lyrectY, lyrectWidth, lyrectHeight);
line(lyrline1X1, lyrline1Y1, lyrline1X2, lyrline1Y2);
line(lyrline2X1, lyrline2Y1, lyrline2X2, lyrline2Y2);
line(lyrline3X1, lyrline3Y1, lyrline3X2, lyrline3Y2);
beginShape(); //5 points on a unusual shape 
vertex(soundbutX, soundbutY); //vertex's in order or the lines will connect weirdly
vertex(soundbut2X, soundbut2Y); 
vertex(soundbut3X, soundbut3Y); 
vertex(soundbut4X, soundbut4Y);
vertex(soundbut5X, soundbut5Y); 
endShape(CLOSE); //conect last too
line(soundln1X1, soundln1Y1, soundln1X2, soundln1Y2); 
line(soundln2X1, soundln2Y1, soundln2X2, soundln2Y2); 
line(soundln3X1, soundln3Y1, soundln3X2, soundln3Y2);
line(soundln4X1, soundln4Y1, soundln4X2, soundln4Y2);
line(music1X1, music1Y1, music2X2, music2Y2);
line(menu1X1, menu1Y1, menu2X2, menu2Y2);
line(bar1X1, bar1Y1, bar2X2, bar2Y2);
