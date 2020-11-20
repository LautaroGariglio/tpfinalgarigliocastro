//import ddf.minim.*;
import processing.sound.*;

// Navegador //
  int i,j,n;
  float xp = width / 10;
  float yp = width / 2;
Aventura Aven;
void setup(){
  size(800, 600);
  Aven= new Aventura();
}
void draw(){
 Aven.Estados();
 
}
void mousePressed(){
 Aven.Clickeado();
}
