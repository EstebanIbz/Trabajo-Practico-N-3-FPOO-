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
  }

  public void display() {
    for (Animal animal : animales) {
      animal.display();
    }
  }
}
