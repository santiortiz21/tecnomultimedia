class Principal{
    X x;
    Zero z;
    Fondo f;
    Pista p;
    Faros l;
    Enemigo e;
    Disparo d;
    //Enemigo [] es = new Enemigo [2]; la interaccion no funciona bien con ellos, pero lo deje por si queria revisarlo
    
    Principal(){
      x = new X();
      z = new Zero();
      f = new Fondo();
      p = new Pista();
      l = new Faros();
      e = new Enemigo();
      d = new Disparo(150);
      
      /*for(int i = 0; i<es.length; i++){
        es[i] = new Enemigo(810 + i*width*3);
      }*/
    }

  void dibujarPrincipal() {
    
    f.DibujarFondo();
    
    p.DibujarPista();
    
    e.DibujarEnemigo();
    e.MoverEnemigo ();
    
    /*for(int i=0; i<es.length; i++){
      es[i].DibujarEnemigo();
      es[i].MoverEnemigo();
    }*/
    
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
        Disparo.amp(0.05);
        Disparo.play();
      }
  }
  
  void DestruirEnemigo(){
    float distan = dist(d.dx, d.dy, e.nx,e.ny);
    if (distan < e.ntam/2 + d.dtam/2){
      d.BalaDisparada = false;
      e.Destruir();
      Explosion.amp(0.05);
      Explosion.play();
    }
    /*for(int i = 0; i < es.length; i++){
      float distancia = dist(d.dx, d.dy, es[i].nx,e.ny);
      if (distancia < es[i].ntam - d.dtam){
        d.BalaDisparada = false;
        e.Destruir();
      }
    }*/
  }

}
