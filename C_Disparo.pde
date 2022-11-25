class Disparo {
  PImage Bust;
  int dx, dy, dtam;
  boolean BalaDisparada;

  Disparo (int dx_) {
    Bust = loadImage("Bust.png");
    BalaDisparada = false;
    dx = dx_;
    dtam = 16;
  }

  void DibujarDisparo(int dy_) {
    dy = dy_;
    image(Bust, dx, dy, dtam, dtam -3);
  }

  void Mover(int fx) {
    if (BalaDisparada && dx < fx) {
      dx += 20;
    } else {
      dx = 145;
      BalaDisparada = false;
    }
  }

  void DispararBala () {
    BalaDisparada = true;
  }
}
