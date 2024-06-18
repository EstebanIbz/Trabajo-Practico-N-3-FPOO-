private Snake snake;
private AnimalSpawner spawner;
private Escenario escenario;
private Insecto insecto;

void setup(){
  size(600, 600);
  escenario = new Escenario();
  insecto = new Insecto(new PVector(width/2, height/2), 10, #E3021D);
}

void draw(){
  background(80);
  escenario.display();
  insecto.display();
}

public void keyPressed(){
  
}
