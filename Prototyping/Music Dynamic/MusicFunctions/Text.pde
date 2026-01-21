/*
- East Text, default font, size
 - TBA
 */
//Global Variables
String songTitle;
//
void easyTextQuitButton() { //End Easy Text
  text("X", home1X+home1Width*1/2, home1Y+home1Height*3/5);
}
//
void textSetup() {
  /*Fonts from OS
 println("Start of Console"); //ERROR
 String[] fontList = PFont.list(); //List all fonts available
 printArray(fontList); //List all fonts to choose
 */
float fontSize = appHeight; //Entrie Program
PFont titleFont; //Font var name
String Georgia = "Georgia";
titleFont = createFont (Georgia, fontSize);
float fontSizeGeorgia = 64.0;
float divHeightGeorgia = lineDivHeight[0];
float GeorgiaAspectRatio = fontSizeGeorgia / divHeightGeorgia;
fontSize = lineDivHeight[0]*GeorgiaAspectRatio;
} //End Text Setup
//End Program Text
