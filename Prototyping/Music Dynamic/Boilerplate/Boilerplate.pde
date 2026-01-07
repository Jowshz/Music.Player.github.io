// Hearing Music and Sound Effects
//
//
//Library -Minim
//Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initiates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs;  //ZERO, Math Property
//
void setup() {
  //Display
  size(700, 500); //width //height
  //fulscreen(); //displayWidth //displayHeight
  int appWidth = width;
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../"; //Developer Specific
  String musicFile = "Music/";
  String songName1 = "Local Elevator - Kevin MacLeod";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFile;//Concanetion
  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library

  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
