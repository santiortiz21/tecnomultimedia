class EnemigoT {
  PImage EnemigoT;
  float nx, ny, nvel, ntam, nx2;
  int cuenta;
  boolean EnemigoMuerto, Explosion;
  PImage [] Explo = new PImage[6];

  EnemigoT () {
    EnemigoT = loadImage("Enemigo.png");
    ntam = 129;
    nx = random(900, 2000);
    ny = 380;
    nvel = 4;
    EnemigoMuerto = false;
    Explosion = false;
    for (int i = 0; i < Explo.length; i ++) {
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
  }

  void DibujarEnemigo() {
    image (EnemigoT, nx, ny, ntam, ntam + 21);
    if (Explosion) {
      image(Explo[cuenta], nx2, ny);
    }
  }

  void MoverEnemigo () {
    if (nx < -50 - ntam || EnemigoMuerto) {
      nx = random(900, 2000);
      ntam = 129;
      EnemigoMuerto = false;
      Destr.play();
      Destr.rewind();
    }
    nx -=nvel;
  }

  void Destruir() {
    EnemigoMuerto = true;
    Explosion = true;
  }

  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      nx2 = nx2;
    } else {
      cuenta = 0;
      Explosion = false;
      nx2 = nx;
    }
  }
}

class EnemigoA {
  PImage [] EnemigoA = new PImage[6];
  float nx, ny, nvel, ntam, nx2, ny2, altura;
  int cuenta, a;
  boolean EnemigoMuerto, Explosion;
  PImage [] Explo = new PImage[6];

  EnemigoA () {
    for (int e = 0; e < EnemigoA.length; e ++) {
      EnemigoA[e] = loadImage("EneAire" +e+ ".png");
    }
    ntam = 128;
    nx = random(900, width*2);
    ny = 200;
    nvel = 4;
    EnemigoMuerto = false;
    Explosion = false;
    for (int i = 0; i < Explo.length; i ++) {
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
    ny2 = ny;
    altura = 3;
  }

  void DibujarEnemigo() {
    a = (frameCount) % EnemigoA.length;
    image (EnemigoA [a], nx, ny, ntam, ntam + 47);
    if (Explosion) {
      image(Explo[cuenta], nx2, ny2);
    }
  }

  void MoverEnemigo () {
    if (nx < -50 - ntam || EnemigoMuerto) {
      nx = random(900, width*2);
      EnemigoMuerto = false;
      Destr.play();
      Destr.rewind();
    }
    nx -= nvel;
    ny += altura;
    if ((ny >= 380) || (ny <= 200)) {
      altura = -altura;
    }
  }

  void Destruir() {
    EnemigoMuerto = true;
    Explosion = true;
  }

  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      nx2 = nx2;
      ny2 = ny2;
    } else {
      cuenta = 0;
      Explosion = false;
      nx2 = nx;
      ny2 = ny;
    }
  }
}

class MinijefeT {
  PImage [] MinijefeT = new PImage[3];
  float nx, ny, nvel, ntam, nx2;
  int cuenta, a;
  boolean EnemigoMuerto, Explosion1, Explosion2, EnemigoDanado;
  PImage [] Explo = new PImage[6];
  PImage MinijefeTL;
  int dano;

  MinijefeT () {
    for (int e = 0; e < MinijefeT.length; e ++) {
      MinijefeT[e] = loadImage("minijefeT" +e+ ".png");
    }
    MinijefeTL = loadImage("minijefeTL.png");
    ntam = 360;
    nx = random(900, 2500);
    ny = 326;
    nvel = 4;
    EnemigoMuerto = false;
    EnemigoDanado = false;
    Explosion1 = false;
    Explosion2 = false;
    for (int i = 0; i < Explo.length; i ++) {
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }
    cuenta = 0;
    nx2 = nx;
    dano = 0;
  }

  void DibujarEnemigo() {
    a = (frameCount/3) % MinijefeT.length;
    if (EnemigoDanado) {
      image (MinijefeTL, nx, ny, ntam, ntam -60);
    } else {
      image (MinijefeT [a], nx, ny, ntam, ntam -60);
    }
    if (Explosion1) {
      image(Explo[cuenta], nx2, ny, 250, 260);
    }
    if (Explosion2) {
      image(Explo[cuenta], nx2, ny + 70, 230, 240);
    }
  }

  void MoverEnemigo () {
    if (nx < -50 - ntam || EnemigoMuerto) {
      nx = random(900, 2500);
      nvel = 4;
      EnemigoMuerto = false;
      EnemigoDanado = false;
      Destr.play();
      Destr.rewind();
    }
    nx -=nvel;
  }

  void Danar() {
    EnemigoDanado = true;
    Explosion1 = true;
  }

  void Destruir() {
    EnemigoMuerto = true;
    Explosion2 = true;
  }

  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      nx2 = nx2;
    } else {
      cuenta = 0;
      Explosion1 = false;
      Explosion2 = false;
      nx2 = nx;
    }
  }
}

class Sigma {
  PImage [] Cuerpo = new PImage [2];
  PImage BrazoD;
  PImage BrazoI;
  PImage [] PiernaD = new PImage [2];
  PImage [] PiernaI = new PImage [2];
  PImage [] CabezaDa = new PImage [6];
  PImage CuerpoDest;
  PImage [] Sombra = new PImage [2];
  PImage [] Explo = new PImage[6];
  float nx, ny, altura, cx, cy, ctam, ex, ey, sombra;
  int cuenta, a, ac, dano, cuentah;
  boolean EnemigoMuerto, EnemigoDanado, Versombra, Explosion1, Explosion2, Explosion3, Explosion4;

  Sigma() {
    nx = 400;
    ny = height + 520;
    ctam = 46;
    altura = 3;
    ex = nx;
    ey = ny;

    for (int i = 0; i < Cuerpo.length; i++) {
      Cuerpo[i] = loadImage("Cuerpo" +i+ ".png");
    }
    BrazoD = loadImage("Brazod.png");
    BrazoI = loadImage("Brazoi.png");
    for (int i = 0; i < PiernaD.length; i++) {
      PiernaD[i] = loadImage("Piernad" +i+ ".png");
    }
    for (int i = 0; i < PiernaI.length; i++) {
      PiernaI[i] = loadImage("Piernai" +i+ ".png");
    }
    for (int i = 0; i < CabezaDa.length; i++) {
      CabezaDa[i] = loadImage("CabezaDano" +i+ ".png");
    }
    CuerpoDest = loadImage("CuerpoDestruido.png");
    for (int i = 0; i < Sombra.length; i++) {
      Sombra[i] = loadImage("Sombra" +i+ ".png");
    }
    for (int i = 0; i < Explo.length; i ++) {
      Explo [i] = loadImage("Explosion" +i+ ".png");
    }

    EnemigoMuerto = false;
    EnemigoDanado = false;
    Versombra = true;
    Explosion1 = false;
    Explosion2 = false;
    Explosion3 = false;
    Explosion4 = false;

    cuenta = 0;
    cuentah = 0;
    dano = 0;
    sombra = 255;
  }

  void DibujarSigma() {
    imageMode (CORNER);
    a = (frameCount / 4) % 2;
    if (EnemigoMuerto) {
      image(CuerpoDest, nx, ny);
    } else {

      if (dano < 9) {
        image (BrazoD, nx, ny);
      }
      if (Explosion3) {
        image(Explo[cuenta], ex + 27, ey + 168, 155, 165);
      }
      if (dano < 15) {
        image (Cuerpo[a], nx, ny);
      }
      if (dano < 12) {
        image (BrazoI, nx, ny);
      }
      if (Explosion4) {
        image(Explo[cuenta], ex + 221, ey + 142, 155, 165);
      }
      if (dano < 3) {
        image (PiernaD[a], nx, ny);
      }
      if (Explosion1) {
        image(Explo[cuenta], ex + 79, ey + 311, 155, 165);
      }
      if (dano < 6) {
        image (PiernaI[a], nx, ny);
      }
      if (Explosion2) {
        image(Explo[cuenta], ex + 165, ey + 314, 155, 165);
      }
      if (EnemigoDanado) {
        image(CabezaDa[cuentah], nx, ny);
        Sigma2.play();
        Sigma2.rewind();
      }
      if (Versombra) {
        tint(255, sombra);
        image (Sombra[a], nx, ny);
      }
      rect(nx + 152, ny + 100, ctam, ctam + 11); // punto debil
    }
  }

  void Aparecer(float ap) {
    sombra = sombra - ap;
    if (sombra <= 0) {
      Versombra = false;
    } else {
      Versombra = true;
    }
  }

  void MoverJefe() {
    ny += altura;
    if (ny >= 450 || ny <= 80) {
      altura = -altura;
    }
  }

  void Danar() {
    EnemigoDanado = true;
    if (dano == 3) {
      Explosion1 = true;
    }
    if (dano == 6) {
      Explosion2 = true;
    }
    if (dano == 9) {
      Explosion3 = true;
    }
    if (dano == 12) {
      Explosion4 = true;
    }
  }

  void Destruir() {
    EnemigoMuerto = true;
  }

  void HerirJefe () {
    if (cuentah < 5) {
      if (frameCount%5==0) {
        cuentah += 1;
      }
    } else {
      cuentah = 0;
      EnemigoDanado = false;
    }
  }

  void Boom () {
    if (cuenta < 5) {
      if (frameCount%5==0) {
        cuenta += 1;
      }
      ex = ex;
      ey = ey;
    } else {
      cuenta = 0;
      Explosion1 = false;
      Explosion2 = false;
      Explosion3 = false;
      Explosion4 = false;
      ex = nx;
      ey = nx;
    }
  }
}
