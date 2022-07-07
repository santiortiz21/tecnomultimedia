// Alumno: Ortiz Santiago //
// Legajo: 91484/6 //
// Com. 1 //
// link video: https://youtu.be/7u0BfvzvW1s //

PImage [] Guy = new PImage[4];
PImage [] Baron = new PImage [2];
PImage [] Imp = new PImage [2];
PImage [] Reven = new PImage [2];
PImage fondo;
PImage pantalla;
PImage Titulo;
PImage victoria;
PImage derrota;

int c = 0;
int b = 0;
int r = 0;
int i = 0;
int tiempo;

boolean Mov = false;
boolean Inicio = true;
boolean BaronMuerto = false;
boolean RevenMuerto = false;
boolean ImpMuerto = false;
boolean win = false;
boolean fail = false;


void setup(){
  noStroke();
  noCursor();
  size(800, 600);
  imageMode(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);
  fondo = loadImage("fondo.png");
  pantalla = loadImage("pantalla.png");
  Titulo = loadImage("Titulo.png");
  victoria = loadImage("victoria.png");
  derrota = loadImage("derrota.png");
  
  for(int g = 0; g < Guy.length; g++){
    Guy[g] = loadImage("Guy" +g+ ".png");
  }
  
  for(int b = 0; b < Baron.length; b++){
    Baron[b] = loadImage("Baron" +b+ ".png");
  }
  
  for(int i = 0; i < Imp.length; i++){
    Imp[i] = loadImage("Imp" +i+ ".png");
  }
  
  for(int r = 0; r < Reven.length; r ++){
    Reven[r] = loadImage("Reven" +r+ ".png");
  }
}

void draw(){
  
  background(0);
  
  image(fondo, width/2, height/2);
  
  fill(255);
  
  image(Baron[b], 330, 320);
  
  image(Reven[r], 680, 370);
  
  image(Imp[i], 400, 440);
  
  ellipse(mouseX, mouseY, 10, 10);
  
  image(Guy[c], mouseX, height-114);
  
  text("tiempo:" + tiempo, width/2, 50);

  if(Mov){
    c = (c + 1) % Guy.length;
  } else {
    c = 0;
  }

  if (mousePressed){
   Mov = true;
  } else {
   Mov = false;
  }
  
  if(Inicio){
    pantallaInicio();
  }
  
  if(Inicio == false){
    tiempo = frameCount/60;
  }
  
  if(BaronMuerto == true && ImpMuerto == true && RevenMuerto == true){
    win = true;
  }
  
  if(win){
    tiempo = 0;
    pantallaVictoria();
  }
  
  if(tiempo >= 3){
    tiempo = 0;
    pantallaDerrota();
  }
}
