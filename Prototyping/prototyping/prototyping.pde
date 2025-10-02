/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float ppX = appWidth * 8.2/16;
float ppY = appHeight * 10.6/12;
float ppWidth = appWidth * 1.3/16;
float ppHeight = appHeight * 1.3/12;
float playX1 = ppX + ppWidth * 1/4;
float playY1 = ppY + ppHeight * 1/4;
float playX2 = ppX + ppWidth * 3/4;
float playY2 = ppY + ppHeight * 1/2;
float playX3 = ppX + ppWidth * 1/4;
float playY3 = ppY + ppHeight * 3/4;
//
rect(ppX, ppY, ppWidth, ppHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
