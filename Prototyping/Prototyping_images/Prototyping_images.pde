/* Aspect Ratio: Bike Only Demostration
- Old Man
- introduction: set index manually
*/
//
//Display
//fullScreen(); //Landscape
size(500, 250); //Portrait
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS", "appWidth:"+appWidth, "appHeight:"+appHeight,
//println("\n\t\t\t\t\tFullScreendisplayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "Height:"+height);
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
//
//Possible ERROR: NullPointerException
PImage errorImage = loadImage( "error.png" );
PImage image1 = loadImage( imagePathway1 ); //i.e. pathway mispelled
if ( image1 == null )  {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit();
}
int imageWidth1 = 296; //Hardcoded
int imageHeight1 = 170; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 > imageHeight1) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//Hardcoded Greater-Than-One Aspect Raio
//How to make image bigger or smaller
println("Aspect Ratio >1", image1AspectRatio_GreaterOne, "Testing for Decimals, formula", imageWidth1/imageHeight1);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ;
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image"); 
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //xx WHILE Loops can run infinitely with an eror if not controlled
  while ( imageHeightAdjusted1>imageDivHeight ) {
  println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
  if ( indexWhile < 10000 ) {
    //Checking Image Size
  } else {
    //EROR: Infinite Loop
    println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
    exit(); //doesn't work, must force WHILE Stop
    imageHeightAdjusted1=imageDivHeight; //makes WHILE False, stops WHILE
  } //End Check Infinite loop
  //imageWidthAdjusted1 *= 0.99;
  //imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
  } //END WHILE
  //
} // END IF
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image1, imageDivX, imageDivY, imageWidthAdjusted1, imageHeightAdjusted1 );
//




/*
imageWidth1
imageDivWidth
imageHeight1
imageDivHeight
imageDivWidth, imageDivHeight
imageWidthAdjusted1, imageHeightAdjusted1
*/
//if () {} else {} //End IF Apsect Ratio


//End Program
