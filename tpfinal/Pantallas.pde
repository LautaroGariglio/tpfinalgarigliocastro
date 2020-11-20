class Pantallas{
  // navegador //
  
  
  int x, y;
// pantallas //
int Pantallas = 18;
PImage [] Pantalla = new PImage [Pantallas];
// texto de las Pantallas //
int texto = 21;
String [] textos= new String [texto];
  
Pantallas(){
  Pantalla[0] = loadImage("Bosque.jpg");  // titulo
  Pantalla[1] = loadImage("Bosquedia.jpg"); // primera pantalla  
  Pantalla[2] = loadImage("Bosqueoso.jpg"); // ves al oso de lejos
  Pantalla[3] = loadImage("Bosquediaososentado.jpg"); // Cuando te haces el muerto
  Pantalla[4] = loadImage("Bosquenoche.jpg"); // noche sola
  Pantalla[5] = loadImage("Bosquemoustro.jpg"); // noche con moustro
  Pantalla[6] = loadImage("Cabaña.jpg"); // llegas a la cabaña
  Pantalla[7] = loadImage("Cabañainterior.jpg"); // Entras a la cabaña
  Pantalla[8] = loadImage("Cabañanoche.jpg"); // Te quedas en la cabaña
  Pantalla[9] = loadImage("Cueva.jpg"); // llegas a la cueva
  Pantalla[10] = loadImage("Cuevaoso.jpg"); // sale el oso de la cueva
  Pantalla[11] = loadImage("Muertedia.jpg"); // muertedia
  Pantalla[12] = loadImage("Muertenoche.jpg"); // muerte noche
  Pantalla[13] = loadImage("Muertecueva.jpg"); // Muerte cueva
  Pantalla[14] = loadImage("Osomata.jpg"); // oso con la boca abierta
  //Pantalla[15] = loadImage("Boton.jpg"); // marco del boton
  Pantalla[16] = loadImage("Titulojuego.jpg"); // titulo into the woods
  Pantalla[17] = loadImage("Cuadrotexto.jpg"); // cuadro para los textos

// Cargar texto de las pantallas // 
    // Cargar las pantallas
  textos[0] = ".";// titulo.jpg
  textos[1] = "entraste al bosque a dar un pequeño paseo, caminaste\n unos minutos adentrandote en el bosque";// pantalla 1
  textos[2] = "luego de caminar por unas cuantos minutos, decides\n sentarte a descansar, cuando de repente...";
  textos[3] = "ves a un oso salir de entre los arboles. \n VIENE DIRECTO HACIA TI!";
  textos[4] = "el oso se acerca lentamente, se sienta a un lado tuyo y\n comienza a olfatearte.";
  textos[6] = "mientras corres con todas tus fuerzas para escapar de\n aquel animal hambriento, ves una cabaña cerca. ";
  textos[11] ="A la mañana siguiente, sales para intentar volver a\n casa pero, no sabes cual es el camino correcto.";
  textos[15] = "caminas durante horas, encuentras muy\n agotado.¿Era este el camino correcto?";
  textos[17] = "¡Persevera y triunfaras! despues de caminar horas y horas, reconoces el lugar \n donde te encontraste por primera vez con el oso.¡Este es el camino a casa! ";
  textos[12] = "caminas sin parar, hasta que llegas a una cueva que no habias \n visto antes, entonces decides dar la vuelta, ya que sabes que ese\n no es el camino correcto";
  textos[13] = "Pero antes de qeu te puedas dar veulta, el oso sale disparado \n de la cueva,ERA SU GUARIDA. intentas pero ya es\n demasiado tarde, el oso te tomo por sorpresa.  ";
  textos[5] = "antes de que puedas reaccionar, el oso se lanza \n rapidamente hacia ti ... ¡ES EL FIN!";
  textos[8] = "De tanto correr, te cansaste mucho, perdiste velocidad y \n el oso te atrapo... ¡ES EL FIN!";
  textos[14] = "El oso salta encima tuyo, ya no hay nada que hacer !ES EL FIN!";
  textos[7] =  "Cuando entras en la cabaña, ves que el oso se sienta \n a esperar afuera, asi que tu haces lo mismo";
  textos[9] = "cuando se hace de noche, espias por la ventana y ves que el osos no esta.";
  textos[16] = "un texto para completar";
  textos[10] = "luego de unos pasos, vez unos ojos blancos \n asomandose entre los arboles.\n ¡ES EL CHUPACABRAS!";
  textos[18] = "¡Llegaste al final!";
  textos[20] = "Moriste"; 
  
  n = i;
  x = 0;
  y = 0;
  
}
void mostrarPantalla(int index){
  image(Pantalla[index], x, y, width, height);
  
}
void mostrarCuadro(int index){
  image(Pantalla[17], 0, 500, width, 200  );
  pushStyle();
  textSize(26);
  text(textos[index], width / 2, 600);
  popStyle();
}
}
