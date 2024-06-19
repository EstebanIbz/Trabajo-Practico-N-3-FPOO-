class Cabeza {
  Transform transform;
  Collider collider;
  float velocidad;

  public Cabeza(PVector posicion, float velocidad) {
    this.transform = new Transform(posicion, new PVector(1, 1));
    this.collider = new Collider(transform, 15);
    this.velocidad = velocidad;
  }

  public void display() {
    rect(this.transform.position.x, this.transform.position.y, 20, 20);
  }

  boolean Colision(Animal animal) {
    float distanciaX = abs(this.transform.position.x - animal.transform.position.x);
    float distanciaY = abs(this.transform.position.y - animal.transform.position.y);

    float sumaRadios = this.collider.radius + animal.collider.radius;

    return (distanciaX < sumaRadios / 2) && (distanciaY < sumaRadios / 2);
  }

  public void mover() {
    if (keyPressed) {
      if (key == 'w') this.transform.move(0, -velocidad);
      if (key == 's') transform.move(0, velocidad);
      if (key == 'a') transform.move(-velocidad, 0);
      if (key == 'd') transform.move(velocidad, 0);
    }
  }
}
