/* Image Subprogram
 */

void imageSetup() {
  // Directory & Pathway Concatenation
  String upArrow = "../../"; 
  String imagefile = "Images/"; 
  String Copy = "Copy";
  String fileExtensionJPG = ".jpg";
  String imagePathway1 = upArrow + imagefile + Copy + fileExtensionJPG;

  // Image Loading & Error Check
  errorImage = loadImage("error.png");
  image1 = loadImage(imagePathway1);
  
  if (image1 == null) {
    println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
    image1 = errorImage;
  }

  int imageWidth1 = 296;  // Hardcoded source image width
  int imageHeight1 = 170; // Hardcoded source image height

  // Scale-to-Fill Algorithm (Covers 100% of the box without distortion)
  float scaleX = EvilSkullWidth / float(imageWidth1);
  float scaleY = EvilSkullHeight / float(imageHeight1);
  float scaleFactor = max(scaleX, scaleY); // Pick larger scale factor

  EvilSkullWidthAdjusted1 = imageWidth1 * scaleFactor;
  EvilSkullHeightAdjusted1 = imageHeight1 * scaleFactor;

  // Offset calculations to center the oversized image within the DIV box
  offsetX = EvilSkullX - ((EvilSkullWidthAdjusted1 - EvilSkullWidth) / 2.0);
  offsetY = EvilSkullY - ((EvilSkullHeightAdjusted1 - EvilSkullHeight) / 2.0);
}
