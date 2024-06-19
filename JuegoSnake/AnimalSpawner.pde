class AnimalSpawner {
  ArrayList <Animal> animales;
  private Cabeza cabeza;

  public AnimalSpawner(Cabeza cabeza) {
    animales = new ArrayList<Animal>();
    this.cabeza = cabeza;
  }

  public void generarAnimal(Animal a) {
   animales.add(a);
  }

  public void eliminar() {
    for (int i = animales.size() - 1; i >= 0; i--) {
        Animal animal = animales.get(i);
        if (cabeza.Colision(animal)) {
            animales.remove(i);
            animal.eliminar();
        }
    }

    if (animales.size() == 0) {
        for (int i = 0; i < 3; i++) {
            generarAnimal(new Insecto(new PVector(random(width), random(height)), 10, color(random(255), random(255), random(255))));
            generarAnimal(new Pajarito(new PVector(random(width), random(height)), 10, color(random(255), random(255), random(255))));
            generarAnimal(new Raton(new PVector(random(width), random(height)), 10, color(random(255), random(255), random(255))));
        }
    }
}


  public void display() {
    for (Animal animal : animales) {
      animal.display();
    }
  }
}
