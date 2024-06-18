class Snake{
  private PVector posicion;
  private PVector velocidad;
  private Cabeza cabeza;
  private Cuerpo cuerpo[];
  
  public Snake(){
  }
  
  public void display(){
  }
    
    void move(float x, float y) {
    position.add(x, y);
  }
 }
  
    void move() {
    if (keyPressed) {
      if (key == 'w') transform.move(0, -speed);
      if (key == 's') transform.move(0, speed);
      if (key == 'a') transform.move(-speed, 0);
      if (key == 'd') transform.move(speed, 0);
    }
  }

  
  public void comer(Animal a){
    
  }
}
