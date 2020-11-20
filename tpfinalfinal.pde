//import ddf.minim.*;
import processing.sound.*;

// Navegador //
int i,j,n;
  float xp = 100;
  float yp = 550;
Aventura Aven;
void setup(){
  size(1024, 768);
  Aven= new Aventura();
}
void draw(){
 Aven.Estados();
 
}
void mousePressed(){
 Aven.Clickeado();
}
