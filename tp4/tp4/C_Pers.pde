class X{
  int c2, a2;
  boolean Disparando;
  PImage [] X = new PImage [10];
  PImage [] XS = new PImage [10];
  X(){
    for(int x = 0; x < 10; x++){
      X[x] = loadImage("X" +x+ ".png");
      XS[x] = loadImage("XS" +x+ ".png");
    }
    imageMode (CENTER);
  }
  
  void DibujarX () { 
    a2 = (frameCount / 3) % 10;
    if (Disparando == true){
      image (XS [a2], 150, 394);      
    } else {
      image (X [a2], 150,394);
    }
  }
  
  void Disparar(int tecla) {
    if (tecla == RIGHT){
      Disparando = true;
    } else {
      Disparando = false;
    }
  }
}

class Zero {
  int py, c, s;
  PImage [] Zer = new PImage [10];
  
  Zero(){
    for(int z = 0; z < Zer.length; z++){
      Zer[z] = loadImage("Zero" +z+ ".png");
    }
    imageMode (CENTER);
    py = 373;
    s = 0;  
  }
  
  void DibujarZer(){
    c = (frameCount / 3) % Zer.length;
    image (Zer [c], 200, py);
    s = 0;
  }
}
