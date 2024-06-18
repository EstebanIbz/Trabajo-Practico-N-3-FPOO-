class Snake {
  private PVector posicion;
  float velocidad;
  private Cabeza cabeza;
  private Cuerpo cuerpo[];
  Transform transform;
  
  public Snake(PVector posicion) {
    this.velocidad = 2;
    this.transform = new Transform(posicion, new PVector(0.5,0,5));
  }

  public void display() {
  
  }


void move() {
  if (keyPressed) {
    if (key == 'w') this.transform.move(0, -velocidad);
    if (key == 's') transform.move(0, velocidad);
    if (key == 'a') transform.move(-velocidad, 0);
    if (key == 'd') transform.move(velocidad, 0);
  }
}


public void comer(Animal a) {
}
}
