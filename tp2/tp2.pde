//Santiago Ortiz
//Com. 1
//Legajo 91484/6
//Link del video: https://youtu.be/7kPVsL2Y_TA


float gir, vel;
int col, col2, cant;

void setup(){
  size(600,600);
  gir = 0;
  vel = 2;
  cant = 200;
  col = 0;
  col2 = 250;
}

void draw(){
  background(col2);
  translate(width/2, height/2);
  fill(col);
 
  for(int c = 100; c<cant; c +=15){
    noStroke();
    rotate(radians(gir));
    rect(100, -300, 30, 60);
    rect(100, -30, 15, 30);
    rect(100, -160, 20, 40);
  }
  
  ellipse(0, 0, 100, 100);
  stroke(col2);
  strokeWeight(10);
  line(-50, 0, 50, 0);
  line(0, -50, 0, 50);

  gir = gir + vel;
}

void keyPressed(){
  if (key == 'a' || key == 'A'){
    col = 250; 
    col2 = 0;
  }
  if (key == 's' || key == 'S'){
    col = 0;
    col2 = 250;
  }
  
  if (key == 'r' || key == 'R'){
    gir = 0;
    col = 0;
    col2 = 250;
  }
}
