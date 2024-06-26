class Muro{
  int resistencia ;
  Collider colision;
  Transform transform;
  ImageComponent imagen;
  
  public Muro(PVector posicion, int resistencia){
    this.resistencia = resistencia;
    this.transform = new Transform(posicion, new PVector(0.1,0.1));
    this.colision = new Collider(transform ,20);
    this.imagen = new ImageComponent(spriteMuro,transform);
  }
  
  public void display(){
   imagen.draw();
  }
  
  public void reducirResistencia(int cantidad){
    resistencia -= cantidad;
    if (resistencia <= 0){
      destruir();
    }
  }
  
  public void destruir(){
    resistencia = 0;
  }
}
