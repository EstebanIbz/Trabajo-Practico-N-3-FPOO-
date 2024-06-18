class Escenario{
  private Snake snake;
  private AnimalSpawner spawner;
  private int filas = 40;
  private int columnas = 40;
  private int quad = 20;
 
  public Escenario(){
  }
  
  public void monstrarPuntaje(){
    
  }
  
  public void display(){
   stroke(0);
    for (int i = 0; i <= filas; i++) {
      line(0, i * quad, columnas * quad, i * quad);
    }
    for (int j = 0; j <= columnas; j++) {
      line(j * quad, 0, j * quad, filas * quad);
    }
}
}
