class AnimalSpawner{
  ArrayList <Animal> animales;
 
  public AnimalSpawner(){
    animales = new ArrayList<Animal>();
  }
  
  public void generarAnimal(Animal a){
    
  }
  
   public void eliminar(){
     for (int i = animales.size() - 1; i >= 0; i--) { // Recorrer la lista al revés para eliminar sin problemas
    Animal animal = animales.get(i);
    animal.display();
    if (cabeza.Colision(animal)) {
      animales.remove(i);
      animal.eliminar(); // Llamar al método eliminar si hay lógica específica
    }
  }
 }
}
