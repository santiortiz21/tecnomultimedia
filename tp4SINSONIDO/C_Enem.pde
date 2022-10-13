class Enemigo{
  PImage Enemigo;
  PImage [] Explo = new PImage[6];
  float nx,ny, nvel, ntam, nx2;
  int cuenta;
  boolean EnemigoMuerto, Explosion;
  
  Enemigo (){
    Enemigo = loadImage("Enemigo.png");
    ntam = 129;
    nx = random(900, width*2);
    ny = 378;
    nvel = 4;
    EnemigoMuerto = false;
    Explosion = false;
    for(int i = 0; i < Explo.length; i ++){
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
  }
  
  void DibujarEnemigo(){
    image (Enemigo, nx, ny, ntam, ntam + 21);
    if (Explosion){
      image(Explo[cuenta], nx2, ny);
    }
  }
  
  void MoverEnemigo () {
    if(nx < -50 - ntam || EnemigoMuerto){
      nx = random(810, 950);
      ntam = 129;
      nvel = 4;
      EnemigoMuerto = false;
    }
    nx -=nvel;
  }
  
  void Destruir() {
    EnemigoMuerto = true;
    Explosion = true;
  }
  
  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      nx2 = nx2;
    } else {
      cuenta = 0;
      Explosion = false;
      nx2 = nx;
    }
  }
}
