class Botones{
// navegador //

// marco del boton //
PImage Marco;
PImage Titulo;
// arreglo de texto para botones //
int Botones= 14;
String [] txtBoton = new String [Botones];
// variables para los botones //
int xnormal1, xnormal2, ynormal, tx, ty, xbotond, xbotoni;
Botones(){
  // reproductor de sonido 
  Sonido Click;
  Marco = loadImage("Boton.jpg");
  Titulo = loadImage("Titulojuego.jpg");
  // Cargar texto de los botones
  txtBoton[1] = "Correr";
  txtBoton[2] = "Derecha";
  txtBoton[3] = "Entrar";
  txtBoton[4] = "¡FELICIDADES\n ESCAPASTE!";
  txtBoton[5] = "Hacerte \n el muerto";
  txtBoton[6] = "Izquierda";
  txtBoton[0] = "Menu";
  txtBoton[7] = "Quedarse";
  txtBoton[8] = "Salir";
  txtBoton[9] = "Seguir";
  txtBoton[10] = "Siguiente";
  txtBoton[11] = "Jugar";
  txtBoton[12] = "Volver";
  txtBoton[13] =  "Creditos";
  tx = width /  5; // tamaño del boton
  ty = height / 9; //  tamaño del boton
  xnormal1 = width /4 + width / 2 ;//posicion de boton
  xnormal2 = width / 4 ;//posicion de boton//tamaño de boton
  ynormal = height / 3 + height / 2;//posicion de boton
  
}
void mostrarBotonD(int index, int posx, int posy) {
  this.xnormal1 = posx;
  this.ynormal = posy;
  pushStyle();
  textAlign(CENTER);
  textSize(width / 38);
  image(Marco, xnormal1, ynormal, tx, ty);
  text(txtBoton[index], xnormal1 , ynormal + ynormal / 15, tx, ty);
  popStyle();
}
void mostrarBotonI(int index, int posx, int posy){
  this.xnormal2 = posx;
  this.ynormal = posy;
  pushStyle();
  textAlign(CENTER);  
  textSize(width / 38);
  image(Marco, xnormal2, ynormal, tx,ty);
  text(txtBoton[index],xnormal2,ynormal  + ynormal / 15,tx,ty);
  popStyle();
}
void clickBotonD(int accion){
  if ((mouseX > xnormal1) && (mouseX < xnormal1 + tx) && (mouseY > ynormal) && (mouseY < ynormal + ty)) {
    n = accion; 
    //Click.Reproducir();
}
}
void clickBotonI(int accion) {
  if ((mouseX > xnormal2) && (mouseX < xnormal2 + tx) && (mouseY > ynormal) && (mouseY < ynormal + ty)) {
    n = accion; 
    //Click.Reproducir();
}
}
void mostrarTitulo(){
  pushStyle();
  imageMode(CENTER);
  image(Titulo, width /2 , height / 4, width / 4, height/4);
  popStyle();
}
}
