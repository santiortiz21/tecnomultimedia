class Enemigo{
  PImage Enemigo;
  float nx,ny, nvel, ntam;
  boolean EnemigoMuerto;
  
  Enemigo (){
    Enemigo = loadImage("Enemigo.png");
    ntam = 129;
    nx = random(900, width*2);
    ny = 378;
    nvel = 4;
    EnemigoMuerto = false;
  }
  
  Enemigo (float pnx){
    Enemigo = loadImage("Enemigo.png");
    ntam = 129;
    nx = pnx;
    ny = 378;
    nvel = 4;
    EnemigoMuerto = false;
  }
  
  void DibujarEnemigo(){
    image (Enemigo, nx, ny, ntam, ntam + 21);
  }
  
  void MoverEnemigo () {
    if(nx < -50 - ntam || EnemigoMuerto){
      nx = random(810, 950);
      ntam = 129;
      nvel = 4;
      EnemigoMuerto = false;
      Explosion.amp(0.8);
      Explosion.play();
    }
    nx -=nvel;
  }
  
  void Destruir() {
    EnemigoMuerto = true;
  }
  
}
