class Enemigo{
  PImage Enemigo;
  float nx,ny, nvel, ntam;
  boolean EnemigoMuerto;
  
  Enemigo (){
    Enemigo = loadImage("Enemigo.png");
    ntam = 150;
    nx = random(850, 900);
    ny = 377;
    nvel = 4;
    EnemigoMuerto = false;
  }
  
  Enemigo (float pnx){
    Enemigo = loadImage("Enemigo.png");
    ntam = 129;
    nx = pnx;
    ny = 377;
    nvel = 4;
    EnemigoMuerto = false;
  }
  
  void DibujarEnemigo(){
    image (Enemigo, nx, ny, ntam, ntam +21);
  }
  
  void MoverEnemigo () {
    if(nx< -width - ntam|| EnemigoMuerto){
      nx = random(830, 900);
      ntam = 129;
      nvel = 4;
      EnemigoMuerto = false;
    }
    nx -=nvel;
  }
  
  void Destruir() {
    EnemigoMuerto = true;
  }
  
}
