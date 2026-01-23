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
    playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
    currentSong++;
  } //End File Loading
  currentSong=0;
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file );
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("Did the music and sound load properly");
      printArray(playList);
      printArray(soundEffects);
      /*
  println("Music PathWay", musicDirectory);
       println("Full Music File Pathway", file);
       */
    } //End Music Setup
  }
  //
} //End File Loading
//
//
