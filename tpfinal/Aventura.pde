class Aventura{

 
// Clase //
Juego Jueguito;

Botones Boton;
Pantallas Imagen;
Personaje Hombre;
Oso Osito;
Sonido Fondo;
// fuente // 
PFont font;
PImage Cueva;

Aventura(){
  Jueguito = new Juego();
  Imagen = new Pantallas();
  Boton = new Botones();
  Osito = new Oso();
  Estado = "Menu";
  fill(0);
  font = loadFont("BookmanOldStyle-Bold-32.vlw");
  textFont(font);
  i = 0;
  Cueva = loadImage("Cuevadentro.jpg");  
}
void Estados(){  
  println(Estado);
   if(Estado == "Menu" ){ //0
    //Fondo.Reproducir();
      Imagen.mostrarPantalla(0);
      Boton.mostrarTitulo();
      Boton.mostrarBotonD(11,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "PrimeraPantalla") {//1
      Imagen.mostrarPantalla(1);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (Estado == "SegundaPantalla") {//2
      Imagen.mostrarPantalla(2);
      Imagen.mostrarCuadro(2);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (Estado == "TerceraPantalla") {//3
      Imagen.mostrarPantalla(3);
      Imagen.mostrarCuadro(4);
      Boton.mostrarBotonD(1,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(5,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "MuerteDia") {//4
      Imagen.mostrarPantalla(11 );
      pushStyle();
      fill(255);
      textSize(width / 15);
      textAlign(CENTER);
      text("Moriste", width/2, height / 5);
      popStyle();
      Boton.mostrarBotonD(0, width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);  
    } else if (Estado == "Cueva") {//5
      Imagen.mostrarPantalla(9);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(12,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "Cabaña") {  //6
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (Estado == "Cabaña2") { //7
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
    } else if (Estado == "OsoMata") { //8
      Imagen.mostrarPantalla(14);
      Imagen.mostrarCuadro(14);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (Estado == "CabañaInterior") {//9
      Imagen.mostrarPantalla(7);
      Imagen.mostrarCuadro(7);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);   
     
    } else if (Estado == "CabañaNoche") {//10
      Imagen.mostrarPantalla(8);
      Imagen.mostrarCuadro(9);
      Boton.mostrarBotonD(8,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(7,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "BosqueMounstro") {//11
      Imagen.mostrarPantalla(5);      
      pushStyle();
      fill(255);
      textSize(width / 15);
      textAlign(CENTER);
      text("Moriste", width/2, height / 5);
      popStyle();
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else if (Estado== "CabañaDia") { //17
      Imagen.mostrarPantalla(7);
      Boton.mostrarBotonD(8,width / 6 + width /2,width / 2 - width / 10);     
    } else if (Estado == "IzqODer") { // 18
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(11);
      Boton.mostrarBotonD(2,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(6,width / 6 ,width / 2 - width / 10);
    }  else if (Estado == "CuevaFuera") {   //20   
      Imagen.mostrarPantalla(9);
      Imagen.mostrarCuadro(12);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(12,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "Retorno") {     // 21
      Imagen.mostrarPantalla(1);
      Imagen.mostrarCuadro(17);
      Boton.mostrarBotonD(12,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(9,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "OsoAlcanza") { // 22
      Imagen.mostrarPantalla(14);
       Imagen.mostrarCuadro(8);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
      //Boton.mostrarBotonI(9,width / 6 ,width / 2 - width / 10);
    } else if (Estado == "Llegaste") { // 23
      Imagen.mostrarPantalla(0);     
      Imagen.mostrarCuadro(18);     
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);    
    } else if (Estado == "Minijuego"){ //24   
      Imagen.mostrarPantalla(18);
      Jueguito.Iniciar();
      Boton.mostrarBotonD(11,width / 6 + width /2,width / 2 - width / 10);
   }
      else if (Estado == "Playing"){ //25
      Imagen.mostrarPantalla(18);  
      Jueguito.Movimiento();
   }
      else if (Estado == "Victory"){ //26          
      Imagen.mostrarPantalla(18);  
      pushStyle();
      textAlign(CENTER);
      fill(255);
      text("¡¡ESCAPASTE!!", width/2, height/2- width / 5);
      popStyle(); 
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
   }
      else if (Estado == "Defeat"){ //27    
      Imagen.mostrarPantalla(18);   
      pushStyle();
      textAlign(CENTER);
      fill(255);
      text("¡¡PERDISTE!!", width/2, height/2- width / 5);
      popStyle();
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
   }
      else if(Estado == "Salir"){ //28
      exit();
   }   
      else if(Estado == "CabañaClean"){
        Imagen.mostrarPantalla(6);
        Boton.mostrarBotonD(2,width / 6 + width /2,width / 2 - width / 10);
        Boton.mostrarBotonI(6,width / 6 ,width / 2 - width / 10);
   }
}
void Clickeado(){
  if (Estado == "Menu") {
    Boton.clickBotonD("PrimeraPantalla"); // 1
    Boton.clickBotonI("Salir");
  } else if (Estado == "PrimeraPantalla") {
    Boton.clickBotonD("SegundaPantalla"); // 2
  } else if (Estado == "SegundaPantalla") {
    Boton.clickBotonD( "TerceraPantalla");   // 3
  } else if (Estado == "TerceraPantalla") {
    Boton.clickBotonD( "Cabaña");   // 6
    Boton.clickBotonI( "OsoMata");   // 8
  } else if (Estado == "MuerteDia") {
    Boton.clickBotonD( "Menu");   // 0
    Boton.clickBotonI( "Salir");  //28
  } else if (Estado == "Cueva") { //5
    Boton.clickBotonD( "CuevaFuera"); //20
    Boton.clickBotonI("CabañaClean"); //29
  } else if (Estado == "Cabaña") {
    Boton.clickBotonD("Cabaña2");  //7
    Boton.clickBotonI("OsoMata"); //8
  } else if (Estado == "Cabaña2") {
    Boton.clickBotonD("CabañaInterior"); //9
    Boton.clickBotonI("OsoAlcanza"); //22
  } else if (Estado == "OsoMata") {
    Boton.clickBotonD("MuerteDia"); //4
  } else if (Estado == "CabañaInterior") {
    Boton.clickBotonD("CabañaNoche"); // 10
  } else if (Estado == "CabañaNoche") {
    Boton.clickBotonD("BosqueMounstro"); //11
    Boton.clickBotonI("CabañaDia"); //17
  } else if (Estado == "BosqueMounstro") {
    Boton.clickBotonD("Menu"); //15  // 0
    Boton.clickBotonI("Salir"); //12 //28
  } 
    else if (Estado == "CabañaDia") {
    Boton.clickBotonD("IzqODer"); //18
  }
    else if (Estado == "IzqODer" ){
    Boton.clickBotonD("CuevaFuera"); //20
    Boton.clickBotonI("Retorno"); //21
  }
    else if (Estado == "CuevaFuera") {
    Boton.clickBotonD("Minijuego"); //24
    Boton.clickBotonI("IzqODer"); //18
  }
    else if (Estado == "Retorno") { //21
    Boton.clickBotonD("CabañaClean"); //29
    Boton.clickBotonI("Llegaste"); //23
  }
    else if (Estado == "OsoAlcanza") {
    Boton.clickBotonD("MuerteDia"); //4
  } else if (Estado == "Llegaste") {
    Boton.clickBotonD("Menu"); //0
  }
   else if (Estado == "Minijuego") { //24
   Boton.clickBotonD("Playing"); //25
  }
   else if(Estado == "Victory"){ //26
   Boton.clickBotonD("Cueva"); //5
   Boton.clickBotonI("Salir");//28
  }
   else if(Estado == "Defeat"){ //27
   Boton.clickBotonD("Menu"); //0
   Boton.clickBotonI("Salir"); //28
  }
   else if(Estado == "CabañaClean"){ //29
   Boton.clickBotonD("CuevaFuera"); //20
   Boton.clickBotonI("Retorno"); //21
  }
}
void tecla(){
  if( key=='m')  
  {
    if(player.isPlaying())
 {
   player.pause();
 }
 else
 {
   player.play();}
  }
  
  
  }

}
