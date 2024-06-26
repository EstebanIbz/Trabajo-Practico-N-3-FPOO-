private Snake snake;
private AnimalSpawner spawner;
private Escenario escenario;
private Insecto insecto;
private Pajarito pajarito;
private Raton raton;
private Cabeza cabeza;
private Collider collider;
private Transform transform;

void setup(){
  size(600, 600);
  escenario = new Escenario();
  insecto = new Insecto(new PVector(width/2, height/2), 10, #E3021D);
  pajarito = new Pajarito(new PVector(width/2, height-60), 10, #0C3FF0);
  raton = new Raton(new PVector(width-70, height-60), 10, #2BDB12);
  cabeza = new Cabeza(new PVector(width/2, height/2), 2);
  collider = new Collider(transform, 20);
  spawner = new AnimalSpawner(cabeza);
  spawner.generarAnimal(new Insecto(new PVector(width/2, height/2), 10, #E3021D));
  spawner.generarAnimal(new Pajarito(new PVector(width/2, height-60), 10, #0C3FF0));
  spawner.generarAnimal(new Raton(new PVector(width-70, height-60), 10, #2BDB12));
}

void draw(){
  background(80);
  escenario.display();
  cabeza.display();
  cabeza.mover();
  spawner.display();
  spawner.eliminar();
   if (cabeza.Colision(insecto)) {
    println("Colisión con insecto");
  }else{
   println("No hay colision con insecto"); 
  }
  if (cabeza.Colision(pajarito)) {
    println("Colisión con pajarito");
  } else{
   println("No hay colision con pajarito"); 
  }
  if (cabeza.Colision(raton)) {
    println("Colisión con ratón");
  }else{
   println("No hay colision con ratón"); 
  }
}
