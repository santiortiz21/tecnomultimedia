class Pantallas{
  int par;
  PImage Victoria;
  PImage Derrota;
  PImage [] Reintentar = new PImage[2];
  PImage [] Volver = new PImage[2];
  
  Pantallas(){
    Victoria = loadImage("Victoria.png");
    Derrota = loadImage("Derrota.png");
    for (int i = 0; i < 2; i ++){
      Reintentar[i] = loadImage("Reiniciar" +i+ ".png");
      Volver[i] = loadImage("Volver" +i+ ".png"); 
    }
  }
  
  void Victoria(){
    imageMode (CORNERS);
    par = (frameCount/ 7)% 2;
    image (Victoria, 0, 0);
    image (Reintentar[par], 46, 63);
    image (Volver[par], 46, 175);
  }
  
  void Derrota(){
    imageMode (CORNERS);
    par = (frameCount/ 7)% 2;
    image (Derrota, 0, 0);
    image (Reintentar[par], 38, 77);
    image (Volver[par], 435, 77);
  }
}
