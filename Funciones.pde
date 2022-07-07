void pantallaInicio(){
    image(pantalla, width/2, height/2);
    image(Titulo, width/2, 100);
    fill(255);
    textAlign(CENTER);
    textSize(30);
    text("INSTRUCCIONES", width/2, 250);
    text("Usa el click izquierdo del mouse\npara matar a los demonios\nen el menor tiempo posible.", width/2, 300);
    fill(255, 0, 0);
    ellipse(100, height - 100, 100, 100);
    fill(255);
    textSize(28);
    text("START", 100, height - 90);
    if(mousePressed){
      if(botonInicio(50, height - 150, 100, 100)){
        Inicio = false;
        frameCount = 0;
      }   
    }
    ellipse(mouseX, mouseY, 10, 10);
}

void pantallaVictoria(){
    image(pantalla, width/2, height/2);
    image(victoria, 150, 250);
    image(victoria, width - 150, 250);
    textAlign(CENTER);
    textSize(50);
    fill(255, 246, 006);
    text("VICTORIA", width/2, 200);
    textSize(30);
    fill(255);
    text("Buen trabajo", width/2, 300);
    fill(255, 0, 0);
    ellipse(width - 100, height - 100, 100, 100);
    fill(255);
    textSize(25);
    text("RESTART", width - 100, height - 90);
    if(mousePressed){
      if(botonReinicio(width - 150, height - 150, 100, 100)){
        Inicio = true;
        win = false;
        BaronMuerto = false;
        RevenMuerto = false;
        ImpMuerto = false;
        b = 0;
        r = 0;
        i = 0;
      }   
    }
    ellipse(mouseX, mouseY, 10, 10);
}

void pantallaDerrota(){
    image(pantalla, width/2, height/2);
    image(derrota, 150, 250);
    image(derrota, width - 150, 250);
    textAlign(CENTER);
    textSize(50);
    fill(255, 0, 0);
    text("DERROTA", width/2, 200);
    textSize(30);
    fill(255);
    text("Game Over", width/2, 300);
    fill(255, 0, 0);
    ellipse(width - 100, height - 100, 100, 100);
    fill(255);
    textSize(25);
    text("RESTART", width - 100, height - 90);
    if(mousePressed){
      if(botonReinicio(width - 150, height - 150, 100, 100)){
        Inicio = true;
        fail = false;
        BaronMuerto = false;
        RevenMuerto = false;
        ImpMuerto = false;
        b = 0;
        r = 0;
        i = 0;
      }   
    }
    ellipse(mouseX, mouseY, 10, 10);
}

void mousePressed(){
  if(sobreBaron(300, 250, 60, 100)){
    b = 1;
    BaronMuerto = true;
  }
  if(sobreReven(650, 270, 56, 110)){
    r = 1;
    RevenMuerto = true;
  }
  if(sobreImp(370, 310, 75, 170)){
    i = 1;
    ImpMuerto = true;
  }
}



boolean sobreBaron(int px, int py, int ancho, int alto){
  boolean estoySobre= mouseX>px && mouseX<px + ancho && mouseY>py && mouseY<py + alto;
  return estoySobre;
}

boolean sobreReven(int px, int py, int ancho, int alto){
  boolean estoySobre= mouseX>px && mouseX<px + ancho && mouseY>py && mouseY<py + alto;
  return estoySobre;
}

boolean sobreImp(int px, int py, int ancho, int alto){
  boolean estoySobre= mouseX>px && mouseX<px + ancho && mouseY>py && mouseY<py + alto;
  return estoySobre;
}

boolean botonInicio(int px, int py, int ancho, int alto){
  boolean estoySobre= mouseX>px && mouseX<px + ancho && mouseY>py && mouseY<py + alto;
  return estoySobre;
}

boolean botonReinicio(int px, int py, int ancho, int alto){
  boolean estoySobre= mouseX>px && mouseX<px + ancho && mouseY>py && mouseY<py + alto;
  return estoySobre;
}
