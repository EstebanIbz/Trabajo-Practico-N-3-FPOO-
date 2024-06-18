class Tanque{
  Transform transform;
  ImageComponent foto;
  float velocidad;

  public Tanque(PVector posicion){
  this.velocidad = 2;
  this.transform = new Transform(posicion,new PVector(0.5,0.5));
  this.foto = new ImageComponent(spriteTanque , transform);
}

  public void display(){
    foto.draw();
  }
}
