class Enemigo{
  PImage Enemigo;
  float nx,ny, nvel, ntam, nx2;
  int cuenta;
  boolean EnemigoMuerto, Explosion;
  PImage [] Explo = new PImage[10];
  
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
      Destr.amp(0.8);
      Destr.play();
    }
    nx -=nvel;
  }
  
  void Destruir() {
    EnemigoMuerto = true;
    Explosion = true;
  }
  
  void Boom () {
      if (cuenta < 10){
        cuenta += 1;
        nx2 = nx2;
      }
      if (cuenta >= 10){
        cuenta = 0;
        Explosion = false;
        nx2 = nx;
      }
  }
  
}
