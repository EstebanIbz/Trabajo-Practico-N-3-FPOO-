Tanque tanque;
Gestormuralla gestormuralla;
PImage fondo,spriteMuro,spriteTanque,spriteBala;

void setup(){
  size(785, 442);
  fondo = loadImage("fondo.jpg");
  spriteMuro = loadImage("muro1.jpg");
  spriteTanque = loadImage("tanke.PNG");
  spriteBala = loadImage("bala.png");
  tanque = new Tanque(new PVector(width/2,height-80));
  gestormuralla = new Gestormuralla(10);
}

void draw(){
  background(fondo);
  tanque.move();  
  tanque.display();
  gestormuralla.actualizarColisiones(tanque);
  gestormuralla.display();
}

void keyReleased(){
 tanque.keyReleased(); 
}
