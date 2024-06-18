class Snake {
  private PVector posicion;
  float velocidad;
  private Cabeza cabeza;
  private Cuerpo cuerpo[];
  Transform transform;
  ArrayList<Integer> posX = new ArrayList<Integer>();
  ArrayList<Integer> posY = new ArrayList<Integer>();

  int dir = 1;
  int[] dirX= {0, 0, -1, 1};
  int[] dirY ={-1, 1, 0, 0};
  
  public Snake(PVector posicion) {
    this.velocidad = 2;
    this.transform = new Transform(posicion, new PVector(0.5,0,5));
  }

  public void display() {
  }

  void move(float x, float y) {
    position.add(x, y);
  }
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
