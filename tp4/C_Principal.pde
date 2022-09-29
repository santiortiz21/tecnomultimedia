class Principal{
    X x;
    Zero z;
    Fondo f;
    Principal(){
      x = new X();
      z = new Zero();
      f = new Fondo();
    }

  void dibujarPrincipal() {
    /*
    M2 = 0 - frameCount * 4;
  
    for (int D = 2119; D < 10595; D = D + 4238){
      image (Fondo, D + M, height / 2); 
    }
  
    for (int D = 400; D < 22520; D = D +1106){
      float Mov;
      Mov = D + M2;
      image (Pista, Mov, 300);
    }*/
    f.DibujarFondo();
    
    z.DibujarZer ();
    
    x.DibujarX ();
  
    /*for (int D = 400; D < 22520; D = D +1106){
      float Mov;
      Mov = D + M2;
      image (Faros, Mov, 300);  
  
    }*/
  
  }
  
  void Atacar() {
    if (key == 'x' || key == 'X'){
      x.Disparar ();
    }
    if (key == 'z'){
      z.Saltar();
    }

  }

}
