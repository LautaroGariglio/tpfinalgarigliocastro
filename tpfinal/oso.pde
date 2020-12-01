class Oso{
  // cordenadas del oso
  float xo, yo;
  // imagen del oso
  PImage Osoo;
  // variable de sonido

  Persona Hombre;
  String osochoca;
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
  pushStyle();
  imageMode(CENTER);
  image(Osoo, xo+ width / 10 , yo, width / 2, width / 2 - width / 10 );
  
  //file.play();
  popStyle();
}
void osoCorre(){
  xo= xo+ width/600;
  if(xo > width / 5){
    xo = xo +width / 300;
  }
}
void osoColision(){
  if ((xo- width / 3 - width / 32) >= Hombre.xp){
   n= 27;
   osochoca = "osochoca"; 
   print(osochoca);
  }
}

 }
