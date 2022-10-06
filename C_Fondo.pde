class Fondo {
  PImage Fondo1;
  PImage Fondo2;
  int f1, f2;
  
  Fondo() {
    f1 = 2119;
    f2 = 6357;
    Fondo1 = loadImage("Fondo0.png");
    Fondo2 = loadImage("Fondo1.png");
  }
  void DibujarFondo() {
    mover();
    image (Fondo1, f1, height/2);
    image (Fondo2, f2, height/2);
  }
  void mover(){
    f1 = f1 > -4238 ? f1 : 4238;
    f1 = f1 -1;
    f2 = f2 > -4238 ? f2 : 4238;
    f2 = f2 -1;
  }
}

class Pista {
  PImage Pista1;
  PImage Pista2;
  int p1, p2;
  
  Pista (){
    p1 = 553;
    p2 = 1659;
    Pista1 = loadImage("Pista0.png");
    Pista2 = loadImage("Pista1.png");
  }
  
  void DibujarPista (){
    mover();
    image (Pista1, p1, 300);
    image (Pista2, p2, 300);
  }
  
  void mover () {
    p1 = p1 > -553 ? p1 : 1655;
    p1 = p1 -4;
    p2 = p2 > -553 ? p2 : 1655;
    p2 = p2 -4;
  }
}

class Faros {
  PImage Faros1;
  PImage Faros2;
  int l1, l2;
  
  Faros (){
    l1 = 553;
    l2 = 1659;
    Faros1 = loadImage("Faros0.png");
    Faros2 = loadImage("Faros1.png");
  }
  
  void DibujarFaros (){
    mover();
    image (Faros1, l1, 300);
    image (Faros2, l2, 300);
  }
  
  void mover () {
    l1 = l1 > -553 ? l1 : 1655;
    l1 = l1 -4;
    l2 = l2 > -553 ? l2 : 1655;
    l2 = l2 -4;
  }
}
