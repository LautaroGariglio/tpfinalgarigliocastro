class Oso{
  // cordenadas del oso
  float xo, yo;
  // imagen del oso
  PImage Osoo;
  // variable de sonido
  import processing.sound.*;
  SoundFile file;
  Persona Hombre;
  Oso(){
  xo= - width / 4 + width / 20;
  yo= width / 2;
  Osoo = loadImage("Oso.png");
  Hombre= new Persona();
  //file= new SoundFile(this);
 // file = file.loadFile("Rugido.wav");
  // probe implementar el sonido de diferentes maneras y con diferentes bibliotecas 
  // pero no me reconoce las funciones, cuando en otro trabajo lo hice de la misma
  // manera y no me tiro ningun error. Tuve que eliminar el archivo de audio de la
  // carpeta data porque superaba los 25mb que permite subir github.
}

void osoImprimir(){
  imageMode(CENTER);
  image(Osoo, xo+ width / 10 , yo, width / 2, width / 2 - width / 10 );
  //file.play();
}
void osoCorre(){
  xo= xo+2;
  if(xo > width / 5){
    xo = xo +3;
  }
}
void osoColision(){
  if ((xo+ width / 3 - width / 32) >= xp){
   n= 20;
  }
}

 }
