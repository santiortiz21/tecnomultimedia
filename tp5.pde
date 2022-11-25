import ddf.minim.*;
Minim minim;

AudioPlayer Disparo, Destr, Musica1, Victoria, Derrota;

Principal p;
void setup(){
  size(800,600);
  p = new Principal();
  minim = new Minim(this);
  Disparo = minim.loadFile("Disparo.mp3", 1024);
  Destr = minim.loadFile("Explosion.mp3", 1024);
  Musica1 = minim.loadFile("Stage1.mp3", 1024);
  Victoria = minim.loadFile("Victoria.mp3", 1024);
  Derrota = minim.loadFile("Derrota.mp3", 1024);
}

void draw(){  
  p.dibujarPrincipal(); 
  if (keyPressed){
    p.Atacar (keyCode);
  }
}

void mouseClicked(){
  p.Transiciones();
}
