class Estalactita{

 float xe1, ye1;
 PImage Estala;
 // objeto persona para usar sus variables 
 Persona Hombre;
 Estalactita(float xe, float ye){
 Estala = loadImage("Estalactita.png");
 Hombre = new Persona();

 this.xe1 = xe;
 this.ye1 = ye;

 }
void estalactitaImprimir(){
  image(Estala, xe1, ye1 - 50, 300, 300);
 
}
void estalactitaCaida(){
  if ((xp > 170) || (ye1 < height)){
    ye1= ye1+1;
 }
}
void estalactitaColision(){
    if ((ye1+270 >= yp) && (xe1+200 >= xp)) {
      
    n = 27;

  }
}


}
