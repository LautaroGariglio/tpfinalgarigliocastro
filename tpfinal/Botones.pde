class Botones{
// navegador //

// marco del boton //
PImage Marco;

// arreglo de texto para botones //
int Botones= 14;
String [] txtBoton = new String [Botones];
// variables para los botones //
int xnormal1, xnormal2, ynormal, tx, ty, xbotond, xbotoni;
Botones(){
  // reproductor de sonido 
  Sonido Click;
  Marco = loadImage("Boton.jpg");
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
  tx = 200; // tamaño del boton
  ty = 80; //  tamaño del boton
  xnormal1 = width - 400;//posicion de boton
  xnormal2 = width - 800;//posicion de boton//tamaño de boton
  ynormal = height - 400;//posicion de boton
  //xbotond = xnormal1; 
 // xbotoni = xnormal2;
}
void mostrarBotonD(int index, int posx, int posy) {
  this.xnormal1 = posx;
  this.ynormal = posy;
  textAlign(CENTER);
  image(Marco, xnormal1, ynormal, tx, ty);
  text(txtBoton[index], width - 400, height - 375, tx, ty);
}
void mostrarBotonI(int index, int posx, int posy){
  this.xnormal2 = posx;
  this.ynormal = posy;
  textAlign(CENTER);  
  image(Marco, xnormal2, ynormal, tx,ty);
  text(txtBoton[index],width - 800,height - 375,tx,ty);
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
/*void clickSalir() {
  if ((mouseX > xnormal1) && (mouseX < xnormal1 + tx) && (mouseY > ynormal) && (mouseY < ynormal + ty)) {
    exit();
  }
}*/
}
