class Bala{
  Transform transform;
  Collider colision;
  ImageComponent imagen;
  float velocidad;

  public Bala(PVector posicion){
  this.velocidad = 2;
  this.transform = new Transform(posicion,new PVector(0.5,0.5));
  this.colision = new Collider(transform ,20);
  this.imagen = new ImageComponent(spriteBala , transform);
}

  public void display(){
    imagen.draw();
  }
  
  public void update(){
    transform.move(0,-velocidad);
  }
  
  boolean isColliding(Muro muro){
  return this.colision.isColliding(muro.colision);
  }
 }
