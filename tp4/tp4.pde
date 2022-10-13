//Alumno: Ortiz Santiago
//Legajo: 91484/6
//link video: https://youtu.be/Trq4aB1oh8Y
//version sin sonido: https://github.com/santiortiz21/tecnomultimedia/tree/tp4_sinsonido

import processing.sound.*;

SoundFile Disparo, Destr, Musica;

Principal p;
void setup(){
  size(800,600);
  p = new Principal();
  Disparo = new SoundFile(this, "Disparo.mp3");
  Destr = new SoundFile(this, "Explosion.mp3");
  Musica = new SoundFile(this, "Musica0.mp3"); //cambie el 0 por 1 o 2 para cambiar la musica de fondo
  Musica.amp(0.5);
  Musica.loop();
}

void draw(){  
  p.dibujarPrincipal(); 
  if (keyPressed){
    p.Atacar (keyCode);
  }
}
