Tanque tanque;
PImage fondo;

void setup(){
  size(1200, 720);
  fondo = loadImage("fondo.png");
}

void draw(){
  background(fondo);

}

void keyPressed(){
  if(key == 'a') {
    tanque.mover(1);
  }
  
  
}
