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
  Imagen = new Pantallas();
  Boton = new Botones();
}
void Iniciar(){     
   textSize(width / 32);
   fill(0);
   textAlign(CENTER);
   pushStyle();
   fill(255);
   text("ESCAPA DE LA CUEVA", width/2, height / 2 - width / 10 );
   popStyle();
  }
}
