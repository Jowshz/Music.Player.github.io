/* Aspect Ratio: Bike Only Demostration
- Old Man
*/
//
//Display
fullScreen(); //Landscape
//size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "Height:"+height);
//
//Population
float imageDivX = appWidth * 2.4/16;
float imageDivY = appHeight * 2/12; 
float imageDivWidth = appWidth * 13/16;
float imageDivHeight = appHeight * 5/12;
//
//Image Apsect Ratio Vars & Algorithm
// Directory or Pathway, Concatenation
String upArrow = "../../"; 
String imagefile = "Images/"; 
String Copy = "Copy";
String fileExtensionJPG = ".jpg" ;
String imagePathway1 = upArrow + imagefile + Copy + fileExtensionJPG;
//println ("Copy Pathway:", imagePathway1);
//Image Loading & Aspect Raio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 296; //Hardcoded
int imageHeight1 = 170; //Hardcoded
//Aspect Ratio
float image1ApsectRatio_GreaterOne = ( imageWidth1 > imageHeight1) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Raio
//How to make image bigger or smaller
println("Aspect Ration >1", image1ApsectRatio_GreaterOne, "Testing for Decimals, formula", imageWidth1/imageHeight1);
//Algorithm Decisions (choice)
//Aspect Ratio
/*
imageWidth1
imageDivWidth
imageHeight1
imageDivHeight
imageDivWidth, imageDivHeight
*/
//if () {} else {} //End IF Apsect Ratio





//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );

//imageWidthAdjusted imageHeightAdjusted
