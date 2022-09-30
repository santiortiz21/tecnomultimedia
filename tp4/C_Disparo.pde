class Disparo {
  PImage Bust;
  int dx, dy, dtam;
  boolean BalaDisparada;
  
  Disparo (int dx_){
    Bust = loadImage("Bust.png");
    BalaDisparada = false;
    dx = dx_;
    dtam = 16;
  }
  
  void DibujarDisparo() {
    image(Bust,dx,381,dtam,dtam -3);
  }
  
  void Mover(int pdy){
    if(BalaDisparada && dx > dtam){
      dx += 20;
    } else {
      dx = width + 10;
      dy = pdy;
      BalaDisparada = false;
    }
  }
  
  void DispararBala () {
    BalaDisparada = true;
  }
  
}
