//Alumno: Ortiz Santiago
//Legajo: 91484/6
//Link Video: https://youtu.be/5Genrd4vdwc

import processing.sound.*;

SoundFile Disparo, Explosion, Musica;

Principal p;
void setup(){
  size(800,600);
  p = new Principal();
  Disparo = new SoundFile(this, "Disparo.mp3");
  Explosion = new SoundFile(this, "Explosion.mp3");
  Musica = new SoundFile(this, "Musica0.mp3"); //cambie el 0 por 1 o 2 para cambiar la musica de fondo
  Musica.amp(1);
  Musica.loop();
}

void draw(){  
  p.dibujarPrincipal(); 
  if (keyPressed){
    p.Atacar (keyCode);
  }
}
