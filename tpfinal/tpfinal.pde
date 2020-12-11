import ddf.minim.*;
import processing.sound.*;
Minim minim;
AudioPlayer player;
PVector posicion;
// Navegador //
  int i,j,n;
  String Estado;
Aventura Aven;
void setup(){ minim = new Minim(this);
  size(800,600);
  player = minim.loadFile("Musica.wav");
  player.setGain(-10);
  player.loop();
  
  
  Aven= new Aventura();
}
void draw(){
 Aven.Estados();
 
}
void mousePressed(){
 Aven.Clickeado();
}
void keyPressed(){
Aven.tecla();
}
