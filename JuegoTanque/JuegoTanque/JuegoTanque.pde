Tanque tanque;
PImage fondo,spriteMuro,spriteTanque,bala;

void setup(){
  size(850, 531);
  fondo = loadImage("fondo.png");
  spriteMuro = loadImage("muro1.jpg");
  spriteTanque = loadImage("tanke.PNG");
  bala = loadImage("bala.png");
  tanque = new Tanque(new PVector(width/2,height-80));
}

void draw(){
  background(fondo);
  tanque.display();  
}

void keyPressed() {

  if (key == 'd') {
   // tanque.mover();
  }
  
  if (key == 'a') {
   // tanque.mover(0);
  }
 }
