/* Music Subprogram
 */
//

//
void musicSetup() {
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../"; //Developer Specific
  String musicFile = "Music/";
  String soundEffectsFile = "Music/";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Local Elevator - Kevin MacLeod";
  songName[1] = "SeeYouAgain";
  songName[2] = "danielCaesarToronto";

 
  String soundEffect1 = "ROBLOXButtonSE";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFile;//Concanetion
  println("Music Directory:", musicDirectory);
  String soundEffectsDirectory = upArrow + soundEffectsFile;
  println("Sound Effects Directory:", soundEffectsDirectory);
  String file; //TO BE Rewritted and eleted once file is LOADED
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[i] = minim.loadFile(file);
    if (playList[i] != null) {
      playListMetaData[i] = playList[i].getMetaData();
    }
  }
  currentSong = 0;
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  
  soundEffects = new AudioPlayer[1]; // Allocates array before loading index 0
  soundEffects[0] = minim.loadFile( file );
  
// Check each song in the playlist
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i] == null ) {
      println("Song failed to load at index " + i + " path: " + musicDirectory + songName[i] + fileExtension_mp3);
      printArray(playList);
      /*
      println("Music PathWay", musicDirectory);
      println("Full Music File Pathway", file);
      */
    }
  } //End Music Setup

  // Check the sound effect once
  if ( soundEffects[0] == null ) {
    println("Sound effect failed to load!" + file);
    printArray(soundEffects);
  }
} //End File Loading
