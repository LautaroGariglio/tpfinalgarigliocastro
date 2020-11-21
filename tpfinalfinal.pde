//import ddf.minim.*;
import processing.sound.*;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
// Navegador //
int i,j,n;
  float xp = 100;
  float yp = 550;
Aventura Aven;
void setup(){
  minim = new Minim(this);
  player = minim.loadFile("musica.mp3");
  player.setGain(-10);
  player.loop();
  size(1024, 768);
  Aven= new Aventura();
}
void draw(){
 Aven.Estados();
  player.isPlaying();
 
}
void mousePressed(){
 Aven.Clickeado();
}
void keyPressed(){
Aven.tecla();
}
