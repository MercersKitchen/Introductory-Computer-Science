import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer Mainsong;
AudioPlayer NPCwinSoundEffect1;
AudioPlayer NPCwinSoundEffect2;
AudioPlayer NPCwinSoundEffect3;
AudioPlayer UserwinSoundEffect1;
AudioPlayer UserwinSoundEffect2;
AudioPlayer TieSoundEffect1;
AudioPlayer TieSoundEffect2;

void setup() {
  size (900, 700);
  //Sounds
  minim = new Minim(this);
  NPCwinSoundEffect1 = minim.loadFile("Wrong Buzzer Sound Effect.mp3");
  NPCwinSoundEffect2 = minim.loadFile("Super Smash Bros. Melee - Announcer Failure.mp3");
  NPCwinSoundEffect3 = minim.loadFile("Banana Peel Slip Zip-SoundBible.com-803276918.mp3");
  UserwinSoundEffect1 = minim.loadFile("CORRECT ANSWER SOUND EFFECT.mp3");
  UserwinSoundEffect2 = minim.loadFile("Ta Da-SoundBible.com-1884170640.mp3");
  TieSoundEffect1 = minim.loadFile("Crowd Boo sound effect.mp3");
  TieSoundEffect2 = minim.loadFile("soundbible-person-whistling-at-girl-daniel_simon.mp3");
  Mainsong = minim.loadFile("Turnabout Jazz Soul - Track 1 - Ace Attorney - Court Begins Blue Note Scale.mp3");
  Mainsong.play();
  Mainsong.loop();
  
  //setup
  reset();
  UserGUISetup();
  NPCCodeSetup();
  resetGUI();
  scoreboard();
}


void draw() {
  quitButtonDraw();
  UserDraw();
  NPCCodeDraw();
  WinorLose();
}

void mouseClicked() {
  quitButtonMouseClicked();
  userPlayedMouseClicked();
  resetmouseClicked();
}
