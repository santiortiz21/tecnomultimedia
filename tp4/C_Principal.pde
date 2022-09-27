class Principal{
    X x;
    Principal(){
      x = new X();
    }
  }

  void dibujarPrincipal() {
    M = 0 - frameCount / 5;
    M2 = 0 - frameCount * 4;
  
    for (int D = 400; D < 8876; D = D + 4238){
      image (Fondo, D + M, height / 2); 
    }
  
    for (int D = 400; D < 22520; D = D +1106){
      float Mov;
      Mov = D + M2;
      image (Pista, Mov, 300);
    }
    
    x.dibujarX();
  
    for (int D = 400; D < 22520; D = D +1106){
      float Mov;
      Mov = D + M2;
      image (Faros, Mov, 300);
    }
  
  }
