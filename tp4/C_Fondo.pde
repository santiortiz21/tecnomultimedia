class Fondo {
  int M;
  PImage Fondo0;
  int fx;
  
  Fondo() {
    fx = 2119;
    Fondo0 = loadImage("Fondo0.png");
  }
  void DibujarFondo() {
    mover();
    image (Fondo0, fx, height/2);
  }
  void mover(){
    fx = fx > -2119 ? fx : 2119;
    fx = fx - 5;
  }
}
