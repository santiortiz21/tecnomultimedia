class Zero {
  int py, c, s;
  float grav, piso;
  PImage [] Zer = new PImage [10];
  PImage [] ZerJ = new PImage [21];
  Boolean Saltando = false;
  Zero(){
    for(int z = 0; z < Zer.length; z++){
      Zer[z] = loadImage("Zero" +z+ ".png");
    }
    for(int j = 0; j < ZerJ.length; j++){
      ZerJ[j] = loadImage("Zeroj" +j+ ".png");
    }
    imageMode (CENTER);
    py = 373;
    s = 0;
    grav = 1;
    piso = 373;
        
  }
  
  void DibujarZer(){
    c = (frameCount / 3) % Zer.length;
    if (Saltando){
      s = s + 1;
      image (ZerJ [s], 200, py);
      if (s >= 20){
        s = 21;
      }
      py = py -10;
      if(py <= 280){
        py = py +10;
      }
    } else {
      image (Zer [c], 200, py);
      s = 0;
    }
    if (py == 373 && s == 21){
      Saltando = false;
      s = 0;
    } 
  }
  
  void Saltar(){
    if (keyPressed){
      Saltando = true;
    }
  }
}

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
    if (Disparando){
      image (XS [a2], 150, 394);      
    } else {
      image (X [a2], 150,394);
    }
  }
  
  void Disparar() {
    if (keyPressed){
      Disparando = true;
    } else {
      Disparando = false;
    }
  }
}
