class Persona{
  //variables tamaño
  float tam;

  //Imagen de la persona
  PImage Personita;
  //constructor
  Persona(){
  Personita = loadImage("Tipito.png");
  }
  //movimiento
  void Izquierda(){
  if (keyCode == LEFT)
  xp -= 3;
  }
  void Derecha(){
  if (keyCode == RIGHT)
  xp+= 3;

}
void personaImprimir(){
  imageMode(CENTER);
  image(Personita, xp, yp, 400, 300);
}
void personaEscapa(){
  if(xp > width){
    n=19;
  }
}
}
