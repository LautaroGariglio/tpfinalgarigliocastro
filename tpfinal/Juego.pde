class Juego{

// perseonaje del jugador
Persona Hombre;
//enemigo (el oso)
Oso Osito;
// Obstaculo 1 (Estalactita)
Estalactita Estalactitaa;
// fondo del minijuego //
 PImage Cueva;
// cuadro del boton
PImage BotonImg;
// Pantalla //
Pantallas Imagen;
// botones //
Botones Boton;
// Constructor del juego //
Juego(){
 
  Hombre = new Persona();
  Osito = new Oso();
  Estalactitaa = new Estalactita(600,-30);
  BotonImg = loadImage("Boton.jpg");
  Cueva = loadImage("Cuevadentro.jpg");  
  n=0; // menu
  Imagen = new Pantallas();
  Boton = new Botones();
}

void Menu(){   
   background(Cueva);   
   textSize(32);
   fill(0);
   textAlign(CENTER);
   pushStyle();
   fill(255);
   text("ESCAPA DE LA CUEVA", width/2, height / 2 -100 );
   popStyle();
 }
void Arranca(){
  Hombre.personaImprimir();
  Osito.osoImprimir();
  Estalactitaa.estalactitaImprimir();  
}
void Moverse(){
  
  Hombre.Derecha();
  Hombre.Izquierda();

  Hombre.personaEscapa();
  Osito.osoCorre();
  Osito.osoColision();
  Estalactitaa.estalactitaCaida();
  Estalactitaa.estalactitaColision();
}

  void Victoria(){
  background(Cueva);
  pushStyle();
  fill(255);
  text("¡¡GANASTE!!", width/2, height/2-200);
  popStyle();
}
void Derrota(){
  background(Cueva);
  pushStyle();
  fill(255);
  text("¡¡PERDISTE!!", width/2, height/2-200);
  popStyle();
}


}
