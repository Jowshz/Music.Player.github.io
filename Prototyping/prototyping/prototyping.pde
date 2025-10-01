/* DIVs: 2D Rectangles
*/
//
fullScreen(); //displayWidth //displayHeight
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float imageX = appWidth * 2.5/16;
float imageY = appHeight * 2/12;
float imageWidth = appWidth * 13/16;
float imageHeight = appHeight * 5/12;
float playX1 = imageX + imageWidth * 1/4;
float playY1 = imageY + imageHeight * 1/4;
float playX2 = appWidth * 3/4;
float playY2 = appHeight * 1/2;
float playX3 = appWidth * 1/4;
float playY3 = appHeight * 3/4;
//
rect(imageX, imageY, imageWidth, imageHeight);
//
triangle(playX1, playY1, playX2, playY2, playX3, playY3);
