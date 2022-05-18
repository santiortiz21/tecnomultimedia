import ddf.minim.*;
//variables//
Minim minim;
AudioPlayer player;
int tiempo;
PImage sonic;
PImage sonic2;
PImage sonic3;
PImage sonictitulo;
PImage sega1;
PImage sega2;
PImage estrella;
PImage tails;
PFont sonicfont;
float posX, tamX, tamY, velX, posX2, tamX2, tamY2, posX3, pant;

void setup(){
  
  minim = new Minim(this);
  
  player = minim.loadFile("musica.mp3");
  
  size(800, 600);
  
  textSize(20);
  
  background(0);
  
  sonic = loadImage("sonic.png");
  
  sonic2 = loadImage("sonic2.png");
  
  sonic3 = loadImage("sonic3.png");
  
  sonictitulo = loadImage("sonictitulo.png");
  
  sega1 = loadImage("sega1.png");
  
  sega2 = loadImage("sega2.png");
  
  estrella = loadImage("estrella.png");
  
  tails = loadImage("tails.png");
  
  sonicfont = createFont("sonicfont.ttf",20);
  
  textFont(sonicfont);
  
  posX = 100;
  tamX = 591;
  tamY = 390;
  velX = 60;
  posX2 = 1000;
  tamX2 = 275;
  tamY2 = 275;
  posX3 = 100;
  pant = 0;
}

void draw() {
 
 tiempo = frameCount/60;
  
 println("segundos:" + tiempo);
 
 textAlign(CENTER);
 
 pant = pant + 4;
  
 background(0);
 
 if(tiempo >= 0){
   player.play();
 }
 
 //SEGA//
 if(tiempo >= 1){
   
   background(250);
   
   stroke(250);
   
   fill(250);
   
   posX = posX + velX;
   
   posX2 = posX2 - velX;
 
   //Logo de SEGA//
   image(sega1, 160, 193, 500, 190); //Logo completo//
  
   rect(posX3, 193, 1200, 190); //cuadrado blanco 2//
 
   image(sega2, 160, 193, 500, 190); //Logo rasgado//
 
   rect(posX - 300, 193, 800, 190); //cuadrado blanco 1//
 
   //Sonic//
   image(sonic, posX - 500, 148, tamX2, tamY2); //Sonic izuierda//
 
   if(posX > width + 900){
     image(sonic2, width + posX2 + 1000, 148, tamX2, tamY2); //Sonic derecha//
     posX3 = posX3 - velX;
   } 
 }
 
 //transicion1//
 if(tiempo >= 4){
   fill(0, 0, 0, pant - 960);
   rect(-1, 0, width + 1, height);
 }
 
 //estelares//
 if(tiempo >= 6){
   fill(250, 250, 250, pant - 1440);
   text("sonic", width/2,height/2 - 80);
   text("and", width/2, height/2 - 20);
   text("miles ''tails'' prower", width/2 , height/2 + 40);
   text("in", width/2, height/2 + 100);
 }
 
 //transicion2//
 if(tiempo >= 10){
   fill(0, 0, 0, pant - 2400);
   rect(-1, 0, width + 1, height);
 }
 
 //titulo//
 if(tiempo >= 12 && tiempo <= 13){
   image(estrella,random(width),random(height));
 }
 if(tiempo >= 13){
   tint(255,pant - 3120);
   image(sonictitulo,45,50,700,490);
 }
 
 //transicion//
 if(tiempo >= 16){
   fill(0, 0, 0, pant - 3840);
   rect(-1, 0, width + 1, height);
   
 }
 
 //creditos//
 
 if(tiempo >= 17){
   fill(247, 249, 31, pant - 4080);
   text("2", width/2 + 80,height/2 - 20);
   fill(250, 250, 250, pant - 4080);
   text("sonic", width/2 - 60, height/2 - 20);
   text("cast of characters", width/2,height/2 + 40);
 }
 
 if(tiempo >= 19){
   fill(0, 0, 0, pant - 4560);
   rect(-1, 0, width + 1, height);
 }
 
 if(tiempo >= 20){
   fill(247, 249, 31, pant - 4800);
   text("Sonic the Hedgehog", width/2, 190);
   fill(250, 250, 250, pant - 4800);
   text("as ''Sonic''", width/2, height/2 - 50);
   fill(247, 249, 31, pant - 4800);
   text("Ivo Robotnik", width/2, height/2 + 60);
   fill(250, 250, 250, pant - 4800);
   text("as ''Dr. Eggman''", width/2, height - 180);
 }
 
 if(tiempo >= 22){
   fill(0, 0, 0, pant - 5280);
   rect(-1, 0, width + 1, height); 
 }
 
 if(tiempo >= 23){
   fill(247, 249, 31, pant - 5520);
   text("Miles Prower", width/2, 190);
   fill(250, 250, 250, pant - 5520);
   text("as ''Tails''", width/2, height/2 - 50);
   fill(247, 249, 31, pant - 5520);
   text("Mecha Sonic 2.0", width/2, height/2 + 60);
   fill(250, 250, 250, pant - 5520);
   text("as ''Silver Sonic''", width/2, height - 180);
 }

 if(tiempo >= 25){
   fill(0, 0, 0, pant - 6000);
   rect(-1, 0, width + 1, height); 
 }
}
