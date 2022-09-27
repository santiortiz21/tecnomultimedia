Principal p;

PImage Pista;
PImage Fondo;
PImage Faros;

float M;
float M2;

void setup(){
  size(800,600);
  p = new Principal();
  Pista = loadImage("Pista.png");
  Fondo = loadImage("Fondo.png");
  Faros = loadImage("Faros.png");

}

void draw(){  
   p.dibujarPrincipal();
  
}
