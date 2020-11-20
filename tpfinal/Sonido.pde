class Sonido{

// biblioteca de sonido //

// variables para reproducir sonidos //
SoundFile Bosque;

// constructor //
Sonido(PApplet p){
  Bosque = new SoundFile(p, "Bosque.wav" );
  
}
void Reproducir(){
  
  Bosque.play();
  
}
}
