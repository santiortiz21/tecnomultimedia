class Principal{
  int tiempo, par, fase, danopl;
  PImage Titulo;
  PImage [] ClickS = new PImage [2];
  PImage [] ClickC = new PImage [2];
  PImage [] Instrucciones = new PImage [2];
  PImage [] Vida = new PImage[4];
  float trans;
  boolean derrotado;
  X x;
  Fondo f;
  FondoJefe fj;
  Pista p;
  Faros l;
  EnemigoT[] et;
  EnemigoA ea;
  MinijefeT mt;
  Disparo d;
  Pantallas pa;
    
  Principal(){
    x = new X();
    f = new Fondo();
    fj = new FondoJefe();
    p = new Pista();
    l = new Faros();
    et = new EnemigoT[3];
    ea = new EnemigoA();
    mt = new MinijefeT();
    d = new Disparo(145);
    pa = new Pantallas();
    
    Titulo = loadImage("Titulo.png");
    for (int i = 0; i < ClickS.length; i ++){
      ClickS[i] = loadImage("ClickS" +i+ ".png");
    }
    for (int i = 0; i < ClickC.length; i ++){
      ClickC[i] = loadImage("ClickC" +i+ ".png");
    }
    for (int i = 0; i < Instrucciones.length; i ++){
      Instrucciones[i] = loadImage("Instrucciones" +i+ ".png");
    }
    for (int i = 0; i < et.length; i++){
      et[i] = new EnemigoT();
    }
    for(int i = 0; i <Vida.length; i++){
      Vida[i] = loadImage("Vida"+i+".png");
    }
    fase = 0;
  }

  void dibujarPrincipal() {
    if ( fase == 0){
      par = (frameCount/ 7)% ClickS.length;
      
      background(0);
      
      image (Titulo, 0,0);
      
      image (ClickS[par], 129, height - 150);
    }
    
    if (fase == 1){
      par = (frameCount/ 7)% ClickS.length;
      
      fj.DibujarFondojefe();
      
      image (Instrucciones[0],width/2,height/2);
      
      image (ClickC[par],width/2,height -70);
    }
    
    if (fase == 2){
      par = (frameCount/ 7)% ClickS.length;
      
      fj.DibujarFondojefe();
      
      image (Instrucciones[1],width/2,height/2);
      
      image (ClickS[par],width/2,height -70);
    }
    
    if(fase == 3){
      tiempo = frameCount/60;
      
      Musica1.play();
      
      f.DibujarFondo();
    
      p.DibujarPista();
    
      if(tiempo >= 2 && tiempo < 137){
        for (int i = 0; i<et.length; i++){
          et[i].DibujarEnemigo();
          et[i].MoverEnemigo ();
          et[i].Boom();
          if(et[i].nx < -50){
            danopl ++;
            et[i].Destruir();
          }
          if (danopl >= 3){
            derrotado = true;
          } else {
            derrotado = false;
          }
          if (derrotado){
            derrotado = false;
            Perder();
          }
        }
      }
    
      if(tiempo >= 45 && tiempo < 137){
        ea.DibujarEnemigo();
        ea.MoverEnemigo();
        ea.Boom();
        if(ea.nx < -50){
          danopl ++;
          ea.Destruir();
        }
        if (danopl >= 3){
          derrotado = true;
        } else {
          derrotado = false;
        }
        if (derrotado){
          derrotado = false;
          Perder();
        }
      }
      
      if(tiempo >= 100 && tiempo < 137){
        mt.DibujarEnemigo();
        mt.MoverEnemigo();
        mt.Boom();
        if(mt.nx < -50){
          danopl ++;
          mt.Destruir();
        }
        if (danopl >= 3){
          derrotado = true;
        } else {
          derrotado = false;
        }
        if (derrotado){
          derrotado = false;
          Perder();
        }
      }
    
      d.DibujarDisparo(382);
      d.Mover(width);
    
      x.DibujarX();
    
      DestruirEnemigo();
    
      l.DibujarFaros();
      
      image(Vida[danopl],35, 200);
      
      if (tiempo >= 0 && tiempo <= 4){
        trans = 255 - frameCount*2;
        fill(0,0,0, trans);
        rect(-1, 0, width +1, height);
      }
      if(tiempo >= 138){
        trans = 0 + (frameCount*2 - 16560);
        fill(0,0,0, trans);
        rect(-1, 0, width +1, height);
      }
      if(tiempo == 140){
        danopl = 0;
        Musica1.rewind();
        Musica1.pause();
        fase = 4;
        frameCount = 0;
      }
    }
    
    if (fase == 4){
      tiempo = frameCount/60;
      
      Victoria.play();
      
      pa.Victoria();
      
      if (tiempo >= 0 && tiempo <= 4){
        trans = 255 - frameCount*2;
        fill(0,0,0, trans);
        rect(-1, 0, width +1, height);
      }
    }
    
    if (fase == 5){
      tiempo = frameCount/60;
      
      Derrota.play();
      
      pa.Derrota();
      
      if (tiempo >= 0 && tiempo <= 4){
        trans = 255 - frameCount*2;
        fill(0,0,0, trans);
        rect(-1, 0, width +1, height);
      }
    }
  }
  
  void Transiciones(){
    if(fase >= 0 && fase <= 2){
      fase ++;
      frameCount = 0;
    }
    if(fase == 4){
      if(mouseX > 46 && mouseX < 277 && mouseY > 63 && mouseY < 90){
        f.f1 = 2119;
        f.f2 = 6357;
        p.p1 = 553;
        p.p2 = 1659;
        l.l1 = 553;
        l.l2 = 1659;
        for (int i = 0; i<et.length; i++){
          et[i].nx = random(900, 2000);
        }
        ea.nx = random(900, width*2);
        mt.nx = random(900, 2500);
        Victoria.rewind();
        Victoria.pause();
        Destr.rewind();
        Destr.pause();
        frameCount = 0;
        fase = 3;
      }
      if(mouseX > 46 && mouseX < 389 && mouseY > 175 && mouseY < 202){
        f.f1 = 2119;
        f.f2 = 6357;
        p.p1 = 553;
        p.p2 = 1659;
        l.l1 = 553;
        l.l2 = 1659;
        for (int i = 0; i<et.length; i++){
          et[i].nx = random(900, 2000);
        }
        ea.nx = random(900, width*2);
        mt.nx = random(900, 2500);
        Victoria.rewind();
        Victoria.pause();
        fase = 0;
      }
    }
    if(fase == 5){
      if(mouseX > 38 && mouseX < 269 && mouseY > 77 && mouseY < 104){
        f.f1 = 2119;
        f.f2 = 6357;
        p.p1 = 553;
        p.p2 = 1659;
        l.l1 = 553;
        l.l2 = 1659;
        for (int i = 0; i<et.length; i++){
          et[i].nx = random(900, 2000);
        }
        ea.nx = random(900, width*2);
        mt.nx = random(900, 2500);
        Derrota.rewind();
        Derrota.pause();
        frameCount = 0;
        fase = 3;
      }
      if(mouseX > 435 && mouseX < 778 && mouseY > 77 && mouseY < 104){
        f.f1 = 2119;
        f.f2 = 6357;
        p.p1 = 553;
        p.p2 = 1659;
        l.l1 = 553;
        l.l2 = 1659;
        for (int i = 0; i<et.length; i++){
          et[i].nx = random(900, 2000);
        }
        ea.nx = random(900, width*2);
        mt.nx = random(900, 2500);
        Derrota.rewind();
        Derrota.pause();
        fase = 0;
      }
    }
  }
  
  void Atacar(int tecla) {
    x.Disparar (tecla);
    if ( tecla == RIGHT && fase >= 3){
      d.DispararBala();
      Disparo.play();
      Disparo.rewind();
    }
  }
  
  void DestruirEnemigo(){
    for(int i = 0; i<et.length; i++){
      float distant = dist(d.dx, d.dy, et[i].nx,et[i].ny);
      if (distant < et[i].ntam/2 + d.dtam/2 && d.BalaDisparada && et[i].nx <= width){
        d.BalaDisparada = false;
        et[i].Destruir();
      }
    }
    float distana = dist(d.dx, d.dy, ea.nx,ea.ny);
      if (distana < ea.ntam/2 + d.dtam/2 && d.BalaDisparada && ea.nx <= width){
        d.BalaDisparada = false;
        ea.Destruir();
    }
    float distant1 = dist(d.dx, d.dy,mt.nx,mt.ny);
    if (distant1 < mt.ntam/2 + d.dtam/2 && d.BalaDisparada && mt.nx <= width){
      d.BalaDisparada = false;
      mt.dano ++;
      if (mt.dano == 3){
        mt.Danar();
      }
      if (mt.dano >= 5){
        mt.Destruir();
        mt.dano = 0;
      }
    }
  }
  
  void Perder(){
    danopl = 0;
    Musica1.rewind();
    Musica1.pause();
    fase = 5;
    frameCount = 0;
  }

}
