class Principal{
    X x;
    Zero z;
    Fondo f;
    Pista p;
    Faros l;
    Enemigo e;
    Disparo d;
    
    Principal(){
      x = new X();
      z = new Zero();
      f = new Fondo();
      p = new Pista();
      l = new Faros();
      e = new Enemigo();
      d = new Disparo(150);
    }

  void dibujarPrincipal() {
    
    f.DibujarFondo();
    
    p.DibujarPista();
    
    e.DibujarEnemigo();
    e.MoverEnemigo ();
    
    z.DibujarZer();
    
    d.DibujarDisparo();
    d.Mover();
    
    x.DibujarX();
    
    DestruirEnemigo();
    
    l.DibujarFaros();
  }
  
  void Atacar(int tecla) {
      x.Disparar (tecla);
      if ( tecla == RIGHT){
        d.DispararBala();
      }
  }
  
  void DestruirEnemigo(){
    float distan = dist(d.dx, d.dy, e.nx,e.ny);
    if (distan < e.ntam/2 + d.dtam/2){
      d.BalaDisparada = false;
      e.Destruir();
    }
  }

}
