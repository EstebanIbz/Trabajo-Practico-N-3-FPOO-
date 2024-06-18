class Tanque{
  ArrayList < Bala > balas;
  Transform transform;
  ImageComponent foto;
  float velocidad;
  
  public Tanque(PVector posicion){
  this.velocidad = 2;
  this.transform = new Transform(posicion,new PVector(0.5,0.5));
  this.foto = new ImageComponent(spriteTanque , transform);
  this.balas = new ArrayList<Bala>();
}

  public void display(){
    foto.draw();
     for (int i = balas.size() -1; i >= 0 ; i--) {
      Bala bala = balas.get(i);
      bala.update();
      bala.display();
    }
  }
  
    void move() {
    if (keyPressed) {
      if (key == 'a' || key =='A') this.transform.move(-velocidad, 0);
      if (key == 'd' || key =='D') this.transform.move(velocidad, 0);      
    }       
   }
   void keyReleased(){
     if (keyCode == 'F' || keyCode == 'f'){
      balas.add(new Bala(this.transform.position.copy())); 
     }
  }
}
