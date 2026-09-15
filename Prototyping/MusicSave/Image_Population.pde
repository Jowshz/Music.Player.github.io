// Global Variables for Image & Display
PImage image1;
PImage errorImage;

float EvilSkullX, EvilSkullY, EvilSkullWidth, EvilSkullHeight;
float EvilSkullWidthAdjusted1, EvilSkullHeightAdjusted1;
float offsetX, offsetY;

void displayPopulation() {
  int appWidth = displayWidth; 
  int appHeight = displayHeight;

  // DIV Population coordinates
  EvilSkullX = appWidth * 2.4 / 16.0;
  EvilSkullY = appHeight * 2.0 / 12.0; 
  EvilSkullWidth = appWidth * 13.0 / 16.0;
  EvilSkullHeight = appHeight * 5.0 / 12.0;
}
