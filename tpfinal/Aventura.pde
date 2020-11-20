class Aventura{

 
// Clase //
Juego Jueguito;

Botones Boton;
Pantallas Imagen;
Persona Hombre;
Oso Osito;
Estalactita Estalactitaa;
Sonido Fondo;
// fuente // 
PFont font;
PImage Cueva;

Aventura(){
  Jueguito = new Juego();
  Imagen = new Pantallas();
  Boton = new Botones();
  Hombre = new Persona();
  Osito = new Oso();
  Estalactitaa = new Estalactita(width / 3 + width / 3 , - width / 30);
  
  fill(0);
  font = loadFont("BookmanOldStyle-Bold-32.vlw");
  textFont(font);
  i = 0;
  Cueva = loadImage("Cuevadentro.jpg");  
}
void Estados(){  
  println(n);
   if(n == 0){
    //Fondo.Reproducir();
      Imagen.mostrarPantalla(0);
      Boton.mostrarTitulo();
      Boton.mostrarBotonD(11,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else if (n == 1) {
      Imagen.mostrarPantalla(1);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (n == 2) {
      Imagen.mostrarPantalla(2);
      Imagen.mostrarCuadro(2);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (n == 3) {
      Imagen.mostrarPantalla(3);
      Imagen.mostrarCuadro(4);
      Boton.mostrarBotonD(1,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(5,width / 6 ,width / 2 - width / 10);
    } else if (n == 4) {
      Imagen.mostrarPantalla(11 );
      pushStyle();
      fill(255);
      textSize(width / 15);
      textAlign(CENTER);
      text("Moriste", width/2, height / 5);
      popStyle();
      Boton.mostrarBotonD(0, width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);  
    } else if (n == 5) {
      Imagen.mostrarPantalla(9);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(12,width / 6 ,width / 2 - width / 10);
    } else if (n == 6) {
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (n == 7) {
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(1);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
    } else if (n == 8) {
      Imagen.mostrarPantalla(14);
      Imagen.mostrarCuadro(14);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
    } else if (n == 9) {
      Imagen.mostrarPantalla(7);
      Imagen.mostrarCuadro(7);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);   
     
    } else if (n == 10) {
      Imagen.mostrarPantalla(8);
      Imagen.mostrarCuadro(9);
      Boton.mostrarBotonD(8,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(7,width / 6 ,width / 2 - width / 10);
    } else if (n == 11) {
      Imagen.mostrarPantalla(5);   
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
      Imagen.mostrarCuadro(10);
    } else  if (n == 12) {
      Imagen.mostrarPantalla(0);
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else  if (n == 13) {
      Imagen.mostrarPantalla(14);
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else  if (n == 14) {
      Imagen.mostrarPantalla(14); 
      Imagen.mostrarCuadro(8);
      Boton.mostrarBotonD(1,width / 6 + width /2,width / 2 - width / 10);
    } else  if (n == 15) {
      Imagen.mostrarPantalla(12);  
      pushStyle();
      fill(255);
      textSize(width / 15);
      textAlign(CENTER);
      text("Moriste", width/2, height / 5);
      popStyle();
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
    } else if (n == 16) {
      Imagen.mostrarPantalla(13);
      Boton.mostrarBotonD(1,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
    } else if (n==17) {
      Imagen.mostrarPantalla(7);
      Boton.mostrarBotonD(8,width / 6 + width /2,width / 2 - width / 10);     
    } else if (n == 18) {
      Imagen.mostrarPantalla(6);
      Imagen.mostrarCuadro(11);
      Boton.mostrarBotonD(2,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(6,width / 6 ,width / 2 - width / 10);
    } else if (n == 19) {
      Imagen.mostrarPantalla(13);
      Boton.mostrarBotonD(1,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(1,width / 6 ,width / 2 - width / 10);
    } else if (n == 20) {
      Imagen.mostrarCuadro(12);
      Imagen.mostrarPantalla(9);
      Boton.mostrarBotonD(3,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(12,width / 6 ,width / 2 - width / 10);
    } else if (n == 21) {    
      Imagen.mostrarPantalla(1);
      Imagen.mostrarCuadro(17);
      Boton.mostrarBotonD(12,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(9,width / 6 ,width / 2 - width / 10);
    } else if (n == 22) {
      Imagen.mostrarPantalla(14);
       Imagen.mostrarCuadro(8);
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
      //Boton.mostrarBotonI(9,width / 6 ,width / 2 - width / 10);
    } else if (n == 23) {
      Imagen.mostrarPantalla(0);     
      Imagen.mostrarCuadro(18);     
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);    
    } else if (n==24){    
      Imagen.mostrarPantalla(18);
      Jueguito.Iniciar();
      Boton.mostrarBotonD(11,width / 6 + width /2,width / 2 - width / 10);
   }
      else if (n == 25){
      Imagen.mostrarPantalla(18);  
      Hombre.personaImprimir();
      Osito.osoImprimir();
      Estalactitaa.estalactitaImprimir();  
      Hombre.Derecha();
      Hombre.Izquierda();
      Hombre.personaEscapa();
      Osito.osoCorre();
      Osito.osoColision();
      Estalactitaa.estalactitaCaida();
      Estalactitaa.estalactitaColision();
        
   }
      else if (n == 26){          
      Imagen.mostrarPantalla(18);  
      pushStyle();
      fill(255);
      text("¡¡ESCAPASTE!!", width/2, height/2- width / 5);
      popStyle(); 
      Boton.mostrarBotonD(10,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
   }
      else if (n == 27){    
      Imagen.mostrarPantalla(18);   
      pushStyle();
      fill(255);
      text("¡¡PERDISTE!!", width/2, height/2- width / 5);
      popStyle();
      Boton.mostrarBotonD(0,width / 6 + width /2,width / 2 - width / 10);
      Boton.mostrarBotonI(8,width / 6 ,width / 2 - width / 10);
   }
      else if(n == 28){
      exit();
   }   
}
 void Clickeado(){
   
  if (n == 0) {
    Boton.clickBotonD(1);
    //Boton.clickSalir();
  } else if (n == 1) {
    Boton.clickBotonD( 2);
  } else if (n== 2) {
    Boton.clickBotonD( 3);
  } else if (n == 3) {
    Boton.clickBotonD( 6);
    Boton.clickBotonI( 8);
  } else if (n == 4) {
    Boton.clickBotonD( 0);
    Boton.clickBotonI( 28);
  } else if (n == 5) {
    Boton.clickBotonD( 20);
  } else if (n == 6) {
    Boton.clickBotonD( 7);
    Boton.clickBotonI( 8);
  } else if (n== 7) {
    Boton.clickBotonD( 9);
    Boton.clickBotonI(22);
  } else if (n == 8) {
    Boton.clickBotonD( 4);
  } else if (n == 9) {
    Boton.clickBotonD( 10);
    Boton.clickBotonI( 11);
  } else if (n == 10) {
    Boton.clickBotonD(11);
    Boton.clickBotonI( 17);
  } else if (n == 11) {
    Boton.clickBotonD( 15);
    Boton.clickBotonI( 12);
  } else if (n == 12) {
    Boton.clickBotonD( 13);
    Boton.clickBotonD(28);
  } else if (n == 13) {
    Boton.clickBotonD( 14);
  } else if (n == 14) {
    Boton.clickBotonD( 0);
  } else if (n == 15) {
    Boton.clickBotonD( 0);
    //Boton.clickBotonI(11);
  } else if (n == 16) {
    Boton.clickBotonD( 20);
  }  
  else if (n == 17) {
    Boton.clickBotonD( 18);
  }
  else if (n ==18 ){
    Boton.clickBotonD(20);
    Boton.clickBotonI(21);  
  }
    else if (n == 19) {
    Boton.clickBotonD( 2);
    Boton.clickBotonI(6);
  }
  else if (n == 20) {
    Boton.clickBotonD(24);
    Boton.clickBotonI(18);
  }
  else if (n == 21) {
      Boton.clickBotonD( 18);
      Boton.clickBotonI( 23);
    }
    else if (n == 22) {
      Boton.clickBotonD(4);
    //Boton.clickBotonI( 11);
    }else if (n == 23) {
      Boton.clickBotonD(0);
 }
     else if (n == 24) {
      Boton.clickBotonD(25);
     }
     else if(n == 26){
      Boton.clickBotonD(5);
     }
     else if(n == 27){
      Boton.clickBotonD(0);
      Boton.clickBotonI(28);
     }
}}
