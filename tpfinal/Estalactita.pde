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
  image(Estala, xe1, ye1 - width / 20 , width  / 3 - width / 18 , width  / 3 - width / 18 );
 
}
void estalactitaCaida(){
  if (xp > width / 6){
    ye1= ye1+1;
 }
}
void estalactitaColision(){
    if ((ye1+width / 4 + width / 50 >= yp) && (xe1 + width/ 5  >= xp)) {
      
    n = 20;

  }
}


}
