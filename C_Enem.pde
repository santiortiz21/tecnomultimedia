class EnemigoT{
  PImage EnemigoT;
  float nx,ny, nvel, ntam, nx2;
  int cuenta;
  boolean EnemigoMuerto, Explosion;
  PImage [] Explo = new PImage[6];
  
  EnemigoT (){
    EnemigoT = loadImage("Enemigo.png");
    ntam = 129;
    nx = random(900, 2000);
    ny = 380;
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
    image (EnemigoT, nx, ny, ntam, ntam + 21);
    if (Explosion){
      image(Explo[cuenta], nx2, ny);
    }
  }
  
  void MoverEnemigo () {
    if(nx < -50 - ntam || EnemigoMuerto){
      nx = random(900, 2000);
      ntam = 129;
      EnemigoMuerto = false;
      Destr.play();
      Destr.rewind();
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

class EnemigoA{
  PImage [] EnemigoA = new PImage[6];
  float nx,ny, nvel, ntam, nx2, ny2, altura;
  int cuenta, a;
  boolean EnemigoMuerto, Explosion;
  PImage [] Explo = new PImage[6];
  
  EnemigoA (){
    for (int e = 0; e < EnemigoA.length; e ++){
      EnemigoA[e] = loadImage("EneAire" +e+ ".png");
    }
    ntam = 128;
    nx = random(900, width*2);
    ny = 200;
    nvel = 4;
    EnemigoMuerto = false;
    Explosion = false;
    for(int i = 0; i < Explo.length; i ++){
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
    ny2 = ny;
    altura = 3;
  }
  
  void DibujarEnemigo(){
    a = (frameCount) % EnemigoA.length;
    image (EnemigoA [a], nx, ny, ntam, ntam + 47);
    if (Explosion){
      image(Explo[cuenta], nx2, ny2);
    }
  }
  
  void MoverEnemigo () {
    if(nx < -50 - ntam || EnemigoMuerto){
      nx = random(900, width*2);
      EnemigoMuerto = false;
      Destr.play();
      Destr.rewind();
    }
    nx -= nvel;
    ny += altura;
    if ((ny >= 380) || (ny <= 200)){
      altura = -altura;
    } 
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
      ny2 = ny2;
    } else {
      cuenta = 0;
      Explosion = false;
      nx2 = nx;
      ny2 = ny;
    }
  }
}

class MinijefeT{
  PImage [] MinijefeT = new PImage[3];
  float nx,ny, nvel, ntam, nx2;
  int cuenta, a;
  boolean EnemigoMuerto, Explosion1, Explosion2, EnemigoDanado;
  PImage [] Explo = new PImage[6];
  PImage MinijefeTL;
  int dano;
  
  MinijefeT (){
    for (int e = 0; e < MinijefeT.length; e ++){
      MinijefeT[e] = loadImage("minijefeT" +e+ ".png");
    }
    MinijefeTL = loadImage("minijefeTL.png");
    ntam = 360;
    nx = random(900, 2500);
    ny = 326;
    nvel = 4;
    EnemigoMuerto = false;
    EnemigoDanado = false;
    Explosion1 = false;
    Explosion2 = false;
    for(int i = 0; i < Explo.length; i ++){
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
    dano = 0;
  }
  
  void DibujarEnemigo(){
    a = (frameCount/3) % MinijefeT.length;
    if (EnemigoDanado){
      image (MinijefeTL, nx, ny, ntam, ntam -60);
    } else {
      image (MinijefeT [a], nx, ny, ntam, ntam -60);
    }
    if (Explosion1){
      image(Explo[cuenta], nx2, ny, 250, 260);
    }
    if (Explosion2){
      image(Explo[cuenta], nx2, ny + 70, 230, 240);
    }
  }
  
  void MoverEnemigo () {
    if(nx < -50 - ntam || EnemigoMuerto){
      nx = random(900, 2500);
      nvel = 4;
      EnemigoMuerto = false;
      EnemigoDanado = false;
      Destr.play();
      Destr.rewind();
    }
    nx -=nvel;
  }
  
  void Danar() {
    EnemigoDanado = true;
    Explosion1 = true;
  }
  
  void Destruir() {
    EnemigoMuerto = true;
    Explosion2 = true;
  }
  
  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      nx2 = nx2;
    } else {
      cuenta = 0;
      Explosion1 = false;
      Explosion2 = false;
      nx2 = nx;
    }
  }
}
