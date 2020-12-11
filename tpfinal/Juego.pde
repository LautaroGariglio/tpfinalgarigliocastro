class Juego{

Personaje p;
Oso o;
Estalactita e;
int mov;
Juego(){
  size(800, 600);
  frameRate(30);

  mov = 0;
  p = new Personaje();
  o = new Oso();
  e = new Estalactita();
}
void Iniciar(){
  pushStyle();
    textSize(48);
    textAlign(CENTER);
    fill(255);
    text("ESCAPA DE LA CUEVA", width / 2, height / 3);
  popStyle();
}
void Movimiento(){
  
  if(keyPressed){
    if(keyCode == UP)
      mov = 1;    
    if(keyCode == RIGHT)
      mov = 2;    
    if(keyCode == LEFT)
      mov = 3;
    }
  else
  mov = 0;
  p.mover(mov);
  o.correr();
  e.accion();
  e.caida();
  p.mostrar();
  o.mostrar();
  e.mostrar();
  o.colisionOso();
  p.escape();
  e.colisionEs();
  
}
}
