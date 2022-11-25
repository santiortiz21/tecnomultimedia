class X {
  int a, a2;
  boolean Corriendo, Disparando;
  PImage [] X = new PImage [10];
  PImage [] XS = new PImage [10];
  X() {
    for (int x = 0; x < 10; x++) {
      X[x] = loadImage("X" +x+ ".png");
      XS[x] = loadImage("XS" +x+ ".png");
    }
    Corriendo = true;
    Disparando = false;
    a = 0;
    a2 = 0;
  }

  void DibujarX () { 
    imageMode (CENTER);
    a = (frameCount / 3) % X.length;
    a2 = (frameCount / 3) % XS.length;
    if (Disparando) {
      image (XS [a2], 150, 394);
    } 
    if (Corriendo) {
      image (X [a], 150, 394);
    }
  }

  void Disparar(int tecla) {
    if (tecla == RIGHT) {
      Disparando = true;
      Corriendo = false;
    } else {
      Disparando = false;
      Corriendo = true;
    }
  }
}
