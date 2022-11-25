import ddf.minim.*;
Minim minim;

AudioPlayer Disparo, Destr, Musica1, Musica2, Victoria, Derrota, Sigma1, Sigma2;

Principal p;
void setup() {
  size(800, 600);
  p = new Principal();
  minim = new Minim(this);
  Disparo = minim.loadFile("Disparo.mp3", 1024);
  Destr = minim.loadFile("Explosion.mp3", 1024);
  Musica1 = minim.loadFile("Stage1.mp3", 1024);
  Musica2 = minim.loadFile("Stage2.mp3", 1024);
  Victoria = minim.loadFile("Victoria.mp3", 1024);
  Derrota = minim.loadFile("Derrota.mp3", 1024);
  Sigma1 = minim.loadFile("Sigma1.mp3", 1024);
  Sigma2 = minim.loadFile("Sigma2.mp3", 1024);
}

void draw() {  
  p.dibujarPrincipal(); 
  if (keyPressed) {
    p.Atacar (keyCode);
  }
}

void mouseClicked() {
  p.Transiciones();
}
