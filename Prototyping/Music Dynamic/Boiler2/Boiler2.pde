/* Time Stamping, Program Efficiency
 
 */
//
//Library - Minim
//
//Global Variables
int timerStart, currentTime;
//
void setup() {
  timerStart = currentTime = millis();
  println("Beginning", timerStart);
  //Code for Setup()
  println("End Setup", currentTime - timerStart);
} //End setup
//
void draw() {
  println("Draw", timerStart);
  noLoop();
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
