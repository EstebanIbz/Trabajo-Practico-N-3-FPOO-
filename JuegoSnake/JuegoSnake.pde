private Snake snake;
private AnimalSpawner spawner;
private Escenario escenario;
private Insecto insecto;
private Pajarito pajarito;
private Raton raton;
private Cabeza cabeza;

void setup(){
  size(600, 600);
  escenario = new Escenario();
  insecto = new Insecto(new PVector(width/2, height/2), 10, #E3021D);
  pajarito = new Pajarito(new PVector(width/2, height-60), 10, #0C3FF0);
  raton = new Raton(new PVector(width-70, height-60), 10, #2BDB12);
  cabeza = new Cabeza(new PVector(width/2, height/2), 2);
}

void draw(){
  background(80);
  escenario.display();
  insecto.display();
  pajarito.display();
  raton.display();
  cabeza.display();
  cabeza.mover();
  cabeza.Colision(insecto);
}
