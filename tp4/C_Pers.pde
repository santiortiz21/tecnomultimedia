class Zero {
  int c, a;
  PImage [] Zer = new PImage [10];
  PImage [] ZerJ = new PImage [21];
  Zero(){
    for(int z = 0; z < Zer.length; z++){
      Zer[z] = loadImage("Zero" +z+ ".png");
    }
    for(int j = 0; j < ZerJ.length; j++){
      ZerJ[j] = loadImage("Zeroj" +j+ ".png");
    }
    imageMode (CENTER);
  }
  
  void dibujarZer(){    
    c = (frameCount / 3) % Zer.length;
    image (Zer [c], 200, 373);
  }
}

class X{
  int c2, a2;
  boolean Disparando = false;
  PImage [] X = new PImage [10];
  PImage [] XS = new PImage [10];
  X(){
    for(int x = 0; x < 10; x++){
      X[x] = loadImage("X" +x+ ".png");
      XS[x] = loadImage("XS" +x+ ".png");
    }
    imageMode (CENTER);
  }
  
  void dibujarX () { 
    a2 = (frameCount / 3) % 10;
    if (Disparando){
      image (XS [a2], 150, 394);      
    } else {
      image (X [a2], 150,394);
    }
  }
  
  void keyPressed() {
    if (key == 'x' || key == 'X'){
      Disparando = true;
    }
  }
}
