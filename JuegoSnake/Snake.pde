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


public void comer(Animal a) {
}
}
