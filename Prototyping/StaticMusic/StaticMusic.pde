/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
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
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs;  //ZERO, Math Property
//
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
String soundEffectsFile = "Music/";
String songName1 = "Local Elevator - Kevin MacLeod";
String soundEffect1 = "ROBLOXButtonSE";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFile;//Concanetion
String soundEffectsDirectory = upArrow + musicFile + soundEffectsFile;
String file = musicDirectory + songName1 + fileExtension_mp3;
playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("Did the music and sound load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music PathWay", musicDirectory);
  println("Full Music File Pathway", file);
  */
}
//Deal With NULL
