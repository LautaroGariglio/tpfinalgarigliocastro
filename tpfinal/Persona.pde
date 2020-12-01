class Persona{
  //variables tamaño
  float tam;

  //Imagen de la persona
  PImage Personita;
  int txpersona, typersona;
  int xp = width / 7;
  int yp = width / 2;
  //constructor
  Persona(){
  Personita = loadImage("Tipito.png");
  txpersona = width / 2 ;
  typersona = width / 3 + width / 200;
  }
  //movimiento
  void Izquierda(){
  if (keyCode == LEFT)
  xp = xp - width / 260;
  }
  void Derecha(){
  if (keyCode == RIGHT)
  xp=xp+width / 260;

}
void personaImprimir(){
  pushStyle();
  imageMode(CENTER);
  image(Personita, xp, yp,txpersona ,typersona );
 
  popStyle();
}
void personaEscapa(){
  if(xp > width){
    n=26;
  }
}
}
