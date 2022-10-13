class Disparo {
  PImage Bust;
  int dx, dy, dtam;
  boolean BalaDisparada;
  
  Disparo (int dx_){
    Bust = loadImage("Bust.png");
    BalaDisparada = false;
    dx = dx_;
    dtam = 19;
    dy = 382;
  }
  
  void DibujarDisparo() {
    image(Bust,dx,dy,dtam,dtam -3);
  }
  
  void Mover(){
    if(BalaDisparada && dx < width){
      dx += 20;
    } else {
      dx = 150;
      BalaDisparada = false;
    }
  }
  
  void DispararBala () {
      BalaDisparada = true;
  }
  
}
