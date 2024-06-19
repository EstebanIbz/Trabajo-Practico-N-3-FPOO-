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
  collider = new Collider(transform, 0.1);
  spawner = new AnimalSpawner();
}

void draw(){
  background(80);
  escenario.display();
  insecto.display();
  pajarito.display();
  raton.display();
  cabeza.display();
  cabeza.mover();
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
