//Alumno: Ortiz Santiago
//Legajo: 91484/6
//link video: https://youtu.be/Trq4aB1oh8Y
Principal p;
void setup(){
  size(800,600);
  p = new Principal();
}

void draw(){  
  p.dibujarPrincipal(); 
  if (keyPressed){
    p.Atacar (keyCode);
  }
}
