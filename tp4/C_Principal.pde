class Principal{
    X x;
    Zero z;
    Fondo f;
    Pista p;
    Faros l;
    Enemigo e;
    Disparo d;
    Enemigo [] es = new Enemigo [3];
    
    Principal(){
      x = new X();
      z = new Zero();
      f = new Fondo();
      p = new Pista();
      l = new Faros();
      e = new Enemigo();
      d = new Disparo(185);
      
      for(int i = 0; i<es.length; i++){
        es[i] = new Enemigo(850 + i*width/4);
      }
    }

  void dibujarPrincipal() {
    
    f.DibujarFondo();
    
    p.DibujarPista();
    
    e.DibujarEnemigo();
    e.MoverEnemigo ();
    
    for(int i=0; i<es.length; i++){
      es[i].DibujarEnemigo();
      es[i].MoverEnemigo();
    }
    
    z.DibujarZer();
    
    x.DibujarX();
    
    d.DibujarDisparo();
    d.Mover(381);
    
    DestruirEnemigo();
    
    l.DibujarFaros();
  }
  
  void Atacar() {
    if (key == 'x' || key == 'X'){
      x.Disparar ();
      d.DispararBala();
    }
  }
  
  void DestruirEnemigo(){
    float distan = dist(d.dx, d.dy, e.nx,e.ny);
    if (distan > e.ntam + d.dtam){
      d.BalaDisparada = false;
      e.Destruir();
    }
    for(int i = 0; i < es.length; i++){
      float distancia = dist(d.dx, d.dy, es[i].nx,e.ny);
      if (distancia >= es[i].ntam + d.dtam){
        d.BalaDisparada = false;
        e.Destruir();
      }
    }
  }

}
