Principal p;

PImage Pista;
PImage Faros;

float M2;

void setup(){
  size(800,600);
  p = new Principal();
  /*Pista = loadImage("Pista.png");
  
  Faros = loadImage("Faros.png");*/

}

void draw(){
  p.dibujarPrincipal();

  p.Atacar ();
}
