class Muro{
  int resistencia ;
  Collider colision;
  Transform transform;
  ImageComponent imagen;
  
  public Muro(PVector posicion, int resistencia){
    this.resistencia = resistencia;
    this.transform = new Transform(posicion, new PVector(1,1));
    this.colision = new Collider(transform ,20);
    this.imagen = new ImageComponent(spriteMuro,transform);
  }
  
  public void display(){
   imagen.draw();
  }
}
