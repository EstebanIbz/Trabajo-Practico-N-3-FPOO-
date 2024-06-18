private Snake snake;
private AnimalSpawner spawner;
private Escenario escenario;

void setup(){
  size(600, 600);
  escenario = new Escenario();
}

void draw(){
  background(80);
  escenario.display();
}

public void keyPressed(){
  
}
